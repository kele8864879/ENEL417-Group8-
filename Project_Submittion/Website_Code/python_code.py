import serial
import MySQLdb
import time
import numpy

conn = MySQLdb.connect(host = 'us-cdbr-east-03.cleardb.com', user = 'b29dc5126ae6f1', passwd = '4c9e78bd', db = 'heroku_12a17aeebc01725', port = 3306)
cursor = conn.cursor()

# sql sentence
sql = ('INSERT INTO control_panel (client_id, temperature, light, humidity, Data_Time) VALUES (%s, %s, %s, %s, %s)')
sql_id = ('select setid from control_set ORDER BY setid DESC LIMIT 1')
sql_set = ('SELECT temperater_set, light_set, humidity_set from control_set where client_id = 1 ORDER BY setid DESC LIMIT 1')
sql_equipment = ('SELECT heater, fans, pump from equipment_state')
sql_set_insert = ('INSERT INTO control_set (client_id, temperater_set,light_set,humidity_set,Data_Set_Time) VALUES (%s, %s, %s, %s, %s)')
sql_equipment_insert = ('update equipment_state set heater = %s, fans = %s, pump = %s where client_id = %s')

print (cursor)
print (sql)
ser = serial.Serial("/dev/ttyAMA0", 115200)
temp = 0
temp_heater = 2
temp_fans = 2
temp_pump = 2
while(1):
    if (ser.readline()!=' '):
        data=ser.readline()
        data=str(data,encoding = "utf-8")
        data1=[]
        data1=data.split(',')
        
        humidity=data1[0]
        light=data1[1]
        temperature=data1[2]
        
        set_RH = data1[3]  # set from local
        set_temp = data1[4]
        #set_light = data1[5]
        
        #current_state_heater[6]
        #current_state_fans[7]
        #current_state_pump[8]
        
        print(humidity) #current data
        print(light)    #current data
        print(temperature) #current data
        print(set_RH)    #set data
        print(set_temp)  #set data
        
        dbase = ('1', temperature, light, humidity, '2021-03-08 08:13:35')
        #dbase_set = ('1', set_temp, '1', set_RH, '2021-03-08 08:13:35')
        #dbase_state = ('1', current_state_heater, current_state_fans, current_state_pump)      
    
    #current state
    try:
        cursor.execute(sql_equipment)
        results_state = cursor.fetchall()
        for row_state in results_state:
            heater_state = row_state[0]
            fans_state = row_state[1]
            pump_state = row_state[2]
        conn.commit()
    except:
        print("so sorry")
    else:
        print("success")
    
        
 # get current id 
    try:
        cursor.execute(sql_id)
        results = cursor.fetchall()
        for roww in results:
            set_id = roww[0]
        
        conn.commit()
    except:
        print("so sorry")
    else:
        print("success!!!")


    if(temp != set_id):   
        try:
            cursor.execute(sql_set)
            result = cursor.fetchall()
            for row in result:
                temperature_set_value = row[0]
                RH_set_value = row[1]
                light_set_value = row[2]
            conn.commit()
        except:
            print("so sorry")
        else:
            print("success!!!")
            
            
        
            
#transfer data that they are set value of heater, fans and RH to STM32 borard
        RH_set_value = str(int(float(RH_set_value)))
        light_set_value = str(int(float(light_set_value)))
        temperature_set_value = str(int(float(temperature_set_value)))
        
        RH_set_value=bytes(RH_set_value, encoding = "utf8")
        light_set_value=bytes(light_set_value, encoding = "utf8")
        temperature_set_value=bytes(temperature_set_value, encoding = "utf8")
        
        ser.write(RH_set_value)
        flag=','
        flag=bytes(flag, encoding = "utf8")
        
        ser.write(flag)    
        ser.write(temperature_set_value)
        
        ser.write(flag)    
        #ser.write(light_set_value)
        
        print(temperature_set_value, RH_set_value)
        temp = set_id
  
    temp_heater = heater_state
    temp_fans = fans_state
    temp_pump = pump_state
      
#    heater_state = str(heater_state)
#    heater_state = bytes(pump_state, encoding = "utf8")
    
    pump_state = str(pump_state)
    pump_state = bytes(pump_state, encoding = "utf8")
        
    fans_state = str(fans_state)
    fans_state = bytes(fans_state, encoding = "utf8")
    
    
        #temp_pump=bytes(temp_pump, encoding = "utf8")

    #ser.write(flag)    
    #ser.write(heater_state)
    
    ser.write(pump_state)
    ser.write(flag)
    ser.write(fans_state)

    print(pump_state, fans_state, heater_state)        
        


    #ser.write(RH_set_value)
    #ser.write(temperature_set_value)
    #ser.write(light_set_value)
    try:
        cursor.execute(sql, dbase)
       
        conn.commit()
    except:
        print("so sorry")
    else:
        print("success!!!??")
        
#    current_state update        
#    try:
#        cursor.execute(sql_equipment_insert, dbase_state)
#       
#        conn.commit()
#    except:
#        print("so sorry")
#    else:
#        print("success!!!??")

#    set_value
#    try:
#        cursor.execute(sql_set_insert, dbase_set)
#       
#        conn.commit()
#    except:
#        print("so sorry")
#    else:
#        print("success!!!??")
    
conn.close()
cursor.close() 