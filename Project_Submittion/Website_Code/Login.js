function Login(event){


    var elements = event.currentTarget;

    var email = elements[0].value;

    var password = elements[1].value;

    var result = true;


    var email_v = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
    var pswd_v = /^[!-~]{8,}$/;


    document.getElementById("email_msg").innerHTML ="";
    document.getElementById("pswd_msg").innerHTML ="";


    if (email==null || email=="")
    {
        document.getElementById("email_msg").innerHTML="Email is empty";
        result = false;
    }
    else if (!pswd_v.test(email))
    {
        document.getElementById("email_msg").innerHTML="Email is invalid(example: cs215@uregina.ca)";
        result = false;
    }

    if (password==null || password==""||!Uname_v.test(password))
    {
        document.getElementById("pswd_msg").innerHTML="Password is empty ";
        result = false;
    }
    else if (!pswd_v.test(password))
    {
        document.getElementById("pswd_msg").innerHTML="Password is invalid";
        result = false;
    }

    if(result == false )
    {    
        document.getElementById("Login").addEventListener("reset", Login_Reset, false);
        event.preventDefault();
    }
    if (result == true)
    {
        alert("good");
    }
}

function Login_Reset(event)
{
    document.getElementById("email_msg").innerHTML ="";
    document.getElementById("pswd_msg").innerHTML ="";
}