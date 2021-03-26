<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="STM32F103RBT6">
<packages>
<package name="QFP50P1200X1200X160-64N">
<wire x1="-4.2164" y1="5.0038" x2="-5.0038" y2="5.0038" width="0.1524" layer="21"/>
<wire x1="5.0038" y1="4.2164" x2="5.0038" y2="5.0038" width="0.1524" layer="21"/>
<wire x1="4.2164" y1="-5.0038" x2="5.0038" y2="-5.0038" width="0.1524" layer="21"/>
<wire x1="-5.0038" y1="-5.0038" x2="-4.2164" y2="-5.0038" width="0.1524" layer="21"/>
<wire x1="5.0038" y1="-5.0038" x2="5.0038" y2="-4.2164" width="0.1524" layer="21"/>
<wire x1="5.0038" y1="5.0038" x2="4.2164" y2="5.0038" width="0.1524" layer="21"/>
<wire x1="-5.0038" y1="5.0038" x2="-5.0038" y2="4.2164" width="0.1524" layer="21"/>
<wire x1="-5.0038" y1="-4.2164" x2="-5.0038" y2="-5.0038" width="0.1524" layer="21"/>
<text x="-5.6141" y="-10.4661" size="2.083059375" layer="21" ratio="10" rot="SR0">&gt;NAME</text>
<wire x1="-5.0038" y1="3.6068" x2="-5.0038" y2="3.7338" width="0" layer="51"/>
<wire x1="-5.0038" y1="3.7338" x2="-5.0038" y2="3.8862" width="0" layer="51"/>
<wire x1="-5.0038" y1="-5.0038" x2="-3.8862" y2="-5.0038" width="0" layer="51"/>
<wire x1="-3.6068" y1="-5.0038" x2="-3.3782" y2="-5.0038" width="0" layer="51"/>
<wire x1="-3.1242" y1="-5.0038" x2="-2.8956" y2="-5.0038" width="0" layer="51"/>
<wire x1="-2.6162" y1="-5.0038" x2="-2.3876" y2="-5.0038" width="0" layer="51"/>
<wire x1="-2.1082" y1="-5.0038" x2="-1.8796" y2="-5.0038" width="0" layer="51"/>
<wire x1="-1.6256" y1="-5.0038" x2="-1.397" y2="-5.0038" width="0" layer="51"/>
<wire x1="-1.1176" y1="-5.0038" x2="-0.889" y2="-5.0038" width="0" layer="51"/>
<wire x1="-0.6096" y1="-5.0038" x2="-0.381" y2="-5.0038" width="0" layer="51"/>
<wire x1="-0.127" y1="-5.0038" x2="0.127" y2="-5.0038" width="0" layer="51"/>
<wire x1="0.381" y1="-5.0038" x2="0.6096" y2="-5.0038" width="0" layer="51"/>
<wire x1="0.889" y1="-5.0038" x2="1.1176" y2="-5.0038" width="0" layer="51"/>
<wire x1="1.397" y1="-5.0038" x2="1.6256" y2="-5.0038" width="0" layer="51"/>
<wire x1="1.8796" y1="-5.0038" x2="2.1082" y2="-5.0038" width="0" layer="51"/>
<wire x1="2.3876" y1="-5.0038" x2="2.6162" y2="-5.0038" width="0" layer="51"/>
<wire x1="2.8956" y1="-5.0038" x2="3.1242" y2="-5.0038" width="0" layer="51"/>
<wire x1="3.3782" y1="-5.0038" x2="3.6068" y2="-5.0038" width="0" layer="51"/>
<wire x1="3.8862" y1="-5.0038" x2="5.0038" y2="-5.0038" width="0" layer="51"/>
<wire x1="5.0038" y1="-5.0038" x2="5.0038" y2="-3.8862" width="0" layer="51"/>
<wire x1="5.0038" y1="-3.6068" x2="5.0038" y2="-3.3782" width="0" layer="51"/>
<wire x1="5.0038" y1="-3.1242" x2="5.0038" y2="-2.8956" width="0" layer="51"/>
<wire x1="5.0038" y1="-2.6162" x2="5.0038" y2="-2.3876" width="0" layer="51"/>
<wire x1="5.0038" y1="-2.1082" x2="5.0038" y2="-1.8796" width="0" layer="51"/>
<wire x1="5.0038" y1="-1.6256" x2="5.0038" y2="-1.397" width="0" layer="51"/>
<wire x1="5.0038" y1="-1.1176" x2="5.0038" y2="-0.889" width="0" layer="51"/>
<wire x1="5.0038" y1="-0.6096" x2="5.0038" y2="-0.381" width="0" layer="51"/>
<wire x1="5.0038" y1="-0.127" x2="5.0038" y2="0.127" width="0" layer="51"/>
<wire x1="5.0038" y1="0.381" x2="5.0038" y2="0.6096" width="0" layer="51"/>
<wire x1="5.0038" y1="0.889" x2="5.0038" y2="1.1176" width="0" layer="51"/>
<wire x1="5.0038" y1="1.397" x2="5.0038" y2="1.6256" width="0" layer="51"/>
<wire x1="5.0038" y1="1.8796" x2="5.0038" y2="2.1082" width="0" layer="51"/>
<wire x1="5.0038" y1="2.3876" x2="5.0038" y2="2.6162" width="0" layer="51"/>
<wire x1="5.0038" y1="2.8956" x2="5.0038" y2="3.1242" width="0" layer="51"/>
<wire x1="5.0038" y1="3.3782" x2="5.0038" y2="3.6068" width="0" layer="51"/>
<wire x1="5.0038" y1="3.8862" x2="5.0038" y2="5.0038" width="0" layer="51"/>
<wire x1="5.0038" y1="5.0038" x2="3.8862" y2="5.0038" width="0" layer="51"/>
<wire x1="3.6068" y1="5.0038" x2="3.3782" y2="5.0038" width="0" layer="51"/>
<wire x1="3.1242" y1="5.0038" x2="2.8956" y2="5.0038" width="0" layer="51"/>
<wire x1="2.6162" y1="5.0038" x2="2.3876" y2="5.0038" width="0" layer="51"/>
<wire x1="2.1082" y1="5.0038" x2="1.8796" y2="5.0038" width="0" layer="51"/>
<wire x1="1.6256" y1="5.0038" x2="1.397" y2="5.0038" width="0" layer="51"/>
<wire x1="1.1176" y1="5.0038" x2="0.889" y2="5.0038" width="0" layer="51"/>
<wire x1="0.6096" y1="5.0038" x2="0.381" y2="5.0038" width="0" layer="51"/>
<wire x1="0.127" y1="5.0038" x2="-0.127" y2="5.0038" width="0" layer="51"/>
<wire x1="-0.381" y1="5.0038" x2="-0.6096" y2="5.0038" width="0" layer="51"/>
<wire x1="-0.889" y1="5.0038" x2="-1.1176" y2="5.0038" width="0" layer="51"/>
<wire x1="-1.397" y1="5.0038" x2="-1.6256" y2="5.0038" width="0" layer="51"/>
<wire x1="-1.8796" y1="5.0038" x2="-2.1082" y2="5.0038" width="0" layer="51"/>
<wire x1="-2.3876" y1="5.0038" x2="-2.6162" y2="5.0038" width="0" layer="51"/>
<wire x1="-2.8956" y1="5.0038" x2="-3.1242" y2="5.0038" width="0" layer="51"/>
<wire x1="-3.3782" y1="5.0038" x2="-3.6068" y2="5.0038" width="0" layer="51"/>
<wire x1="-3.8862" y1="5.0038" x2="-5.0038" y2="5.0038" width="0" layer="51"/>
<wire x1="-5.0038" y1="5.0038" x2="-5.0038" y2="3.8862" width="0" layer="51"/>
<wire x1="-5.0038" y1="3.6068" x2="-5.0038" y2="3.3782" width="0" layer="51"/>
<wire x1="-5.0038" y1="3.1242" x2="-5.0038" y2="2.8956" width="0" layer="51"/>
<wire x1="-5.0038" y1="2.6162" x2="-5.0038" y2="2.3876" width="0" layer="51"/>
<wire x1="-5.0038" y1="2.1082" x2="-5.0038" y2="1.8796" width="0" layer="51"/>
<wire x1="-5.0038" y1="1.6256" x2="-5.0038" y2="1.397" width="0" layer="51"/>
<wire x1="-5.0038" y1="1.1176" x2="-5.0038" y2="0.889" width="0" layer="51"/>
<wire x1="-5.0038" y1="0.6096" x2="-5.0038" y2="0.381" width="0" layer="51"/>
<wire x1="-5.0038" y1="0.127" x2="-5.0038" y2="-0.127" width="0" layer="51"/>
<wire x1="-5.0038" y1="-0.381" x2="-5.0038" y2="-0.6096" width="0" layer="51"/>
<wire x1="-5.0038" y1="-0.889" x2="-5.0038" y2="-1.1176" width="0" layer="51"/>
<wire x1="-5.0038" y1="-1.397" x2="-5.0038" y2="-1.6256" width="0" layer="51"/>
<wire x1="-5.0038" y1="-1.8796" x2="-5.0038" y2="-2.1082" width="0" layer="51"/>
<wire x1="-5.0038" y1="-2.3876" x2="-5.0038" y2="-2.6162" width="0" layer="51"/>
<wire x1="-5.0038" y1="-2.8956" x2="-5.0038" y2="-3.1242" width="0" layer="51"/>
<wire x1="-5.0038" y1="-3.3782" x2="-5.0038" y2="-3.6068" width="0" layer="51"/>
<wire x1="-5.0038" y1="-3.8862" x2="-5.0038" y2="-5.0038" width="0" layer="51"/>
<wire x1="3.6068" y1="5.0038" x2="3.8862" y2="5.0038" width="0" layer="51"/>
<wire x1="3.8862" y1="5.0038" x2="3.8862" y2="5.9944" width="0" layer="51"/>
<wire x1="3.8862" y1="5.9944" x2="3.6068" y2="5.9944" width="0" layer="51"/>
<wire x1="3.6068" y1="5.9944" x2="3.6068" y2="5.0038" width="0" layer="51"/>
<wire x1="3.1242" y1="5.0038" x2="3.3782" y2="5.0038" width="0" layer="51"/>
<wire x1="3.3782" y1="5.0038" x2="3.3782" y2="5.9944" width="0" layer="51"/>
<wire x1="3.3782" y1="5.9944" x2="3.1242" y2="5.9944" width="0" layer="51"/>
<wire x1="3.1242" y1="5.9944" x2="3.1242" y2="5.0038" width="0" layer="51"/>
<wire x1="2.6162" y1="5.0038" x2="2.8956" y2="5.0038" width="0" layer="51"/>
<wire x1="2.8956" y1="5.0038" x2="2.8956" y2="5.9944" width="0" layer="51"/>
<wire x1="2.8956" y1="5.9944" x2="2.6162" y2="5.9944" width="0" layer="51"/>
<wire x1="2.6162" y1="5.9944" x2="2.6162" y2="5.0038" width="0" layer="51"/>
<wire x1="2.1082" y1="5.0038" x2="2.3876" y2="5.0038" width="0" layer="51"/>
<wire x1="2.3876" y1="5.0038" x2="2.3876" y2="5.9944" width="0" layer="51"/>
<wire x1="2.3876" y1="5.9944" x2="2.1082" y2="5.9944" width="0" layer="51"/>
<wire x1="2.1082" y1="5.9944" x2="2.1082" y2="5.0038" width="0" layer="51"/>
<wire x1="1.6256" y1="5.0038" x2="1.8796" y2="5.0038" width="0" layer="51"/>
<wire x1="1.8796" y1="5.0038" x2="1.8796" y2="5.9944" width="0" layer="51"/>
<wire x1="1.8796" y1="5.9944" x2="1.6256" y2="5.9944" width="0" layer="51"/>
<wire x1="1.6256" y1="5.9944" x2="1.6256" y2="5.0038" width="0" layer="51"/>
<wire x1="1.1176" y1="5.0038" x2="1.397" y2="5.0038" width="0" layer="51"/>
<wire x1="1.397" y1="5.0038" x2="1.397" y2="5.9944" width="0" layer="51"/>
<wire x1="1.397" y1="5.9944" x2="1.1176" y2="5.9944" width="0" layer="51"/>
<wire x1="1.1176" y1="5.9944" x2="1.1176" y2="5.0038" width="0" layer="51"/>
<wire x1="0.6096" y1="5.0038" x2="0.889" y2="5.0038" width="0" layer="51"/>
<wire x1="0.889" y1="5.0038" x2="0.889" y2="5.9944" width="0" layer="51"/>
<wire x1="0.889" y1="5.9944" x2="0.6096" y2="5.9944" width="0" layer="51"/>
<wire x1="0.6096" y1="5.9944" x2="0.6096" y2="5.0038" width="0" layer="51"/>
<wire x1="0.127" y1="5.0038" x2="0.381" y2="5.0038" width="0" layer="51"/>
<wire x1="0.381" y1="5.0038" x2="0.381" y2="5.9944" width="0" layer="51"/>
<wire x1="0.381" y1="5.9944" x2="0.127" y2="5.9944" width="0" layer="51"/>
<wire x1="0.127" y1="5.9944" x2="0.127" y2="5.0038" width="0" layer="51"/>
<wire x1="-0.381" y1="5.0038" x2="-0.127" y2="5.0038" width="0" layer="51"/>
<wire x1="-0.127" y1="5.0038" x2="-0.127" y2="5.9944" width="0" layer="51"/>
<wire x1="-0.127" y1="5.9944" x2="-0.381" y2="5.9944" width="0" layer="51"/>
<wire x1="-0.381" y1="5.9944" x2="-0.381" y2="5.0038" width="0" layer="51"/>
<wire x1="-0.889" y1="5.0038" x2="-0.6096" y2="5.0038" width="0" layer="51"/>
<wire x1="-0.6096" y1="5.0038" x2="-0.6096" y2="5.9944" width="0" layer="51"/>
<wire x1="-0.6096" y1="5.9944" x2="-0.889" y2="5.9944" width="0" layer="51"/>
<wire x1="-0.889" y1="5.9944" x2="-0.889" y2="5.0038" width="0" layer="51"/>
<wire x1="-1.397" y1="5.0038" x2="-1.1176" y2="5.0038" width="0" layer="51"/>
<wire x1="-1.1176" y1="5.0038" x2="-1.1176" y2="5.9944" width="0" layer="51"/>
<wire x1="-1.1176" y1="5.9944" x2="-1.397" y2="5.9944" width="0" layer="51"/>
<wire x1="-1.397" y1="5.9944" x2="-1.397" y2="5.0038" width="0" layer="51"/>
<wire x1="-1.8796" y1="5.0038" x2="-1.6256" y2="5.0038" width="0" layer="51"/>
<wire x1="-1.6256" y1="5.0038" x2="-1.6256" y2="5.9944" width="0" layer="51"/>
<wire x1="-1.6256" y1="5.9944" x2="-1.8796" y2="5.9944" width="0" layer="51"/>
<wire x1="-1.8796" y1="5.9944" x2="-1.8796" y2="5.0038" width="0" layer="51"/>
<wire x1="-2.3876" y1="5.0038" x2="-2.1082" y2="5.0038" width="0" layer="51"/>
<wire x1="-2.1082" y1="5.0038" x2="-2.1082" y2="5.9944" width="0" layer="51"/>
<wire x1="-2.1082" y1="5.9944" x2="-2.3876" y2="5.9944" width="0" layer="51"/>
<wire x1="-2.3876" y1="5.9944" x2="-2.3876" y2="5.0038" width="0" layer="51"/>
<wire x1="-2.8956" y1="5.0038" x2="-2.6162" y2="5.0038" width="0" layer="51"/>
<wire x1="-2.6162" y1="5.0038" x2="-2.6162" y2="5.9944" width="0" layer="51"/>
<wire x1="-2.6162" y1="5.9944" x2="-2.8956" y2="5.9944" width="0" layer="51"/>
<wire x1="-2.8956" y1="5.9944" x2="-2.8956" y2="5.0038" width="0" layer="51"/>
<wire x1="-3.3782" y1="5.0038" x2="-3.1242" y2="5.0038" width="0" layer="51"/>
<wire x1="-3.1242" y1="5.0038" x2="-3.1242" y2="5.9944" width="0" layer="51"/>
<wire x1="-3.1242" y1="5.9944" x2="-3.3782" y2="5.9944" width="0" layer="51"/>
<wire x1="-3.3782" y1="5.9944" x2="-3.3782" y2="5.0038" width="0" layer="51"/>
<wire x1="-3.8862" y1="5.0038" x2="-3.7338" y2="5.0038" width="0" layer="51"/>
<wire x1="-3.7338" y1="5.0038" x2="-3.6068" y2="5.0038" width="0" layer="51"/>
<wire x1="-3.6068" y1="5.0038" x2="-3.6068" y2="5.9944" width="0" layer="51"/>
<wire x1="-3.6068" y1="5.9944" x2="-3.8862" y2="5.9944" width="0" layer="51"/>
<wire x1="-3.8862" y1="5.9944" x2="-3.8862" y2="5.0038" width="0" layer="51"/>
<wire x1="-5.0038" y1="3.8862" x2="-5.9944" y2="3.8862" width="0" layer="51"/>
<wire x1="-5.9944" y1="3.8862" x2="-5.9944" y2="3.6068" width="0" layer="51"/>
<wire x1="-5.9944" y1="3.6068" x2="-5.0038" y2="3.6068" width="0" layer="51"/>
<wire x1="-5.0038" y1="3.1242" x2="-5.0038" y2="3.3782" width="0" layer="51"/>
<wire x1="-5.0038" y1="3.3782" x2="-5.9944" y2="3.3782" width="0" layer="51"/>
<wire x1="-5.9944" y1="3.3782" x2="-5.9944" y2="3.1242" width="0" layer="51"/>
<wire x1="-5.9944" y1="3.1242" x2="-5.0038" y2="3.1242" width="0" layer="51"/>
<wire x1="-5.0038" y1="2.6162" x2="-5.0038" y2="2.8956" width="0" layer="51"/>
<wire x1="-5.0038" y1="2.8956" x2="-5.9944" y2="2.8956" width="0" layer="51"/>
<wire x1="-5.9944" y1="2.8956" x2="-5.9944" y2="2.6162" width="0" layer="51"/>
<wire x1="-5.9944" y1="2.6162" x2="-5.0038" y2="2.6162" width="0" layer="51"/>
<wire x1="-5.0038" y1="2.1082" x2="-5.0038" y2="2.3876" width="0" layer="51"/>
<wire x1="-5.0038" y1="2.3876" x2="-5.9944" y2="2.3876" width="0" layer="51"/>
<wire x1="-5.9944" y1="2.3876" x2="-5.9944" y2="2.1082" width="0" layer="51"/>
<wire x1="-5.9944" y1="2.1082" x2="-5.0038" y2="2.1082" width="0" layer="51"/>
<wire x1="-5.0038" y1="1.6256" x2="-5.0038" y2="1.8796" width="0" layer="51"/>
<wire x1="-5.0038" y1="1.8796" x2="-5.9944" y2="1.8796" width="0" layer="51"/>
<wire x1="-5.9944" y1="1.8796" x2="-5.9944" y2="1.6256" width="0" layer="51"/>
<wire x1="-5.9944" y1="1.6256" x2="-5.0038" y2="1.6256" width="0" layer="51"/>
<wire x1="-5.0038" y1="1.1176" x2="-5.0038" y2="1.397" width="0" layer="51"/>
<wire x1="-5.0038" y1="1.397" x2="-5.9944" y2="1.397" width="0" layer="51"/>
<wire x1="-5.9944" y1="1.397" x2="-5.9944" y2="1.1176" width="0" layer="51"/>
<wire x1="-5.9944" y1="1.1176" x2="-5.0038" y2="1.1176" width="0" layer="51"/>
<wire x1="-5.0038" y1="0.6096" x2="-5.0038" y2="0.889" width="0" layer="51"/>
<wire x1="-5.0038" y1="0.889" x2="-5.9944" y2="0.889" width="0" layer="51"/>
<wire x1="-5.9944" y1="0.889" x2="-5.9944" y2="0.6096" width="0" layer="51"/>
<wire x1="-5.9944" y1="0.6096" x2="-5.0038" y2="0.6096" width="0" layer="51"/>
<wire x1="-5.0038" y1="0.127" x2="-5.0038" y2="0.381" width="0" layer="51"/>
<wire x1="-5.0038" y1="0.381" x2="-5.9944" y2="0.381" width="0" layer="51"/>
<wire x1="-5.9944" y1="0.381" x2="-5.9944" y2="0.127" width="0" layer="51"/>
<wire x1="-5.9944" y1="0.127" x2="-5.0038" y2="0.127" width="0" layer="51"/>
<wire x1="-5.0038" y1="-0.381" x2="-5.0038" y2="-0.127" width="0" layer="51"/>
<wire x1="-5.0038" y1="-0.127" x2="-5.9944" y2="-0.127" width="0" layer="51"/>
<wire x1="-5.9944" y1="-0.127" x2="-5.9944" y2="-0.381" width="0" layer="51"/>
<wire x1="-5.9944" y1="-0.381" x2="-5.0038" y2="-0.381" width="0" layer="51"/>
<wire x1="-5.0038" y1="-0.889" x2="-5.0038" y2="-0.6096" width="0" layer="51"/>
<wire x1="-5.0038" y1="-0.6096" x2="-5.9944" y2="-0.6096" width="0" layer="51"/>
<wire x1="-5.9944" y1="-0.6096" x2="-5.9944" y2="-0.889" width="0" layer="51"/>
<wire x1="-5.9944" y1="-0.889" x2="-5.0038" y2="-0.889" width="0" layer="51"/>
<wire x1="-5.0038" y1="-1.397" x2="-5.0038" y2="-1.1176" width="0" layer="51"/>
<wire x1="-5.0038" y1="-1.1176" x2="-5.9944" y2="-1.1176" width="0" layer="51"/>
<wire x1="-5.9944" y1="-1.1176" x2="-5.9944" y2="-1.397" width="0" layer="51"/>
<wire x1="-5.9944" y1="-1.397" x2="-5.0038" y2="-1.397" width="0" layer="51"/>
<wire x1="-5.0038" y1="-1.8796" x2="-5.0038" y2="-1.6256" width="0" layer="51"/>
<wire x1="-5.0038" y1="-1.6256" x2="-5.9944" y2="-1.6256" width="0" layer="51"/>
<wire x1="-5.9944" y1="-1.6256" x2="-5.9944" y2="-1.8796" width="0" layer="51"/>
<wire x1="-5.9944" y1="-1.8796" x2="-5.0038" y2="-1.8796" width="0" layer="51"/>
<wire x1="-5.0038" y1="-2.3876" x2="-5.0038" y2="-2.1082" width="0" layer="51"/>
<wire x1="-5.0038" y1="-2.1082" x2="-5.9944" y2="-2.1082" width="0" layer="51"/>
<wire x1="-5.9944" y1="-2.1082" x2="-5.9944" y2="-2.3876" width="0" layer="51"/>
<wire x1="-5.9944" y1="-2.3876" x2="-5.0038" y2="-2.3876" width="0" layer="51"/>
<wire x1="-5.0038" y1="-2.8956" x2="-5.0038" y2="-2.6162" width="0" layer="51"/>
<wire x1="-5.0038" y1="-2.6162" x2="-5.9944" y2="-2.6162" width="0" layer="51"/>
<wire x1="-5.9944" y1="-2.6162" x2="-5.9944" y2="-2.8956" width="0" layer="51"/>
<wire x1="-5.9944" y1="-2.8956" x2="-5.0038" y2="-2.8956" width="0" layer="51"/>
<wire x1="-5.0038" y1="-3.3782" x2="-5.0038" y2="-3.1242" width="0" layer="51"/>
<wire x1="-5.0038" y1="-3.1242" x2="-5.9944" y2="-3.1242" width="0" layer="51"/>
<wire x1="-5.9944" y1="-3.1242" x2="-5.9944" y2="-3.3782" width="0" layer="51"/>
<wire x1="-5.9944" y1="-3.3782" x2="-5.0038" y2="-3.3782" width="0" layer="51"/>
<wire x1="-5.0038" y1="-3.8862" x2="-5.0038" y2="-3.6068" width="0" layer="51"/>
<wire x1="-5.0038" y1="-3.6068" x2="-5.9944" y2="-3.6068" width="0" layer="51"/>
<wire x1="-5.9944" y1="-3.6068" x2="-5.9944" y2="-3.8862" width="0" layer="51"/>
<wire x1="-5.9944" y1="-3.8862" x2="-5.0038" y2="-3.8862" width="0" layer="51"/>
<wire x1="-3.6068" y1="-5.0038" x2="-3.8862" y2="-5.0038" width="0" layer="51"/>
<wire x1="-3.8862" y1="-5.0038" x2="-3.8862" y2="-5.9944" width="0" layer="51"/>
<wire x1="-3.8862" y1="-5.9944" x2="-3.6068" y2="-5.9944" width="0" layer="51"/>
<wire x1="-3.6068" y1="-5.9944" x2="-3.6068" y2="-5.0038" width="0" layer="51"/>
<wire x1="-3.1242" y1="-5.0038" x2="-3.3782" y2="-5.0038" width="0" layer="51"/>
<wire x1="-3.3782" y1="-5.0038" x2="-3.3782" y2="-5.9944" width="0" layer="51"/>
<wire x1="-3.3782" y1="-5.9944" x2="-3.1242" y2="-5.9944" width="0" layer="51"/>
<wire x1="-3.1242" y1="-5.9944" x2="-3.1242" y2="-5.0038" width="0" layer="51"/>
<wire x1="-2.6162" y1="-5.0038" x2="-2.8956" y2="-5.0038" width="0" layer="51"/>
<wire x1="-2.8956" y1="-5.0038" x2="-2.8956" y2="-5.9944" width="0" layer="51"/>
<wire x1="-2.8956" y1="-5.9944" x2="-2.6162" y2="-5.9944" width="0" layer="51"/>
<wire x1="-2.6162" y1="-5.9944" x2="-2.6162" y2="-5.0038" width="0" layer="51"/>
<wire x1="-2.1082" y1="-5.0038" x2="-2.3876" y2="-5.0038" width="0" layer="51"/>
<wire x1="-2.3876" y1="-5.0038" x2="-2.3876" y2="-5.9944" width="0" layer="51"/>
<wire x1="-2.3876" y1="-5.9944" x2="-2.1082" y2="-5.9944" width="0" layer="51"/>
<wire x1="-2.1082" y1="-5.9944" x2="-2.1082" y2="-5.0038" width="0" layer="51"/>
<wire x1="-1.6256" y1="-5.0038" x2="-1.8796" y2="-5.0038" width="0" layer="51"/>
<wire x1="-1.8796" y1="-5.0038" x2="-1.8796" y2="-5.9944" width="0" layer="51"/>
<wire x1="-1.8796" y1="-5.9944" x2="-1.6256" y2="-5.9944" width="0" layer="51"/>
<wire x1="-1.6256" y1="-5.9944" x2="-1.6256" y2="-5.0038" width="0" layer="51"/>
<wire x1="-1.1176" y1="-5.0038" x2="-1.397" y2="-5.0038" width="0" layer="51"/>
<wire x1="-1.397" y1="-5.0038" x2="-1.397" y2="-5.9944" width="0" layer="51"/>
<wire x1="-1.397" y1="-5.9944" x2="-1.1176" y2="-5.9944" width="0" layer="51"/>
<wire x1="-1.1176" y1="-5.9944" x2="-1.1176" y2="-5.0038" width="0" layer="51"/>
<wire x1="-0.6096" y1="-5.0038" x2="-0.889" y2="-5.0038" width="0" layer="51"/>
<wire x1="-0.889" y1="-5.0038" x2="-0.889" y2="-5.9944" width="0" layer="51"/>
<wire x1="-0.889" y1="-5.9944" x2="-0.6096" y2="-5.9944" width="0" layer="51"/>
<wire x1="-0.6096" y1="-5.9944" x2="-0.6096" y2="-5.0038" width="0" layer="51"/>
<wire x1="-0.127" y1="-5.0038" x2="-0.381" y2="-5.0038" width="0" layer="51"/>
<wire x1="-0.381" y1="-5.0038" x2="-0.381" y2="-5.9944" width="0" layer="51"/>
<wire x1="-0.381" y1="-5.9944" x2="-0.127" y2="-5.9944" width="0" layer="51"/>
<wire x1="-0.127" y1="-5.9944" x2="-0.127" y2="-5.0038" width="0" layer="51"/>
<wire x1="0.381" y1="-5.0038" x2="0.127" y2="-5.0038" width="0" layer="51"/>
<wire x1="0.127" y1="-5.0038" x2="0.127" y2="-5.9944" width="0" layer="51"/>
<wire x1="0.127" y1="-5.9944" x2="0.381" y2="-5.9944" width="0" layer="51"/>
<wire x1="0.381" y1="-5.9944" x2="0.381" y2="-5.0038" width="0" layer="51"/>
<wire x1="0.889" y1="-5.0038" x2="0.6096" y2="-5.0038" width="0" layer="51"/>
<wire x1="0.6096" y1="-5.0038" x2="0.6096" y2="-5.9944" width="0" layer="51"/>
<wire x1="0.6096" y1="-5.9944" x2="0.889" y2="-5.9944" width="0" layer="51"/>
<wire x1="0.889" y1="-5.9944" x2="0.889" y2="-5.0038" width="0" layer="51"/>
<wire x1="1.397" y1="-5.0038" x2="1.1176" y2="-5.0038" width="0" layer="51"/>
<wire x1="1.1176" y1="-5.0038" x2="1.1176" y2="-5.9944" width="0" layer="51"/>
<wire x1="1.1176" y1="-5.9944" x2="1.397" y2="-5.9944" width="0" layer="51"/>
<wire x1="1.397" y1="-5.9944" x2="1.397" y2="-5.0038" width="0" layer="51"/>
<wire x1="1.8796" y1="-5.0038" x2="1.6256" y2="-5.0038" width="0" layer="51"/>
<wire x1="1.6256" y1="-5.0038" x2="1.6256" y2="-5.9944" width="0" layer="51"/>
<wire x1="1.6256" y1="-5.9944" x2="1.8796" y2="-5.9944" width="0" layer="51"/>
<wire x1="1.8796" y1="-5.9944" x2="1.8796" y2="-5.0038" width="0" layer="51"/>
<wire x1="2.3876" y1="-5.0038" x2="2.1082" y2="-5.0038" width="0" layer="51"/>
<wire x1="2.1082" y1="-5.0038" x2="2.1082" y2="-5.9944" width="0" layer="51"/>
<wire x1="2.1082" y1="-5.9944" x2="2.3876" y2="-5.9944" width="0" layer="51"/>
<wire x1="2.3876" y1="-5.9944" x2="2.3876" y2="-5.0038" width="0" layer="51"/>
<wire x1="2.8956" y1="-5.0038" x2="2.6162" y2="-5.0038" width="0" layer="51"/>
<wire x1="2.6162" y1="-5.0038" x2="2.6162" y2="-5.9944" width="0" layer="51"/>
<wire x1="2.6162" y1="-5.9944" x2="2.8956" y2="-5.9944" width="0" layer="51"/>
<wire x1="2.8956" y1="-5.9944" x2="2.8956" y2="-5.0038" width="0" layer="51"/>
<wire x1="3.3782" y1="-5.0038" x2="3.1242" y2="-5.0038" width="0" layer="51"/>
<wire x1="3.1242" y1="-5.0038" x2="3.1242" y2="-5.9944" width="0" layer="51"/>
<wire x1="3.1242" y1="-5.9944" x2="3.3782" y2="-5.9944" width="0" layer="51"/>
<wire x1="3.3782" y1="-5.9944" x2="3.3782" y2="-5.0038" width="0" layer="51"/>
<wire x1="3.8862" y1="-5.0038" x2="3.6068" y2="-5.0038" width="0" layer="51"/>
<wire x1="3.6068" y1="-5.0038" x2="3.6068" y2="-5.9944" width="0" layer="51"/>
<wire x1="3.6068" y1="-5.9944" x2="3.8862" y2="-5.9944" width="0" layer="51"/>
<wire x1="3.8862" y1="-5.9944" x2="3.8862" y2="-5.0038" width="0" layer="51"/>
<wire x1="5.0038" y1="-3.6068" x2="5.0038" y2="-3.8862" width="0" layer="51"/>
<wire x1="5.0038" y1="-3.8862" x2="5.9944" y2="-3.8862" width="0" layer="51"/>
<wire x1="5.9944" y1="-3.8862" x2="5.9944" y2="-3.6068" width="0" layer="51"/>
<wire x1="5.9944" y1="-3.6068" x2="5.0038" y2="-3.6068" width="0" layer="51"/>
<wire x1="5.0038" y1="-3.1242" x2="5.0038" y2="-3.3782" width="0" layer="51"/>
<wire x1="5.0038" y1="-3.3782" x2="5.9944" y2="-3.3782" width="0" layer="51"/>
<wire x1="5.9944" y1="-3.3782" x2="5.9944" y2="-3.1242" width="0" layer="51"/>
<wire x1="5.9944" y1="-3.1242" x2="5.0038" y2="-3.1242" width="0" layer="51"/>
<wire x1="5.0038" y1="-2.6162" x2="5.0038" y2="-2.8956" width="0" layer="51"/>
<wire x1="5.0038" y1="-2.8956" x2="5.9944" y2="-2.8956" width="0" layer="51"/>
<wire x1="5.9944" y1="-2.8956" x2="5.9944" y2="-2.6162" width="0" layer="51"/>
<wire x1="5.9944" y1="-2.6162" x2="5.0038" y2="-2.6162" width="0" layer="51"/>
<wire x1="5.0038" y1="-2.1082" x2="5.0038" y2="-2.3876" width="0" layer="51"/>
<wire x1="5.0038" y1="-2.3876" x2="5.9944" y2="-2.3876" width="0" layer="51"/>
<wire x1="5.9944" y1="-2.3876" x2="5.9944" y2="-2.1082" width="0" layer="51"/>
<wire x1="5.9944" y1="-2.1082" x2="5.0038" y2="-2.1082" width="0" layer="51"/>
<wire x1="5.0038" y1="-1.6256" x2="5.0038" y2="-1.8796" width="0" layer="51"/>
<wire x1="5.0038" y1="-1.8796" x2="5.9944" y2="-1.8796" width="0" layer="51"/>
<wire x1="5.9944" y1="-1.8796" x2="5.9944" y2="-1.6256" width="0" layer="51"/>
<wire x1="5.9944" y1="-1.6256" x2="5.0038" y2="-1.6256" width="0" layer="51"/>
<wire x1="5.0038" y1="-1.1176" x2="5.0038" y2="-1.397" width="0" layer="51"/>
<wire x1="5.0038" y1="-1.397" x2="5.9944" y2="-1.397" width="0" layer="51"/>
<wire x1="5.9944" y1="-1.397" x2="5.9944" y2="-1.1176" width="0" layer="51"/>
<wire x1="5.9944" y1="-1.1176" x2="5.0038" y2="-1.1176" width="0" layer="51"/>
<wire x1="5.0038" y1="-0.6096" x2="5.0038" y2="-0.889" width="0" layer="51"/>
<wire x1="5.0038" y1="-0.889" x2="5.9944" y2="-0.889" width="0" layer="51"/>
<wire x1="5.9944" y1="-0.889" x2="5.9944" y2="-0.6096" width="0" layer="51"/>
<wire x1="5.9944" y1="-0.6096" x2="5.0038" y2="-0.6096" width="0" layer="51"/>
<wire x1="5.0038" y1="-0.127" x2="5.0038" y2="-0.381" width="0" layer="51"/>
<wire x1="5.0038" y1="-0.381" x2="5.9944" y2="-0.381" width="0" layer="51"/>
<wire x1="5.9944" y1="-0.381" x2="5.9944" y2="-0.127" width="0" layer="51"/>
<wire x1="5.9944" y1="-0.127" x2="5.0038" y2="-0.127" width="0" layer="51"/>
<wire x1="5.0038" y1="0.381" x2="5.0038" y2="0.127" width="0" layer="51"/>
<wire x1="5.0038" y1="0.127" x2="5.9944" y2="0.127" width="0" layer="51"/>
<wire x1="5.9944" y1="0.127" x2="5.9944" y2="0.381" width="0" layer="51"/>
<wire x1="5.9944" y1="0.381" x2="5.0038" y2="0.381" width="0" layer="51"/>
<wire x1="5.0038" y1="0.889" x2="5.0038" y2="0.6096" width="0" layer="51"/>
<wire x1="5.0038" y1="0.6096" x2="5.9944" y2="0.6096" width="0" layer="51"/>
<wire x1="5.9944" y1="0.6096" x2="5.9944" y2="0.889" width="0" layer="51"/>
<wire x1="5.9944" y1="0.889" x2="5.0038" y2="0.889" width="0" layer="51"/>
<wire x1="5.0038" y1="1.397" x2="5.0038" y2="1.1176" width="0" layer="51"/>
<wire x1="5.0038" y1="1.1176" x2="5.9944" y2="1.1176" width="0" layer="51"/>
<wire x1="5.9944" y1="1.1176" x2="5.9944" y2="1.397" width="0" layer="51"/>
<wire x1="5.9944" y1="1.397" x2="5.0038" y2="1.397" width="0" layer="51"/>
<wire x1="5.0038" y1="1.8796" x2="5.0038" y2="1.6256" width="0" layer="51"/>
<wire x1="5.0038" y1="1.6256" x2="5.9944" y2="1.6256" width="0" layer="51"/>
<wire x1="5.9944" y1="1.6256" x2="5.9944" y2="1.8796" width="0" layer="51"/>
<wire x1="5.9944" y1="1.8796" x2="5.0038" y2="1.8796" width="0" layer="51"/>
<wire x1="5.0038" y1="2.3876" x2="5.0038" y2="2.1082" width="0" layer="51"/>
<wire x1="5.0038" y1="2.1082" x2="5.9944" y2="2.1082" width="0" layer="51"/>
<wire x1="5.9944" y1="2.1082" x2="5.9944" y2="2.3876" width="0" layer="51"/>
<wire x1="5.9944" y1="2.3876" x2="5.0038" y2="2.3876" width="0" layer="51"/>
<wire x1="5.0038" y1="2.8956" x2="5.0038" y2="2.6162" width="0" layer="51"/>
<wire x1="5.0038" y1="2.6162" x2="5.9944" y2="2.6162" width="0" layer="51"/>
<wire x1="5.9944" y1="2.6162" x2="5.9944" y2="2.8956" width="0" layer="51"/>
<wire x1="5.9944" y1="2.8956" x2="5.0038" y2="2.8956" width="0" layer="51"/>
<wire x1="5.0038" y1="3.3782" x2="5.0038" y2="3.1242" width="0" layer="51"/>
<wire x1="5.0038" y1="3.1242" x2="5.9944" y2="3.1242" width="0" layer="51"/>
<wire x1="5.9944" y1="3.1242" x2="5.9944" y2="3.3782" width="0" layer="51"/>
<wire x1="5.9944" y1="3.3782" x2="5.0038" y2="3.3782" width="0" layer="51"/>
<wire x1="5.0038" y1="3.8862" x2="5.0038" y2="3.6068" width="0" layer="51"/>
<wire x1="5.0038" y1="3.6068" x2="5.9944" y2="3.6068" width="0" layer="51"/>
<wire x1="5.9944" y1="3.6068" x2="5.9944" y2="3.8862" width="0" layer="51"/>
<wire x1="5.9944" y1="3.8862" x2="5.0038" y2="3.8862" width="0" layer="51"/>
<wire x1="-5.0038" y1="3.7338" x2="-3.7338" y2="5.0038" width="0" layer="51"/>
<wire x1="-3.1242" y1="-5.0038" x2="3.1242" y2="-5.0038" width="0" layer="51"/>
<wire x1="5.0038" y1="-3.3782" x2="5.0038" y2="3.3782" width="0" layer="51"/>
<wire x1="3.6068" y1="5.0038" x2="-3.7338" y2="5.0038" width="0" layer="51"/>
<wire x1="-5.0038" y1="3.8862" x2="-5.0038" y2="-3.8862" width="0" layer="51"/>
<text x="-3.46006875" y="-11.4487" size="2.08621875" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
<text x="-3.45668125" y="8.895859375" size="2.08416875" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<smd name="1" x="-5.6134" y="3.7592" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="2" x="-5.6134" y="3.2512" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="3" x="-5.6134" y="2.7432" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="4" x="-5.6134" y="2.2606" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="5" x="-5.6134" y="1.7526" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="6" x="-5.6134" y="1.2446" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="7" x="-5.6134" y="0.762" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="8" x="-5.6134" y="0.254" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="9" x="-5.6134" y="-0.254" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="10" x="-5.6134" y="-0.762" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="11" x="-5.6134" y="-1.2446" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="12" x="-5.6134" y="-1.7526" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="13" x="-5.6134" y="-2.2606" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="14" x="-5.6134" y="-2.7432" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="15" x="-5.6134" y="-3.2512" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="16" x="-5.6134" y="-3.7592" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="17" x="-3.7592" y="-5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="18" x="-3.2512" y="-5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="19" x="-2.7432" y="-5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="20" x="-2.2606" y="-5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="21" x="-1.7526" y="-5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="22" x="-1.2446" y="-5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="23" x="-0.762" y="-5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="24" x="-0.254" y="-5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="25" x="0.254" y="-5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="26" x="0.762" y="-5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="27" x="1.2446" y="-5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="28" x="1.7526" y="-5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="29" x="2.2606" y="-5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="30" x="2.7432" y="-5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="31" x="3.2512" y="-5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="32" x="3.7592" y="-5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="33" x="5.6134" y="-3.7592" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="34" x="5.6134" y="-3.2512" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="35" x="5.6134" y="-2.7432" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="36" x="5.6134" y="-2.2606" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="37" x="5.6134" y="-1.7526" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="38" x="5.6134" y="-1.2446" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="39" x="5.6134" y="-0.762" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="40" x="5.6134" y="-0.254" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="41" x="5.6134" y="0.254" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="42" x="5.6134" y="0.762" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="43" x="5.6134" y="1.2446" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="44" x="5.6134" y="1.7526" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="45" x="5.6134" y="2.2606" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="46" x="5.6134" y="2.7432" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="47" x="5.6134" y="3.2512" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="48" x="5.6134" y="3.7592" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="49" x="3.7592" y="5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="50" x="3.2512" y="5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="51" x="2.7432" y="5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="52" x="2.2606" y="5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="53" x="1.7526" y="5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="54" x="1.2446" y="5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="55" x="0.762" y="5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="56" x="0.254" y="5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="57" x="-0.254" y="5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="58" x="-0.762" y="5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="59" x="-1.2446" y="5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="60" x="-1.7526" y="5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="61" x="-2.2606" y="5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="62" x="-2.7432" y="5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="63" x="-3.2512" y="5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="64" x="-3.7592" y="5.6134" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="STM32F103RBT6">
<wire x1="-25.4" y1="63.5" x2="-25.4" y2="-68.58" width="0.4064" layer="94"/>
<wire x1="-25.4" y1="-68.58" x2="25.4" y2="-68.58" width="0.4064" layer="94"/>
<wire x1="25.4" y1="-68.58" x2="25.4" y2="63.5" width="0.4064" layer="94"/>
<wire x1="25.4" y1="63.5" x2="-25.4" y2="63.5" width="0.4064" layer="94"/>
<text x="-5.369490625" y="67.6658" size="2.08671875" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.950909375" y="-75.48" size="2.085359375" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<pin name="VDDA" x="-30.48" y="55.88" length="middle" direction="pwr"/>
<pin name="VDD_1" x="-30.48" y="53.34" length="middle" direction="pwr"/>
<pin name="VDD_2" x="-30.48" y="50.8" length="middle" direction="pwr"/>
<pin name="VDD_3" x="-30.48" y="48.26" length="middle" direction="pwr"/>
<pin name="VDD_4" x="-30.48" y="45.72" length="middle" direction="pwr"/>
<pin name="VBAT" x="-30.48" y="40.64" length="middle" direction="in"/>
<pin name="BOOT0" x="-30.48" y="38.1" length="middle" direction="in"/>
<pin name="PA0-WKUP" x="-30.48" y="33.02" length="middle"/>
<pin name="PA1" x="-30.48" y="30.48" length="middle"/>
<pin name="PA2" x="-30.48" y="27.94" length="middle"/>
<pin name="PA3" x="-30.48" y="25.4" length="middle"/>
<pin name="PA4" x="-30.48" y="22.86" length="middle"/>
<pin name="PA5" x="-30.48" y="20.32" length="middle"/>
<pin name="PA6" x="-30.48" y="17.78" length="middle"/>
<pin name="PA7" x="-30.48" y="15.24" length="middle"/>
<pin name="PA8" x="-30.48" y="12.7" length="middle"/>
<pin name="PA9" x="-30.48" y="10.16" length="middle"/>
<pin name="PA10" x="-30.48" y="7.62" length="middle"/>
<pin name="PA11" x="-30.48" y="5.08" length="middle"/>
<pin name="PA12" x="-30.48" y="2.54" length="middle"/>
<pin name="PA13" x="-30.48" y="0" length="middle"/>
<pin name="PA14" x="-30.48" y="-2.54" length="middle"/>
<pin name="PA15" x="-30.48" y="-5.08" length="middle"/>
<pin name="PB0" x="-30.48" y="-10.16" length="middle"/>
<pin name="PB1" x="-30.48" y="-12.7" length="middle"/>
<pin name="PB2" x="-30.48" y="-15.24" length="middle"/>
<pin name="PB3" x="-30.48" y="-17.78" length="middle"/>
<pin name="PB4" x="-30.48" y="-20.32" length="middle"/>
<pin name="PB5" x="-30.48" y="-22.86" length="middle"/>
<pin name="PB6" x="-30.48" y="-25.4" length="middle"/>
<pin name="PB7" x="-30.48" y="-27.94" length="middle"/>
<pin name="PB8" x="-30.48" y="-30.48" length="middle"/>
<pin name="PB9" x="-30.48" y="-33.02" length="middle"/>
<pin name="PB10" x="-30.48" y="-35.56" length="middle"/>
<pin name="PB11" x="-30.48" y="-38.1" length="middle"/>
<pin name="PB12" x="-30.48" y="-40.64" length="middle"/>
<pin name="PB13" x="-30.48" y="-43.18" length="middle"/>
<pin name="PB14" x="-30.48" y="-45.72" length="middle"/>
<pin name="PB15" x="-30.48" y="-48.26" length="middle"/>
<pin name="VSSA" x="-30.48" y="-53.34" length="middle" direction="pas"/>
<pin name="VSS_1" x="-30.48" y="-55.88" length="middle" direction="pas"/>
<pin name="VSS_2" x="-30.48" y="-58.42" length="middle" direction="pas"/>
<pin name="VSS_3" x="-30.48" y="-60.96" length="middle" direction="pas"/>
<pin name="VSS_4" x="-30.48" y="-63.5" length="middle" direction="pas"/>
<pin name="PC0" x="30.48" y="58.42" length="middle" rot="R180"/>
<pin name="PC1" x="30.48" y="55.88" length="middle" rot="R180"/>
<pin name="PC2" x="30.48" y="53.34" length="middle" rot="R180"/>
<pin name="PC3" x="30.48" y="50.8" length="middle" rot="R180"/>
<pin name="PC4" x="30.48" y="48.26" length="middle" rot="R180"/>
<pin name="PC5" x="30.48" y="45.72" length="middle" rot="R180"/>
<pin name="PC6" x="30.48" y="43.18" length="middle" rot="R180"/>
<pin name="PC7" x="30.48" y="40.64" length="middle" rot="R180"/>
<pin name="PC8" x="30.48" y="38.1" length="middle" rot="R180"/>
<pin name="PC9" x="30.48" y="35.56" length="middle" rot="R180"/>
<pin name="PC10" x="30.48" y="33.02" length="middle" rot="R180"/>
<pin name="PC11" x="30.48" y="30.48" length="middle" rot="R180"/>
<pin name="PC12" x="30.48" y="27.94" length="middle" rot="R180"/>
<pin name="PC13-TAMPER-RTC" x="30.48" y="25.4" length="middle" rot="R180"/>
<pin name="PC14-OSC32_IN" x="30.48" y="22.86" length="middle" rot="R180"/>
<pin name="PC15-OSC32_OUT" x="30.48" y="20.32" length="middle" rot="R180"/>
<pin name="PD0_OSC_IN" x="30.48" y="15.24" length="middle" rot="R180"/>
<pin name="PD1_OSC_OUT" x="30.48" y="12.7" length="middle" rot="R180"/>
<pin name="PD2" x="30.48" y="10.16" length="middle" rot="R180"/>
<pin name="NRST" x="30.48" y="5.08" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="STM32F103RBT6" prefix="U">
<description>32BIT MCU &lt;a href="https://pricing.snapeda.com/parts/STM32F103RBT6/STMicroelectronics/view-part?ref=eda"&gt;Check prices&lt;/a&gt;</description>
<gates>
<gate name="A" symbol="STM32F103RBT6" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFP50P1200X1200X160-64N">
<connects>
<connect gate="A" pin="BOOT0" pad="60"/>
<connect gate="A" pin="NRST" pad="7"/>
<connect gate="A" pin="PA0-WKUP" pad="14"/>
<connect gate="A" pin="PA1" pad="15"/>
<connect gate="A" pin="PA10" pad="43"/>
<connect gate="A" pin="PA11" pad="44"/>
<connect gate="A" pin="PA12" pad="45"/>
<connect gate="A" pin="PA13" pad="46"/>
<connect gate="A" pin="PA14" pad="49"/>
<connect gate="A" pin="PA15" pad="50"/>
<connect gate="A" pin="PA2" pad="16"/>
<connect gate="A" pin="PA3" pad="17"/>
<connect gate="A" pin="PA4" pad="20"/>
<connect gate="A" pin="PA5" pad="21"/>
<connect gate="A" pin="PA6" pad="22"/>
<connect gate="A" pin="PA7" pad="23"/>
<connect gate="A" pin="PA8" pad="41"/>
<connect gate="A" pin="PA9" pad="42"/>
<connect gate="A" pin="PB0" pad="26"/>
<connect gate="A" pin="PB1" pad="27"/>
<connect gate="A" pin="PB10" pad="29"/>
<connect gate="A" pin="PB11" pad="30"/>
<connect gate="A" pin="PB12" pad="33"/>
<connect gate="A" pin="PB13" pad="34"/>
<connect gate="A" pin="PB14" pad="35"/>
<connect gate="A" pin="PB15" pad="36"/>
<connect gate="A" pin="PB2" pad="28"/>
<connect gate="A" pin="PB3" pad="55"/>
<connect gate="A" pin="PB4" pad="56"/>
<connect gate="A" pin="PB5" pad="57"/>
<connect gate="A" pin="PB6" pad="58"/>
<connect gate="A" pin="PB7" pad="59"/>
<connect gate="A" pin="PB8" pad="61"/>
<connect gate="A" pin="PB9" pad="62"/>
<connect gate="A" pin="PC0" pad="8"/>
<connect gate="A" pin="PC1" pad="9"/>
<connect gate="A" pin="PC10" pad="51"/>
<connect gate="A" pin="PC11" pad="52"/>
<connect gate="A" pin="PC12" pad="53"/>
<connect gate="A" pin="PC13-TAMPER-RTC" pad="2"/>
<connect gate="A" pin="PC14-OSC32_IN" pad="3"/>
<connect gate="A" pin="PC15-OSC32_OUT" pad="4"/>
<connect gate="A" pin="PC2" pad="10"/>
<connect gate="A" pin="PC3" pad="11"/>
<connect gate="A" pin="PC4" pad="24"/>
<connect gate="A" pin="PC5" pad="25"/>
<connect gate="A" pin="PC6" pad="37"/>
<connect gate="A" pin="PC7" pad="38"/>
<connect gate="A" pin="PC8" pad="39"/>
<connect gate="A" pin="PC9" pad="40"/>
<connect gate="A" pin="PD0_OSC_IN" pad="5"/>
<connect gate="A" pin="PD1_OSC_OUT" pad="6"/>
<connect gate="A" pin="PD2" pad="54"/>
<connect gate="A" pin="VBAT" pad="1"/>
<connect gate="A" pin="VDDA" pad="13"/>
<connect gate="A" pin="VDD_1" pad="32"/>
<connect gate="A" pin="VDD_2" pad="48"/>
<connect gate="A" pin="VDD_3" pad="64"/>
<connect gate="A" pin="VDD_4" pad="19"/>
<connect gate="A" pin="VSSA" pad="12"/>
<connect gate="A" pin="VSS_1" pad="31"/>
<connect gate="A" pin="VSS_2" pad="47"/>
<connect gate="A" pin="VSS_3" pad="63"/>
<connect gate="A" pin="VSS_4" pad="18"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Warning"/>
<attribute name="DESCRIPTION" value=" ARM® Cortex®-M3 STM32F1 Microcontroller IC 32-Bit 72MHz 128KB (128K x 8) FLASH 64-LQFP (10x10) "/>
<attribute name="MF" value="STMicroelectronics"/>
<attribute name="MP" value="STM32F103RBT6"/>
<attribute name="PACKAGE" value="LQFP-64 STMicroelectronics"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/STM32F103RBT6/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="HC-SR04">
<packages>
<package name="XCVR_HC-SR04">
<wire x1="-21.5" y1="-19.27" x2="-5.5" y2="-19.27" width="0.127" layer="21"/>
<wire x1="5.5" y1="-19.27" x2="21.5" y2="-19.27" width="0.127" layer="21"/>
<wire x1="22.5" y1="-5.47" x2="21.5" y2="-5.47" width="0.127" layer="21"/>
<wire x1="21.5" y1="-5.47" x2="5.5" y2="-5.47" width="0.127" layer="21"/>
<wire x1="5.5" y1="-5.47" x2="-5.5" y2="-5.47" width="0.127" layer="21"/>
<wire x1="-5.5" y1="-5.47" x2="-21.5" y2="-5.47" width="0.127" layer="21"/>
<wire x1="-21.5" y1="-5.47" x2="-22.5" y2="-5.47" width="0.127" layer="21"/>
<wire x1="-22.5" y1="-5.47" x2="-22.5" y2="-4.27" width="0.127" layer="21"/>
<wire x1="-22.5" y1="-4.27" x2="22.5" y2="-4.27" width="0.127" layer="21"/>
<wire x1="22.5" y1="-4.27" x2="22.5" y2="-5.47" width="0.127" layer="21"/>
<wire x1="-21.5" y1="-5.47" x2="-21.5" y2="-19.27" width="0.127" layer="21"/>
<wire x1="21.5" y1="-5.47" x2="21.5" y2="-19.27" width="0.127" layer="21"/>
<wire x1="-5.5" y1="-5.47" x2="-5.5" y2="-19.27" width="0.127" layer="21"/>
<wire x1="5.5" y1="-5.47" x2="5.5" y2="-19.27" width="0.127" layer="21"/>
<wire x1="-22.75" y1="-4" x2="-22.75" y2="-19.5" width="0.05" layer="39"/>
<wire x1="-22.75" y1="-19.5" x2="22.75" y2="-19.5" width="0.05" layer="39"/>
<wire x1="22.75" y1="-19.5" x2="22.75" y2="-4" width="0.05" layer="39"/>
<wire x1="22.75" y1="-4" x2="5" y2="-4" width="0.05" layer="39"/>
<wire x1="5" y1="-4" x2="5" y2="1.25" width="0.05" layer="39"/>
<wire x1="5" y1="1.25" x2="-5" y2="1.25" width="0.05" layer="39"/>
<wire x1="-5" y1="1.25" x2="-5" y2="-4" width="0.05" layer="39"/>
<wire x1="-5" y1="-4" x2="-22.75" y2="-4" width="0.05" layer="39"/>
<text x="-22.6617" y="-3.952040625" size="1.270659375" layer="25">&gt;NAME</text>
<text x="16.1773" y="-4.00676875" size="1.27215" layer="27">&gt;VALUE</text>
<pad name="2" x="-1.27" y="0" drill="1.02"/>
<pad name="3" x="1.27" y="0" drill="1.02"/>
<pad name="4" x="3.81" y="0" drill="1.02"/>
<pad name="1" x="-3.81" y="0" drill="1.02"/>
</package>
</packages>
<symbols>
<symbol name="HC-SR04">
<wire x1="0" y1="5.08" x2="0" y2="-7.62" width="0.254" layer="94"/>
<wire x1="0" y1="-7.62" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="5.08" x2="0" y2="5.08" width="0.254" layer="94"/>
<text x="0" y="5.0813" size="1.778459375" layer="95">&gt;NAME</text>
<text x="0" y="-10.163" size="1.77851875" layer="96">&gt;VALUE</text>
<pin name="VCC" x="-5.08" y="2.54" length="middle" direction="pwr"/>
<pin name="GND" x="-5.08" y="-5.08" length="middle" direction="pwr"/>
<pin name="TRIG" x="-5.08" y="0" length="middle"/>
<pin name="ECHO" x="-5.08" y="-2.54" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="HC-SR04" prefix="U">
<description>Ultrasonic Sensor Module &lt;a href="https://pricing.snapeda.com/parts/HC-SR04/OSEPP%20Electronics%20LTD/view-part?ref=eda"&gt;Check prices&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="HC-SR04" x="0" y="0"/>
</gates>
<devices>
<device name="" package="XCVR_HC-SR04">
<connects>
<connect gate="G$1" pin="ECHO" pad="3"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="TRIG" pad="2"/>
<connect gate="G$1" pin="VCC" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Warning"/>
<attribute name="DESCRIPTION" value=" HC-SR04 Ultrasonic Sensor Platform Evaluation Expansion Board "/>
<attribute name="MF" value="OSEPP Electronics LTD"/>
<attribute name="MP" value="HC-SR04"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/HC-SR04/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="PCF8574T">
<packages>
<package name="SOIC127P1032X265-16N">
<wire x1="-3.81" y1="4.191" x2="-3.81" y2="4.699" width="0" layer="51"/>
<wire x1="-3.81" y1="4.699" x2="-5.334" y2="4.699" width="0" layer="51"/>
<wire x1="-5.334" y1="4.699" x2="-5.334" y2="4.191" width="0" layer="51"/>
<wire x1="-5.334" y1="4.191" x2="-3.81" y2="4.191" width="0" layer="51"/>
<wire x1="-3.81" y1="2.921" x2="-3.81" y2="3.429" width="0" layer="51"/>
<wire x1="-3.81" y1="3.429" x2="-5.334" y2="3.429" width="0" layer="51"/>
<wire x1="-5.334" y1="3.429" x2="-5.334" y2="2.921" width="0" layer="51"/>
<wire x1="-5.334" y1="2.921" x2="-3.81" y2="2.921" width="0" layer="51"/>
<wire x1="-3.81" y1="1.651" x2="-3.81" y2="2.159" width="0" layer="51"/>
<wire x1="-3.81" y1="2.159" x2="-5.334" y2="2.159" width="0" layer="51"/>
<wire x1="-5.334" y1="2.159" x2="-5.334" y2="1.651" width="0" layer="51"/>
<wire x1="-5.334" y1="1.651" x2="-3.81" y2="1.651" width="0" layer="51"/>
<wire x1="-3.81" y1="0.381" x2="-3.81" y2="0.889" width="0" layer="51"/>
<wire x1="-3.81" y1="0.889" x2="-5.334" y2="0.889" width="0" layer="51"/>
<wire x1="-5.334" y1="0.889" x2="-5.334" y2="0.381" width="0" layer="51"/>
<wire x1="-5.334" y1="0.381" x2="-3.81" y2="0.381" width="0" layer="51"/>
<wire x1="-3.81" y1="-0.889" x2="-3.81" y2="-0.381" width="0" layer="51"/>
<wire x1="-3.81" y1="-0.381" x2="-5.334" y2="-0.381" width="0" layer="51"/>
<wire x1="-5.334" y1="-0.381" x2="-5.334" y2="-0.889" width="0" layer="51"/>
<wire x1="-5.334" y1="-0.889" x2="-3.81" y2="-0.889" width="0" layer="51"/>
<wire x1="-3.81" y1="-2.159" x2="-3.81" y2="-1.651" width="0" layer="51"/>
<wire x1="-3.81" y1="-1.651" x2="-5.334" y2="-1.651" width="0" layer="51"/>
<wire x1="-5.334" y1="-1.651" x2="-5.334" y2="-2.159" width="0" layer="51"/>
<wire x1="-5.334" y1="-2.159" x2="-3.81" y2="-2.159" width="0" layer="51"/>
<wire x1="-3.81" y1="-3.429" x2="-3.81" y2="-2.921" width="0" layer="51"/>
<wire x1="-3.81" y1="-2.921" x2="-5.334" y2="-2.921" width="0" layer="51"/>
<wire x1="-5.334" y1="-2.921" x2="-5.334" y2="-3.429" width="0" layer="51"/>
<wire x1="-5.334" y1="-3.429" x2="-3.81" y2="-3.429" width="0" layer="51"/>
<wire x1="-3.81" y1="-4.699" x2="-3.81" y2="-4.191" width="0" layer="51"/>
<wire x1="-3.81" y1="-4.191" x2="-5.334" y2="-4.191" width="0" layer="51"/>
<wire x1="-5.334" y1="-4.191" x2="-5.334" y2="-4.699" width="0" layer="51"/>
<wire x1="-5.334" y1="-4.699" x2="-3.81" y2="-4.699" width="0" layer="51"/>
<wire x1="3.81" y1="-4.191" x2="3.81" y2="-4.699" width="0" layer="51"/>
<wire x1="3.81" y1="-4.699" x2="5.334" y2="-4.699" width="0" layer="51"/>
<wire x1="5.334" y1="-4.699" x2="5.334" y2="-4.191" width="0" layer="51"/>
<wire x1="5.334" y1="-4.191" x2="3.81" y2="-4.191" width="0" layer="51"/>
<wire x1="3.81" y1="-2.921" x2="3.81" y2="-3.429" width="0" layer="51"/>
<wire x1="3.81" y1="-3.429" x2="5.334" y2="-3.429" width="0" layer="51"/>
<wire x1="5.334" y1="-3.429" x2="5.334" y2="-2.921" width="0" layer="51"/>
<wire x1="5.334" y1="-2.921" x2="3.81" y2="-2.921" width="0" layer="51"/>
<wire x1="3.81" y1="-1.651" x2="3.81" y2="-2.159" width="0" layer="51"/>
<wire x1="3.81" y1="-2.159" x2="5.334" y2="-2.159" width="0" layer="51"/>
<wire x1="5.334" y1="-2.159" x2="5.334" y2="-1.651" width="0" layer="51"/>
<wire x1="5.334" y1="-1.651" x2="3.81" y2="-1.651" width="0" layer="51"/>
<wire x1="3.81" y1="-0.381" x2="3.81" y2="-0.889" width="0" layer="51"/>
<wire x1="3.81" y1="-0.889" x2="5.334" y2="-0.889" width="0" layer="51"/>
<wire x1="5.334" y1="-0.889" x2="5.334" y2="-0.381" width="0" layer="51"/>
<wire x1="5.334" y1="-0.381" x2="3.81" y2="-0.381" width="0" layer="51"/>
<wire x1="3.81" y1="0.889" x2="3.81" y2="0.381" width="0" layer="51"/>
<wire x1="3.81" y1="0.381" x2="5.334" y2="0.381" width="0" layer="51"/>
<wire x1="5.334" y1="0.381" x2="5.334" y2="0.889" width="0" layer="51"/>
<wire x1="5.334" y1="0.889" x2="3.81" y2="0.889" width="0" layer="51"/>
<wire x1="3.81" y1="2.159" x2="3.81" y2="1.651" width="0" layer="51"/>
<wire x1="3.81" y1="1.651" x2="5.334" y2="1.651" width="0" layer="51"/>
<wire x1="5.334" y1="1.651" x2="5.334" y2="2.159" width="0" layer="51"/>
<wire x1="5.334" y1="2.159" x2="3.81" y2="2.159" width="0" layer="51"/>
<wire x1="3.81" y1="3.429" x2="3.81" y2="2.921" width="0" layer="51"/>
<wire x1="3.81" y1="2.921" x2="5.334" y2="2.921" width="0" layer="51"/>
<wire x1="5.334" y1="2.921" x2="5.334" y2="3.429" width="0" layer="51"/>
<wire x1="5.334" y1="3.429" x2="3.81" y2="3.429" width="0" layer="51"/>
<wire x1="3.81" y1="4.699" x2="3.81" y2="4.191" width="0" layer="51"/>
<wire x1="3.81" y1="4.191" x2="5.334" y2="4.191" width="0" layer="51"/>
<wire x1="5.334" y1="4.191" x2="5.334" y2="4.699" width="0" layer="51"/>
<wire x1="5.334" y1="4.699" x2="3.81" y2="4.699" width="0" layer="51"/>
<wire x1="-3.81" y1="-5.2578" x2="3.81" y2="-5.2578" width="0" layer="51"/>
<wire x1="3.81" y1="-5.2578" x2="3.81" y2="5.2578" width="0" layer="51"/>
<wire x1="3.81" y1="5.2578" x2="0.3048" y2="5.2578" width="0" layer="51"/>
<wire x1="0.3048" y1="5.2578" x2="-0.3048" y2="5.2578" width="0" layer="51"/>
<wire x1="-0.3048" y1="5.2578" x2="-3.81" y2="5.2578" width="0" layer="51"/>
<wire x1="-3.81" y1="5.2578" x2="-3.81" y2="-5.2578" width="0" layer="51"/>
<wire x1="0.3048" y1="5.2578" x2="-0.3048" y2="5.2578" width="0" layer="51" curve="-180"/>
<wire x1="3.81" y1="5.0292" x2="3.81" y2="5.2578" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-5.0292" x2="-3.81" y2="-5.2578" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-5.2578" x2="3.81" y2="-5.2578" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-5.2578" x2="3.81" y2="-5.0292" width="0.1524" layer="21"/>
<wire x1="3.81" y1="5.2578" x2="0.3048" y2="5.2578" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="5.2578" x2="-0.3048" y2="5.2578" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="5.2578" x2="-3.81" y2="5.2578" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="5.2578" x2="-3.81" y2="5.0292" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="5.2578" x2="-0.3048" y2="5.2578" width="0.1524" layer="21" curve="-180"/>
<text x="-3.46016875" y="6.996659375" size="2.08628125" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.46305" y="-8.27568125" size="2.08801875" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
<smd name="1" x="-4.7752" y="4.445" dx="1.8034" dy="0.5334" layer="1"/>
<smd name="2" x="-4.7752" y="3.175" dx="1.8034" dy="0.5334" layer="1"/>
<smd name="3" x="-4.7752" y="1.905" dx="1.8034" dy="0.5334" layer="1"/>
<smd name="4" x="-4.7752" y="0.635" dx="1.8034" dy="0.5334" layer="1"/>
<smd name="5" x="-4.7752" y="-0.635" dx="1.8034" dy="0.5334" layer="1"/>
<smd name="6" x="-4.7752" y="-1.905" dx="1.8034" dy="0.5334" layer="1"/>
<smd name="7" x="-4.7752" y="-3.175" dx="1.8034" dy="0.5334" layer="1"/>
<smd name="8" x="-4.7752" y="-4.445" dx="1.8034" dy="0.5334" layer="1"/>
<smd name="9" x="4.7752" y="-4.445" dx="1.8034" dy="0.5334" layer="1"/>
<smd name="10" x="4.7752" y="-3.175" dx="1.8034" dy="0.5334" layer="1"/>
<smd name="11" x="4.7752" y="-1.905" dx="1.8034" dy="0.5334" layer="1"/>
<smd name="12" x="4.7752" y="-0.635" dx="1.8034" dy="0.5334" layer="1"/>
<smd name="13" x="4.7752" y="0.635" dx="1.8034" dy="0.5334" layer="1"/>
<smd name="14" x="4.7752" y="1.905" dx="1.8034" dy="0.5334" layer="1"/>
<smd name="15" x="4.7752" y="3.175" dx="1.8034" dy="0.5334" layer="1"/>
<smd name="16" x="4.7752" y="4.445" dx="1.8034" dy="0.5334" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="PCF8574T">
<wire x1="-12.7" y1="15.24" x2="-12.7" y2="-20.32" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="-20.32" x2="12.7" y2="-20.32" width="0.4064" layer="94"/>
<wire x1="12.7" y1="-20.32" x2="12.7" y2="15.24" width="0.4064" layer="94"/>
<wire x1="12.7" y1="15.24" x2="-12.7" y2="15.24" width="0.4064" layer="94"/>
<text x="-5.375190625" y="18.0616" size="2.088940625" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-4.14886875" y="-24.8423" size="2.08716875" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<pin name="VDD" x="-17.78" y="10.16" length="middle" direction="pwr"/>
<pin name="A0" x="-17.78" y="5.08" length="middle" direction="in"/>
<pin name="A1" x="-17.78" y="2.54" length="middle" direction="in"/>
<pin name="A2" x="-17.78" y="0" length="middle" direction="in"/>
<pin name="SCL" x="-17.78" y="-5.08" length="middle" direction="in"/>
<pin name="VSS" x="-17.78" y="-10.16" length="middle" direction="pas"/>
<pin name="SDA" x="17.78" y="10.16" length="middle" rot="R180"/>
<pin name="~INT" x="17.78" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="P0" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="P1" x="17.78" y="0" length="middle" rot="R180"/>
<pin name="P2" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="P3" x="17.78" y="-5.08" length="middle" rot="R180"/>
<pin name="P4" x="17.78" y="-7.62" length="middle" rot="R180"/>
<pin name="P5" x="17.78" y="-10.16" length="middle" rot="R180"/>
<pin name="P6" x="17.78" y="-12.7" length="middle" rot="R180"/>
<pin name="P7" x="17.78" y="-15.24" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PCF8574T" prefix="U">
<description>Remote 8-bit I/O expander for I2C-bus &lt;a href="https://pricing.snapeda.com/parts/PCF8574T/NXP%20Semiconductors/view-part?ref=eda"&gt;Check prices&lt;/a&gt;</description>
<gates>
<gate name="A" symbol="PCF8574T" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOIC127P1032X265-16N">
<connects>
<connect gate="A" pin="A0" pad="1"/>
<connect gate="A" pin="A1" pad="2"/>
<connect gate="A" pin="A2" pad="3"/>
<connect gate="A" pin="P0" pad="4"/>
<connect gate="A" pin="P1" pad="5"/>
<connect gate="A" pin="P2" pad="6"/>
<connect gate="A" pin="P3" pad="7"/>
<connect gate="A" pin="P4" pad="9"/>
<connect gate="A" pin="P5" pad="10"/>
<connect gate="A" pin="P6" pad="11"/>
<connect gate="A" pin="P7" pad="12"/>
<connect gate="A" pin="SCL" pad="14"/>
<connect gate="A" pin="SDA" pad="15"/>
<connect gate="A" pin="VDD" pad="16"/>
<connect gate="A" pin="VSS" pad="8"/>
<connect gate="A" pin="~INT" pad="13"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Bad"/>
<attribute name="DESCRIPTION" value=" I/O Expander 8 I²C 100kHz 20-SSOP "/>
<attribute name="MF" value="NXP Semiconductors"/>
<attribute name="MP" value="PCF8574T"/>
<attribute name="PACKAGE" value="SOIC-16 NXP Semiconductors"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2" urn="urn:adsk.eagle:library:372">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VCC" urn="urn:adsk.eagle:symbol:26997/1" library_version="2">
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" urn="urn:adsk.eagle:component:27060/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="LM35H">
<packages>
<package name="TO127P543X266-3P">
<wire x1="-2.2352" y1="-4.6736" x2="-3.4036" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-3.4036" y1="-3.5052" x2="-2.54" y2="-2.6416" width="0.1524" layer="21"/>
<wire x1="-2.2352" y1="-4.6736" x2="-1.3716" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="2.794" y1="-1.27" x2="-2.7686" y2="-1.27" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.7686" y1="-1.27" x2="2.794" y2="-1.27" width="0.1524" layer="21" curve="-180"/>
<wire x1="-3.4036" y1="-3.5052" x2="-2.54" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="-2.2352" y1="-4.6736" x2="-1.3716" y2="-3.81" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-1.27" x2="-2.7686" y2="-1.27" width="0.1524" layer="51" curve="-180"/>
<wire x1="-2.7686" y1="-1.27" x2="2.794" y2="-1.27" width="0.1524" layer="51" curve="-180"/>
<text x="-4.68543125" y="2.44456875" size="2.08808125" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.4143" y="-7.06655" size="2.08438125" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
<pad name="1" x="0" y="-2.54" drill="0.8128"/>
<pad name="2" x="1.0922" y="-0.635" drill="0.8128" rot="R120"/>
<pad name="3" x="-1.0922" y="-0.635" drill="0.8128" rot="R240"/>
</package>
</packages>
<symbols>
<symbol name="LM35H">
<wire x1="-12.7" y1="2.54" x2="-12.7" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="-10.16" x2="12.7" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="12.7" y1="-10.16" x2="12.7" y2="2.54" width="0.4064" layer="94"/>
<wire x1="12.7" y1="2.54" x2="-12.7" y2="2.54" width="0.4064" layer="94"/>
<text x="-5.477040625" y="3.744759375" size="2.08891875" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-4.171209375" y="-12.946" size="2.085609375" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<pin name="+VS" x="-17.78" y="-2.54" length="middle" direction="pwr"/>
<pin name="GND" x="-17.78" y="-5.08" length="middle" direction="pas"/>
<pin name="VOUT" x="17.78" y="-5.08" length="middle" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LM35H" prefix="U">
<description>IC, TEMPERATURE SENSOR, ± 0.2°C &lt;a href="https://pricing.snapeda.com/parts/LM35H/Texas%20Instruments/view-part?ref=eda"&gt;Check prices&lt;/a&gt;</description>
<gates>
<gate name="A" symbol="LM35H" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TO127P543X266-3P">
<connects>
<connect gate="A" pin="+VS" pad="1"/>
<connect gate="A" pin="GND" pad="3"/>
<connect gate="A" pin="VOUT" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Warning"/>
<attribute name="DESCRIPTION" value=" &amp;plusmn;0.5&amp;deg;C 4V-30V, Temperature sensor with analog output 3-TO -55 to 150 "/>
<attribute name="MF" value="Texas Instruments"/>
<attribute name="MP" value="LM35H"/>
<attribute name="PACKAGE" value="TO-CAN-3 Texas Instruments"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/LM35H/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="st-microelectronics" urn="urn:adsk.eagle:library:368">
<description>&lt;b&gt;ST Microelectronics Devices&lt;/b&gt;&lt;p&gt;
Microcontrollers,  I2C components, linear devices&lt;p&gt;
http://www.st.com&lt;p&gt;
&lt;i&gt;Include st-microelectronics-2.lbr, st-microelectronics-3.lbr.&lt;p&gt;&lt;/i&gt;

&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MULTIWATT-15" urn="urn:adsk.eagle:footprint:26700/1" library_version="5">
<description>&lt;b&gt;Multiwatt 15 lead&lt;/b&gt;</description>
<wire x1="-9.398" y1="-3.302" x2="-9.144" y2="-3.302" width="0.1524" layer="21"/>
<wire x1="-9.144" y1="-3.302" x2="9.144" y2="-3.302" width="0.1524" layer="51"/>
<wire x1="9.144" y1="-3.302" x2="9.398" y2="-3.302" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="0.254" x2="-9.398" y2="-3.302" width="0.1524" layer="21"/>
<wire x1="9.398" y1="0.254" x2="9.398" y2="-3.302" width="0.1524" layer="21"/>
<pad name="8" x="0" y="-2.54" drill="1.2" shape="long" rot="R90"/>
<pad name="9" x="1.27" y="-7.62" drill="1.2" shape="long" rot="R90"/>
<pad name="10" x="2.54" y="-2.54" drill="1.2" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="-7.62" drill="1.2" shape="long" rot="R90"/>
<pad name="12" x="5.08" y="-2.54" drill="1.2" shape="long" rot="R90"/>
<pad name="13" x="6.35" y="-7.62" drill="1.2" shape="long" rot="R90"/>
<pad name="7" x="-1.27" y="-7.62" drill="1.2" shape="long" rot="R90"/>
<pad name="6" x="-2.54" y="-2.54" drill="1.2" shape="long" rot="R90"/>
<pad name="5" x="-3.81" y="-7.62" drill="1.2" shape="long" rot="R90"/>
<pad name="4" x="-5.08" y="-2.54" drill="1.2" shape="long" rot="R90"/>
<pad name="3" x="-6.35" y="-7.62" drill="1.2" shape="long" rot="R90"/>
<pad name="14" x="7.62" y="-2.54" drill="1.2" shape="long" rot="R90"/>
<pad name="15" x="8.89" y="-7.62" drill="1.2" shape="long" rot="R90"/>
<pad name="2" x="-7.62" y="-2.54" drill="1.2" shape="long" rot="R90"/>
<pad name="1" x="-8.89" y="-7.62" drill="1.2" shape="long" rot="R90"/>
<text x="-9.3274" y="-10.3383" size="1.27" layer="21">1</text>
<text x="8.0576" y="-10.2791" size="1.27" layer="21">15</text>
<text x="-8.1765" y="-1.27" size="1.27" layer="21">2</text>
<text x="6.6685" y="-1.27" size="1.27" layer="21">14</text>
<text x="-8.89" y="-12.7" size="1.27" layer="25">&gt;NAME</text>
<text x="2.54" y="-12.7" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-9.144" y1="-6.096" x2="-8.636" y2="-3.302" layer="51"/>
<rectangle x1="-6.604" y1="-6.096" x2="-6.096" y2="-3.302" layer="51"/>
<rectangle x1="-4.064" y1="-6.096" x2="-3.556" y2="-3.302" layer="51"/>
<rectangle x1="-1.524" y1="-6.096" x2="-1.016" y2="-3.302" layer="51"/>
<rectangle x1="1.016" y1="-6.096" x2="1.524" y2="-3.302" layer="51"/>
<rectangle x1="3.556" y1="-6.096" x2="4.064" y2="-3.302" layer="51"/>
<rectangle x1="6.096" y1="-6.096" x2="6.604" y2="-3.302" layer="51"/>
<rectangle x1="8.636" y1="-6.096" x2="9.144" y2="-3.302" layer="51"/>
<rectangle x1="-9.475" y1="0.175" x2="9.475" y2="1.85" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="MULTIWATT-15" urn="urn:adsk.eagle:package:26823/1" type="box" library_version="5">
<description>Multiwatt 15 lead</description>
<packageinstances>
<packageinstance name="MULTIWATT-15"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="L298" urn="urn:adsk.eagle:symbol:26702/1" library_version="5">
<wire x1="-12.7" y1="17.78" x2="12.7" y2="17.78" width="0.254" layer="94"/>
<wire x1="12.7" y1="17.78" x2="12.7" y2="-12.7" width="0.254" layer="94"/>
<wire x1="12.7" y1="-12.7" x2="-12.7" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-12.7" x2="-12.7" y2="17.78" width="0.254" layer="94"/>
<text x="-12.7" y="19.05" size="1.778" layer="95">&gt;NAME</text>
<text x="-12.7" y="-15.24" size="1.778" layer="96">&gt;VALUE</text>
<pin name="SEN_B" x="15.24" y="7.62" length="short" direction="in" rot="R180"/>
<pin name="OUT4" x="15.24" y="-5.08" length="short" direction="out" rot="R180"/>
<pin name="OUT3" x="15.24" y="-2.54" length="short" direction="out" rot="R180"/>
<pin name="INPUT4" x="-15.24" y="-5.08" length="short" direction="in"/>
<pin name="ENABLE_B" x="-15.24" y="7.62" length="short" direction="in"/>
<pin name="INPUT3" x="-15.24" y="-2.54" length="short" direction="in"/>
<pin name="VCC" x="-15.24" y="15.24" length="short" direction="pwr"/>
<pin name="GND" x="-15.24" y="-10.16" length="short" direction="pwr"/>
<pin name="INPUT2" x="-15.24" y="0" length="short" direction="in"/>
<pin name="ENABLE_A" x="-15.24" y="10.16" length="short" direction="in"/>
<pin name="INPUT1" x="-15.24" y="2.54" length="short" direction="in"/>
<pin name="VS" x="15.24" y="15.24" length="short" direction="pwr" rot="R180"/>
<pin name="OUT2" x="15.24" y="0" length="short" direction="out" rot="R180"/>
<pin name="OUT1" x="15.24" y="2.54" length="short" direction="out" rot="R180"/>
<pin name="SEN_A" x="15.24" y="10.16" length="short" direction="in" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="L298" urn="urn:adsk.eagle:component:26872/2" prefix="IC" library_version="5">
<description>&lt;b&gt;DUAL FULL-BRIDGE DRIVER&lt;/b&gt;</description>
<gates>
<gate name="L298" symbol="L298" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MULTIWATT-15">
<connects>
<connect gate="L298" pin="ENABLE_A" pad="6"/>
<connect gate="L298" pin="ENABLE_B" pad="11"/>
<connect gate="L298" pin="GND" pad="8"/>
<connect gate="L298" pin="INPUT1" pad="5"/>
<connect gate="L298" pin="INPUT2" pad="7"/>
<connect gate="L298" pin="INPUT3" pad="10"/>
<connect gate="L298" pin="INPUT4" pad="12"/>
<connect gate="L298" pin="OUT1" pad="2"/>
<connect gate="L298" pin="OUT2" pad="3"/>
<connect gate="L298" pin="OUT3" pad="13"/>
<connect gate="L298" pin="OUT4" pad="14"/>
<connect gate="L298" pin="SEN_A" pad="1"/>
<connect gate="L298" pin="SEN_B" pad="15"/>
<connect gate="L298" pin="VCC" pad="9"/>
<connect gate="L298" pin="VS" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26823/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="L298N" constant="no"/>
<attribute name="OC_FARNELL" value="1589425" constant="no"/>
<attribute name="OC_NEWARK" value="32M1527" constant="no"/>
<attribute name="POPULARITY" value="11" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="GA1A1S202WP">
<packages>
<package name="XDCR_GA1A1S202WP">
<wire x1="-0.8" y1="-1" x2="-0.8" y2="1" width="0.127" layer="51"/>
<wire x1="-0.8" y1="1" x2="0.8" y2="1" width="0.127" layer="51"/>
<wire x1="0.8" y1="1" x2="0.8" y2="-1" width="0.127" layer="51"/>
<wire x1="0.8" y1="-1" x2="-0.8" y2="-1" width="0.127" layer="51"/>
<wire x1="-0.8" y1="0.18" x2="-0.8" y2="-0.18" width="0.127" layer="21"/>
<wire x1="0.8" y1="0.18" x2="0.8" y2="-0.18" width="0.127" layer="21"/>
<circle x="-1.527" y="0.9" radius="0.1" width="0.2" layer="21"/>
<circle x="-1.515" y="0.896" radius="0.1" width="0.2" layer="51"/>
<wire x1="-1.2" y1="1.35" x2="1.2" y2="1.35" width="0.05" layer="39"/>
<wire x1="1.2" y1="1.35" x2="1.2" y2="-1.35" width="0.05" layer="39"/>
<wire x1="1.2" y1="-1.35" x2="-1.2" y2="-1.35" width="0.05" layer="39"/>
<wire x1="-1.2" y1="-1.35" x2="-1.2" y2="1.35" width="0.05" layer="39"/>
<text x="-1.397" y="1.524" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.016" layer="27">&gt;VALUE</text>
<smd name="4" x="-0.65" y="-0.8" dx="0.6" dy="0.6" layer="1" rot="R90"/>
<smd name="1" x="-0.65" y="0.8" dx="0.6" dy="0.6" layer="1" rot="R90"/>
<smd name="3" x="0.65" y="-0.8" dx="0.6" dy="0.6" layer="1" rot="R90"/>
<smd name="2" x="0.65" y="0.8" dx="0.6" dy="0.6" layer="1" rot="R90"/>
</package>
</packages>
<symbols>
<symbol name="GA1A1S202WP">
<wire x1="-5.08" y1="7.62" x2="5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="-7.62" x2="-5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-7.62" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<text x="-5.08" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VCC" x="10.16" y="5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="IO" x="10.16" y="0" length="middle" rot="R180"/>
<pin name="GND" x="10.16" y="-5.08" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GA1A1S202WP" prefix="U">
<description>Optical Sensor Ambient 555nm Current 4-SMD, No Lead &lt;a href="https://pricing.snapeda.com/parts/GA1A1S202WP/Sharp%20Microelectronics/view-part?ref=eda"&gt;Check prices&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="GA1A1S202WP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="XDCR_GA1A1S202WP">
<connects>
<connect gate="G$1" pin="GND" pad="1 2"/>
<connect gate="G$1" pin="IO" pad="3"/>
<connect gate="G$1" pin="VCC" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Bad"/>
<attribute name="DESCRIPTION" value=" Optical Sensor Ambient 555nm Current 4-SMD, No Lead "/>
<attribute name="MF" value="Sharp Microelectronics"/>
<attribute name="MP" value="GA1A1S202WP"/>
<attribute name="PACKAGE" value="SMD-4 Sharp Microelectronics"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="transistor-fet" urn="urn:adsk.eagle:library:396">
<description>&lt;b&gt;Field Effect Transistors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;p&gt;
&lt;p&gt;
Symbols changed according to IEC617&lt;p&gt; 
All types, packages and assignment to symbols and pins checked&lt;p&gt;
Package outlines partly checked&lt;p&gt;
&lt;p&gt;
JFET = junction FET&lt;p&gt;
IGBT-x = insulated gate bipolar transistor&lt;p&gt;
x=N: NPN; x=P: PNP&lt;p&gt;
IGFET-mc-nnn; (IGFET=insulated gate field effect transistor)&lt;P&gt;
m=D: depletion mode (Verdr&amp;auml;ngungstyp)&lt;p&gt;
m=E: enhancement mode (Anreicherungstyp)&lt;p&gt;
c: N=N-channel; P=P-Channel&lt;p&gt;
GDSB: gate, drain, source, bulk&lt;p&gt;
&lt;p&gt;
by R. Vogg  15.March.2002</description>
<packages>
<package name="TO92" urn="urn:adsk.eagle:footprint:28459/1" library_version="5">
<description>&lt;b&gt;TO 92&lt;/b&gt;</description>
<wire x1="-2.0946" y1="-1.651" x2="-2.6549" y2="-0.254" width="0.127" layer="21" curve="-32.781"/>
<wire x1="-2.6549" y1="-0.254" x2="-0.7863" y2="2.5485" width="0.127" layer="21" curve="-78.3185"/>
<wire x1="0.7863" y1="2.5484" x2="2.0945" y2="-1.651" width="0.127" layer="21" curve="-111.1"/>
<wire x1="-2.0945" y1="-1.651" x2="2.0945" y2="-1.651" width="0.127" layer="21"/>
<wire x1="-2.2537" y1="-0.254" x2="-0.2863" y2="-0.254" width="0.127" layer="51"/>
<wire x1="-2.6549" y1="-0.254" x2="-2.2537" y2="-0.254" width="0.127" layer="21"/>
<wire x1="-0.2863" y1="-0.254" x2="0.2863" y2="-0.254" width="0.127" layer="21"/>
<wire x1="2.2537" y1="-0.254" x2="2.6549" y2="-0.254" width="0.127" layer="21"/>
<wire x1="0.2863" y1="-0.254" x2="2.2537" y2="-0.254" width="0.127" layer="51"/>
<wire x1="-0.7863" y1="2.5485" x2="0.7863" y2="2.5485" width="0.127" layer="51" curve="-34.2936"/>
<pad name="1" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="0" y="1.905" drill="0.8128" shape="octagon"/>
<pad name="3" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="3.175" y="0.635" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.175" y="-1.27" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-0.635" y="0.635" size="1.27" layer="51" ratio="10">2</text>
<text x="-2.159" y="0" size="1.27" layer="51" ratio="10">3</text>
<text x="1.143" y="0" size="1.27" layer="51" ratio="10">1</text>
</package>
</packages>
<packages3d>
<package3d name="TO92" urn="urn:adsk.eagle:package:28523/2" type="model" library_version="5">
<description>TO 92</description>
<packageinstances>
<packageinstance name="TO92"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="IGFET-EN-GDS" urn="urn:adsk.eagle:symbol:28452/1" library_version="5">
<wire x1="-2.54" y1="-2.54" x2="-1.2192" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="0.762" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-0.762" width="0.254" layer="94"/>
<wire x1="0" y1="3.683" x2="0" y2="1.397" width="0.254" layer="94"/>
<wire x1="1.905" y1="0.635" x2="0.635" y2="0" width="0.254" layer="94"/>
<wire x1="1.905" y1="-0.635" x2="0.635" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="0.635" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.397" x2="0" y2="-3.683" width="0.254" layer="94"/>
<wire x1="-1.143" y1="2.54" x2="-1.143" y2="-2.54" width="0.254" layer="94"/>
<text x="-11.43" y="0" size="1.778" layer="96">&gt;VALUE</text>
<text x="-11.43" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<pin name="D" x="5.08" y="2.54" visible="off" length="middle" direction="pas" rot="R180"/>
<pin name="S" x="5.08" y="-2.54" visible="off" length="middle" direction="pas" rot="R180"/>
<pin name="G" x="-5.08" y="-2.54" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BSS101" urn="urn:adsk.eagle:component:28556/3" prefix="Q" library_version="5">
<description>&lt;b&gt;N-Channel Enhancement MOSFET&lt;/b&gt; 200V; 0,16A; 11Ohm</description>
<gates>
<gate name="G$1" symbol="IGFET-EN-GDS" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TO92">
<connects>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="G" pad="2"/>
<connect gate="G$1" pin="S" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:28523/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ADP5585ACBZ-00-R7">
<packages>
<package name="BGA16C40P4X4_159X159X54">
<text x="-2.59301875" y="-0.025421875" size="1.271090625" layer="21" ratio="6" rot="SR0">A</text>
<text x="-2.59261875" y="-1.24546875" size="1.270890625" layer="21" ratio="6" rot="SR0">D</text>
<text x="0.0254" y="1.44781875" size="1.270009375" layer="21" ratio="6" rot="SR90">1</text>
<text x="1.246009375" y="1.449440625" size="1.271440625" layer="21" ratio="6" rot="SR90">4</text>
<wire x1="-0.6096" y1="0.8128" x2="-0.8128" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-0.8128" y1="-0.8128" x2="0.8128" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.8128" y1="-0.8128" x2="0.8128" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="0.8128" y1="0.8128" x2="-0.8128" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-0.8128" y1="0.8128" x2="-0.8128" y2="-0.8128" width="0.1524" layer="51"/>
<text x="-2.592809375" y="-0.02541875" size="1.270990625" layer="51" ratio="6" rot="SR0">A</text>
<text x="-2.59396875" y="-1.24611875" size="1.27155" layer="51" ratio="6" rot="SR0">D</text>
<text x="0.02545" y="1.450659375" size="1.272509375" layer="51" ratio="6" rot="SR90">1</text>
<text x="1.24598125" y="1.4494" size="1.271409375" layer="51" ratio="6" rot="SR90">4</text>
<text x="-2.87068125" y="3.81063125" size="2.083140625" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.45511875" y="-6.35131875" size="2.08323125" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
<smd name="A1" x="-0.6096" y="0.6096" dx="0.254" dy="0.254" layer="1" roundness="100"/>
<smd name="A2" x="-0.2032" y="0.6096" dx="0.254" dy="0.254" layer="1" roundness="100"/>
<smd name="A3" x="0.2032" y="0.6096" dx="0.254" dy="0.254" layer="1" roundness="100"/>
<smd name="A4" x="0.6096" y="0.6096" dx="0.254" dy="0.254" layer="1" roundness="100"/>
<smd name="B1" x="-0.6096" y="0.2032" dx="0.254" dy="0.254" layer="1" roundness="100"/>
<smd name="B2" x="-0.2032" y="0.2032" dx="0.254" dy="0.254" layer="1" roundness="100"/>
<smd name="B3" x="0.2032" y="0.2032" dx="0.254" dy="0.254" layer="1" roundness="100"/>
<smd name="B4" x="0.6096" y="0.2032" dx="0.254" dy="0.254" layer="1" roundness="100"/>
<smd name="C1" x="-0.6096" y="-0.2032" dx="0.254" dy="0.254" layer="1" roundness="100"/>
<smd name="C2" x="-0.2032" y="-0.2032" dx="0.254" dy="0.254" layer="1" roundness="100"/>
<smd name="C3" x="0.2032" y="-0.2032" dx="0.254" dy="0.254" layer="1" roundness="100"/>
<smd name="C4" x="0.6096" y="-0.2032" dx="0.254" dy="0.254" layer="1" roundness="100"/>
<smd name="D1" x="-0.6096" y="-0.6096" dx="0.254" dy="0.254" layer="1" roundness="100"/>
<smd name="D2" x="-0.2032" y="-0.6096" dx="0.254" dy="0.254" layer="1" roundness="100"/>
<smd name="D3" x="0.2032" y="-0.6096" dx="0.254" dy="0.254" layer="1" roundness="100"/>
<smd name="D4" x="0.6096" y="-0.6096" dx="0.254" dy="0.254" layer="1" roundness="100"/>
</package>
</packages>
<symbols>
<symbol name="ADP5585ACBZ-00-R7">
<wire x1="-12.7" y1="20.32" x2="-12.7" y2="-27.94" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="-27.94" x2="12.7" y2="-27.94" width="0.4064" layer="94"/>
<wire x1="12.7" y1="-27.94" x2="12.7" y2="20.32" width="0.4064" layer="94"/>
<wire x1="12.7" y1="20.32" x2="-12.7" y2="20.32" width="0.4064" layer="94"/>
<text x="-5.210940625" y="22.3435" size="2.08438125" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-6.6357" y="-30.6869" size="2.08478125" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<pin name="VDD" x="-17.78" y="15.24" length="middle" direction="pwr"/>
<pin name="SCL" x="-17.78" y="10.16" length="middle" direction="in"/>
<pin name="SDA" x="-17.78" y="5.08" length="middle"/>
<pin name="INT*" x="-17.78" y="0" length="middle" direction="out"/>
<pin name="R0" x="-17.78" y="-5.08" length="middle"/>
<pin name="R1" x="-17.78" y="-7.62" length="middle"/>
<pin name="R2" x="-17.78" y="-10.16" length="middle"/>
<pin name="R3" x="-17.78" y="-12.7" length="middle"/>
<pin name="R4" x="-17.78" y="-15.24" length="middle"/>
<pin name="RST*/R5" x="-17.78" y="-17.78" length="middle" direction="in"/>
<pin name="GND" x="-17.78" y="-22.86" length="middle" direction="pas"/>
<pin name="C0" x="17.78" y="15.24" length="middle" rot="R180"/>
<pin name="C1" x="17.78" y="12.7" length="middle" rot="R180"/>
<pin name="C2" x="17.78" y="10.16" length="middle" rot="R180"/>
<pin name="C3" x="17.78" y="7.62" length="middle" rot="R180"/>
<pin name="C4" x="17.78" y="5.08" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ADP5585ACBZ-00-R7" prefix="U">
<description>WLCSP-16,Keypad Decoder and I/O Expansion &lt;a href="https://pricing.snapeda.com/parts/ADP5585ACBZ-00-R7/Analog%20Devices/view-part?ref=eda"&gt;Check prices&lt;/a&gt;</description>
<gates>
<gate name="A" symbol="ADP5585ACBZ-00-R7" x="0" y="0"/>
</gates>
<devices>
<device name="" package="BGA16C40P4X4_159X159X54">
<connects>
<connect gate="A" pin="C0" pad="B4"/>
<connect gate="A" pin="C1" pad="C3"/>
<connect gate="A" pin="C2" pad="C4"/>
<connect gate="A" pin="C3" pad="D3"/>
<connect gate="A" pin="C4" pad="D4"/>
<connect gate="A" pin="GND" pad="A4"/>
<connect gate="A" pin="INT*" pad="B2"/>
<connect gate="A" pin="R0" pad="B1"/>
<connect gate="A" pin="R1" pad="C2"/>
<connect gate="A" pin="R2" pad="C1"/>
<connect gate="A" pin="R3" pad="D2"/>
<connect gate="A" pin="R4" pad="D1"/>
<connect gate="A" pin="RST*/R5" pad="B3"/>
<connect gate="A" pin="SCL" pad="A3"/>
<connect gate="A" pin="SDA" pad="A2"/>
<connect gate="A" pin="VDD" pad="A1"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Warning"/>
<attribute name="DESCRIPTION" value=" Keypad Entries, I/O Expansion Interface 16-WLCSP (1.59x1.59) "/>
<attribute name="MF" value="Analog Devices"/>
<attribute name="MP" value="ADP5585ACBZ-00-R7"/>
<attribute name="PACKAGE" value="WLCSP -16 Analog Devices"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/ADP5585ACBZ-00-R7/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="relay" urn="urn:adsk.eagle:library:339">
<description>&lt;b&gt;Relays&lt;/b&gt;&lt;p&gt;
&lt;ul&gt;
&lt;li&gt;Eichhoff
&lt;li&gt;Finder
&lt;li&gt;Fujitsu
&lt;li&gt;HAMLIN
&lt;li&gt;OMRON
&lt;li&gt;Matsushita
&lt;li&gt;NAiS
&lt;li&gt;Siemens
&lt;li&gt;Schrack
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="G5SB" urn="urn:adsk.eagle:footprint:24243/1" library_version="5">
<description>&lt;b&gt;Compact Single-pole Relay for Switching 5 A&lt;/b&gt;&lt;p&gt;
Source: http://www.omron.com/ecb/products/pry/121/g5sb.html</description>
<wire x1="-11.25" y1="4.9" x2="8.7" y2="4.9" width="0.2032" layer="21"/>
<wire x1="8.7" y1="4.9" x2="8.7" y2="-4.9" width="0.2032" layer="21"/>
<wire x1="8.7" y1="-4.9" x2="-11.25" y2="-4.9" width="0.2032" layer="21"/>
<wire x1="-11.25" y1="-4.9" x2="-11.25" y2="4.9" width="0.2032" layer="21"/>
<pad name="1" x="7.62" y="3.81" drill="1.3" diameter="1.9304" rot="R180"/>
<pad name="2" x="-2.54" y="3.81" drill="1.3" diameter="2.1844" rot="R180"/>
<pad name="3" x="-10.16" y="3.81" drill="1.3" diameter="2.1844" rot="R180"/>
<pad name="4" x="-7.62" y="-3.81" drill="1.3" diameter="2.1844" rot="R180"/>
<pad name="5" x="7.62" y="-3.81" drill="1.3" diameter="1.9304" rot="R180"/>
<text x="-6.35" y="0" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="7.975" y1="-2.525" x2="8.325" y2="2.55" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="G5SB" urn="urn:adsk.eagle:package:24540/1" type="box" library_version="5">
<description>Compact Single-pole Relay for Switching 5 A
Source: http://www.omron.com/ecb/products/pry/121/g5sb.html</description>
<packageinstances>
<packageinstance name="G5SB"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="K" urn="urn:adsk.eagle:symbol:23941/1" library_version="5">
<wire x1="-3.81" y1="-1.905" x2="-1.905" y2="-1.905" width="0.254" layer="94"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="1.905" width="0.254" layer="94"/>
<wire x1="3.81" y1="1.905" x2="1.905" y2="1.905" width="0.254" layer="94"/>
<wire x1="-3.81" y1="1.905" x2="-3.81" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.905" x2="3.81" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="1.905" x2="-3.81" y2="1.905" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="1.905" y2="1.905" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="0" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.905" y1="1.905" x2="0" y2="1.905" width="0.254" layer="94"/>
<text x="1.27" y="2.921" size="1.778" layer="96">&gt;VALUE</text>
<text x="1.27" y="5.08" size="1.778" layer="95">&gt;PART</text>
<pin name="2" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="1" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
<symbol name="U" urn="urn:adsk.eagle:symbol:23944/1" library_version="5">
<wire x1="3.175" y1="5.08" x2="1.905" y2="5.08" width="0.254" layer="94"/>
<wire x1="-3.175" y1="5.08" x2="-1.905" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="2.54" y2="5.715" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="0" y2="0" width="0.254" layer="94"/>
<circle x="0" y="1.27" radius="0.127" width="0.4064" layer="94"/>
<text x="2.54" y="0" size="1.778" layer="95">&gt;PART</text>
<pin name="O" x="5.08" y="5.08" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="S" x="-5.08" y="5.08" visible="pad" length="short" direction="pas"/>
<pin name="P" x="0" y="-2.54" visible="pad" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="G5SB" urn="urn:adsk.eagle:component:24808/2" prefix="K" library_version="5">
<description>&lt;b&gt;Compact Single-pole Relay for Switching 5 A&lt;/b&gt;&lt;p&gt;
Source: http://www.omron.com/ecb/products/pry/121/g5sb.html</description>
<gates>
<gate name="1" symbol="K" x="-10.16" y="0" addlevel="must"/>
<gate name="U" symbol="U" x="12.7" y="-2.54" addlevel="must"/>
</gates>
<devices>
<device name="" package="G5SB">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="5"/>
<connect gate="U" pin="O" pad="4"/>
<connect gate="U" pin="P" pad="2"/>
<connect gate="U" pin="S" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24540/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="STM32F103RBT6" deviceset="STM32F103RBT6" device=""/>
<part name="U2" library="HC-SR04" deviceset="HC-SR04" device=""/>
<part name="U3" library="PCF8574T" deviceset="PCF8574T" device=""/>
<part name="SUPPLY1" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="VCC" device="" value="5V"/>
<part name="U4" library="LM35H" deviceset="LM35H" device=""/>
<part name="IC1" library="st-microelectronics" library_urn="urn:adsk.eagle:library:368" deviceset="L298" device="" package3d_urn="urn:adsk.eagle:package:26823/1"/>
<part name="U5" library="GA1A1S202WP" deviceset="GA1A1S202WP" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="Q1" library="transistor-fet" library_urn="urn:adsk.eagle:library:396" deviceset="BSS101" device="" package3d_urn="urn:adsk.eagle:package:28523/2" value="D4184"/>
<part name="GND7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="SUPPLY2" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="VCC" device="" value="24V 15A"/>
<part name="Q2" library="transistor-fet" library_urn="urn:adsk.eagle:library:396" deviceset="BSS101" device="" package3d_urn="urn:adsk.eagle:package:28523/2" value="D4184"/>
<part name="GND8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="Q3" library="transistor-fet" library_urn="urn:adsk.eagle:library:396" deviceset="BSS101" device="" package3d_urn="urn:adsk.eagle:package:28523/2" value="D4184"/>
<part name="GND9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="SUPPLY3" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="VCC" device="" value="48V 7.3A"/>
<part name="Q4" library="transistor-fet" library_urn="urn:adsk.eagle:library:396" deviceset="BSS101" device="" package3d_urn="urn:adsk.eagle:package:28523/2" value="T2618"/>
<part name="GND10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND12" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U7" library="ADP5585ACBZ-00-R7" deviceset="ADP5585ACBZ-00-R7" device=""/>
<part name="U8" library="HC-SR04" deviceset="HC-SR04" device=""/>
<part name="GND14" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="K1" library="relay" library_urn="urn:adsk.eagle:library:339" deviceset="G5SB" device="" package3d_urn="urn:adsk.eagle:package:24540/1"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="-17.78" y="30.48" size="1.778" layer="95">GND

VCC

AOUT</text>
<wire x1="-22.86" y1="45.72" x2="-10.16" y2="45.72" width="0.2032" layer="94"/>
<wire x1="-10.16" y1="45.72" x2="-10.16" y2="27.94" width="0.2032" layer="94"/>
<wire x1="-10.16" y1="27.94" x2="-22.86" y2="27.94" width="0.2032" layer="94"/>
<wire x1="-22.86" y1="27.94" x2="-22.86" y2="45.72" width="0.2032" layer="94"/>
<text x="-17.78" y="10.16" size="1.778" layer="95">GND

VCC

AOUT</text>
<wire x1="-22.86" y1="25.4" x2="-10.16" y2="25.4" width="0.2032" layer="94"/>
<wire x1="-10.16" y1="25.4" x2="-10.16" y2="7.62" width="0.2032" layer="94"/>
<wire x1="-10.16" y1="7.62" x2="-22.86" y2="7.62" width="0.2032" layer="94"/>
<wire x1="-22.86" y1="7.62" x2="-22.86" y2="25.4" width="0.2032" layer="94"/>
<text x="-27.94" y="45.72" size="1.778" layer="95">SEN0193</text>
<text x="-27.94" y="25.4" size="1.778" layer="95">SEN0193</text>
<text x="-27.94" y="5.08" size="1.778" layer="95">SEN0193</text>
<circle x="43.18" y="48.26" radius="2.54" width="0.2032" layer="94"/>
<text x="45.72" y="45.72" size="1.778" layer="95">Heat_fan</text>
<wire x1="43.18" y1="45.72" x2="43.18" y2="43.18" width="0.2032" layer="94"/>
<wire x1="43.18" y1="50.8" x2="43.18" y2="53.34" width="0.2032" layer="94"/>
<text x="40.64" y="50.8" size="2.54" layer="94">+</text>
<text x="40.64" y="43.18" size="2.54" layer="94">-</text>
<circle x="63.5" y="48.26" radius="2.54" width="0.2032" layer="94"/>
<wire x1="63.5" y1="45.72" x2="63.5" y2="43.18" width="0.2032" layer="94"/>
<wire x1="63.5" y1="50.8" x2="63.5" y2="53.34" width="0.2032" layer="94"/>
<text x="60.96" y="50.8" size="2.54" layer="94">+</text>
<text x="60.96" y="43.18" size="2.54" layer="94">-</text>
<circle x="81.28" y="48.26" radius="2.54" width="0.2032" layer="94"/>
<wire x1="81.28" y1="45.72" x2="81.28" y2="43.18" width="0.2032" layer="94"/>
<wire x1="81.28" y1="50.8" x2="81.28" y2="53.34" width="0.2032" layer="94"/>
<text x="78.74" y="50.8" size="2.54" layer="94">+</text>
<text x="78.74" y="43.18" size="2.54" layer="94">-</text>
<text x="66.04" y="45.72" size="1.778" layer="95">Heater</text>
<text x="83.82" y="45.72" size="1.778" layer="95">Cooling fan</text>
<circle x="71.12" y="2.54" radius="2.54" width="0.2032" layer="94"/>
<wire x1="71.12" y1="0" x2="71.12" y2="-2.54" width="0.2032" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="7.62" width="0.2032" layer="94"/>
<text x="68.58" y="5.08" size="2.54" layer="94">+</text>
<text x="68.58" y="-2.54" size="2.54" layer="94">-</text>
<text x="73.66" y="-2.54" size="1.778" layer="95">LED BAR</text>
<text x="-12.7" y="-45.72" size="1.778" layer="98">miss: hcsr04 TIM1 CH2
motor driver (may need to change) TIM2 CH3 TIM2 CH4</text>
<circle x="238.76" y="-93.98" radius="10.77630625" width="0.2032" layer="94"/>
<wire x1="228.6" y1="-93.98" x2="220.98" y2="-93.98" width="0.2032" layer="94"/>
<wire x1="248.92" y1="-93.98" x2="259.08" y2="-93.98" width="0.2032" layer="94"/>
<text x="233.68" y="-109.22" size="1.778" layer="95">Water Pump</text>
<text x="251.46" y="-91.44" size="1.778" layer="94">+</text>
<text x="226.06" y="-91.44" size="1.778" layer="94">-</text>
</plain>
<instances>
<instance part="U1" gate="A" x="152.4" y="50.8" smashed="yes">
<attribute name="NAME" x="147.030509375" y="118.4658" size="2.08671875" layer="95" ratio="10" rot="SR0"/>
<attribute name="VALUE" x="146.449090625" y="-24.68" size="2.085359375" layer="96" ratio="10" rot="SR0"/>
</instance>
<instance part="U2" gate="G$1" x="91.44" y="-86.36" smashed="yes" rot="R270">
<attribute name="NAME" x="96.5213" y="-86.36" size="1.778459375" layer="95"/>
<attribute name="VALUE" x="73.657" y="-86.36" size="1.77851875" layer="96"/>
</instance>
<instance part="U3" gate="A" x="137.16" y="-78.74" smashed="yes">
<attribute name="NAME" x="131.784809375" y="-60.6784" size="2.088940625" layer="95" ratio="10" rot="SR0"/>
<attribute name="VALUE" x="133.01113125" y="-103.5823" size="2.08716875" layer="96" ratio="10" rot="SR0"/>
</instance>
<instance part="SUPPLY1" gate="G$1" x="-71.12" y="134.62" smashed="yes">
<attribute name="VALUE" x="-73.025" y="137.795" size="1.778" layer="96"/>
</instance>
<instance part="U4" gate="A" x="-15.24" y="76.2" smashed="yes">
<attribute name="NAME" x="-20.717040625" y="79.944759375" size="2.08891875" layer="95" ratio="10" rot="SR0"/>
<attribute name="VALUE" x="-19.411209375" y="63.254" size="2.085609375" layer="96" ratio="10" rot="SR0"/>
</instance>
<instance part="IC1" gate="L298" x="241.3" y="-22.86" smashed="yes">
<attribute name="NAME" x="228.6" y="-3.81" size="1.778" layer="95"/>
<attribute name="VALUE" x="228.6" y="-38.1" size="1.778" layer="96"/>
</instance>
<instance part="U5" gate="G$1" x="-5.08" y="93.98" smashed="yes">
<attribute name="NAME" x="-10.16" y="102.362" size="1.778" layer="95"/>
<attribute name="VALUE" x="-10.16" y="83.82" size="1.778" layer="96"/>
</instance>
<instance part="GND1" gate="1" x="-33.02" y="68.58" smashed="yes">
<attribute name="VALUE" x="-35.56" y="66.04" size="1.778" layer="96"/>
</instance>
<instance part="GND2" gate="1" x="5.08" y="86.36" smashed="yes">
<attribute name="VALUE" x="2.54" y="83.82" size="1.778" layer="96"/>
</instance>
<instance part="GND6" gate="1" x="-7.62" y="20.32" smashed="yes">
<attribute name="VALUE" x="-10.16" y="17.78" size="1.778" layer="96"/>
</instance>
<instance part="GND5" gate="1" x="-7.62" y="40.64" smashed="yes">
<attribute name="VALUE" x="-10.16" y="38.1" size="1.778" layer="96"/>
</instance>
<instance part="Q1" gate="G$1" x="38.1" y="33.02" smashed="yes">
<attribute name="VALUE" x="26.67" y="33.02" size="1.778" layer="96"/>
<attribute name="NAME" x="26.67" y="35.56" size="1.778" layer="95"/>
</instance>
<instance part="GND7" gate="1" x="43.18" y="27.94" smashed="yes">
<attribute name="VALUE" x="40.64" y="25.4" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY2" gate="G$1" x="30.48" y="63.5" smashed="yes">
<attribute name="VALUE" x="28.575" y="66.675" size="1.778" layer="96"/>
</instance>
<instance part="Q2" gate="G$1" x="58.42" y="33.02" smashed="yes">
<attribute name="VALUE" x="46.99" y="33.02" size="1.778" layer="96"/>
<attribute name="NAME" x="46.99" y="35.56" size="1.778" layer="95"/>
</instance>
<instance part="GND8" gate="1" x="63.5" y="27.94" smashed="yes">
<attribute name="VALUE" x="60.96" y="25.4" size="1.778" layer="96"/>
</instance>
<instance part="Q3" gate="G$1" x="76.2" y="33.02" smashed="yes">
<attribute name="VALUE" x="64.77" y="33.02" size="1.778" layer="96"/>
<attribute name="NAME" x="64.77" y="35.56" size="1.778" layer="95"/>
</instance>
<instance part="GND9" gate="1" x="81.28" y="27.94" smashed="yes">
<attribute name="VALUE" x="78.74" y="25.4" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY3" gate="G$1" x="71.12" y="17.78" smashed="yes">
<attribute name="VALUE" x="69.215" y="20.955" size="1.778" layer="96"/>
</instance>
<instance part="Q4" gate="G$1" x="66.04" y="-12.7" smashed="yes">
<attribute name="VALUE" x="54.61" y="-12.7" size="1.778" layer="96"/>
<attribute name="NAME" x="54.61" y="-10.16" size="1.778" layer="95"/>
</instance>
<instance part="GND10" gate="1" x="71.12" y="-17.78" smashed="yes">
<attribute name="VALUE" x="68.58" y="-20.32" size="1.778" layer="96"/>
</instance>
<instance part="GND12" gate="1" x="119.38" y="-91.44" smashed="yes">
<attribute name="VALUE" x="116.84" y="-93.98" size="1.778" layer="96"/>
</instance>
<instance part="U7" gate="A" x="238.76" y="38.1" smashed="yes">
<attribute name="NAME" x="233.549059375" y="60.4435" size="2.08438125" layer="95" ratio="10" rot="SR0"/>
<attribute name="VALUE" x="232.1243" y="7.4131" size="2.08478125" layer="96" ratio="10" rot="SR0"/>
</instance>
<instance part="U8" gate="G$1" x="38.1" y="10.16" smashed="yes" rot="R180">
<attribute name="NAME" x="38.1" y="5.0787" size="1.778459375" layer="95" rot="R270"/>
<attribute name="VALUE" x="38.1" y="17.783" size="1.77851875" layer="96"/>
</instance>
<instance part="GND14" gate="1" x="208.28" y="-109.22" smashed="yes">
<attribute name="VALUE" x="205.74" y="-111.76" size="1.778" layer="96"/>
</instance>
<instance part="K1" gate="1" x="228.6" y="-60.96" smashed="yes">
<attribute name="VALUE" x="229.87" y="-58.039" size="1.778" layer="96"/>
<attribute name="PART" x="229.87" y="-55.88" size="1.778" layer="95"/>
</instance>
<instance part="K1" gate="U" x="251.46" y="-63.5" smashed="yes">
<attribute name="PART" x="254" y="-63.5" size="1.778" layer="95"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="VCC" class="0">
<segment>
<pinref part="U1" gate="A" pin="VDDA"/>
<wire x1="-71.12" y1="132.08" x2="-45.72" y2="132.08" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="132.08" x2="-33.02" y2="132.08" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="132.08" x2="7.62" y2="132.08" width="0.1524" layer="91"/>
<wire x1="7.62" y1="132.08" x2="93.98" y2="132.08" width="0.1524" layer="91"/>
<wire x1="93.98" y1="132.08" x2="121.92" y2="132.08" width="0.1524" layer="91"/>
<wire x1="121.92" y1="106.68" x2="121.92" y2="132.08" width="0.1524" layer="91"/>
<pinref part="SUPPLY1" gate="G$1" pin="VCC"/>
<pinref part="U5" gate="G$1" pin="VCC"/>
<wire x1="5.08" y1="99.06" x2="7.62" y2="99.06" width="0.1524" layer="91"/>
<wire x1="7.62" y1="99.06" x2="7.62" y2="132.08" width="0.1524" layer="91"/>
<junction x="7.62" y="132.08"/>
<pinref part="U4" gate="A" pin="+VS"/>
<wire x1="-33.02" y1="73.66" x2="-33.02" y2="132.08" width="0.1524" layer="91"/>
<junction x="-33.02" y="132.08"/>
<wire x1="-10.16" y1="17.78" x2="-2.54" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="17.78" x2="-2.54" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="38.1" x2="-2.54" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="17.78" x2="-2.54" y2="0" width="0.1524" layer="91"/>
<junction x="-2.54" y="17.78"/>
<wire x1="-2.54" y1="0" x2="-45.72" y2="0" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="0" x2="-45.72" y2="132.08" width="0.1524" layer="91"/>
<junction x="-45.72" y="132.08"/>
<pinref part="U2" gate="G$1" pin="VCC"/>
<wire x1="93.98" y1="-81.28" x2="93.98" y2="132.08" width="0.1524" layer="91"/>
<junction x="93.98" y="132.08"/>
<wire x1="114.3" y1="-114.3" x2="307.34" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="307.34" y1="-114.3" x2="307.34" y2="132.08" width="0.1524" layer="91"/>
<junction x="121.92" y="132.08"/>
<pinref part="U3" gate="A" pin="VDD"/>
<wire x1="307.34" y1="132.08" x2="284.48" y2="132.08" width="0.1524" layer="91"/>
<wire x1="284.48" y1="132.08" x2="121.92" y2="132.08" width="0.1524" layer="91"/>
<wire x1="114.3" y1="-114.3" x2="114.3" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="114.3" y1="-68.58" x2="119.38" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="K1" gate="U" pin="S"/>
<wire x1="246.38" y1="-58.42" x2="246.38" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-43.18" x2="284.48" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="284.48" y1="-43.18" x2="284.48" y2="132.08" width="0.1524" layer="91"/>
<junction x="284.48" y="132.08"/>
</segment>
<segment>
<pinref part="SUPPLY2" gate="G$1" pin="VCC"/>
<wire x1="30.48" y1="60.96" x2="43.18" y2="60.96" width="0.1524" layer="91"/>
<wire x1="43.18" y1="60.96" x2="45.72" y2="60.96" width="0.1524" layer="91"/>
<wire x1="43.18" y1="53.34" x2="43.18" y2="60.96" width="0.1524" layer="91"/>
<junction x="43.18" y="60.96"/>
<wire x1="43.18" y1="60.96" x2="63.5" y2="60.96" width="0.1524" layer="91"/>
<wire x1="63.5" y1="60.96" x2="81.28" y2="60.96" width="0.1524" layer="91"/>
<wire x1="63.5" y1="53.34" x2="63.5" y2="60.96" width="0.1524" layer="91"/>
<junction x="63.5" y="60.96"/>
<wire x1="81.28" y1="53.34" x2="81.28" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY3" gate="G$1" pin="VCC"/>
<wire x1="71.12" y1="7.62" x2="71.12" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U4" gate="A" pin="GND"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U5" gate="G$1" pin="GND"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="-10.16" y1="22.86" x2="-7.62" y2="22.86" width="0.1524" layer="91"/>
<pinref part="GND6" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="-10.16" y1="43.18" x2="-7.62" y2="43.18" width="0.1524" layer="91"/>
<pinref part="GND5" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="Q1" gate="G$1" pin="S"/>
<pinref part="GND7" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="Q2" gate="G$1" pin="S"/>
<pinref part="GND8" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="Q3" gate="G$1" pin="S"/>
<pinref part="GND9" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="Q4" gate="G$1" pin="S"/>
<pinref part="GND10" gate="1" pin="GND"/>
<wire x1="71.12" y1="-15.24" x2="76.2" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-15.24" x2="76.2" y2="-81.28" width="0.1524" layer="91"/>
<junction x="71.12" y="-15.24"/>
<pinref part="U2" gate="G$1" pin="GND"/>
<wire x1="76.2" y1="-81.28" x2="86.36" y2="-81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U3" gate="A" pin="VSS"/>
<pinref part="GND12" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="220.98" y1="-93.98" x2="208.28" y2="-93.98" width="0.1524" layer="91"/>
<pinref part="GND14" gate="1" pin="GND"/>
<pinref part="IC1" gate="L298" pin="GND"/>
<wire x1="208.28" y1="-93.98" x2="208.28" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-33.02" x2="208.28" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="208.28" y1="-33.02" x2="208.28" y2="-78.74" width="0.1524" layer="91"/>
<pinref part="K1" gate="1" pin="2"/>
<wire x1="208.28" y1="-78.74" x2="208.28" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-66.04" x2="228.6" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-78.74" x2="208.28" y2="-78.74" width="0.1524" layer="91"/>
<junction x="208.28" y="-78.74"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U1" gate="A" pin="PA0-WKUP"/>
<wire x1="20.32" y1="83.82" x2="121.92" y2="83.82" width="0.1524" layer="91"/>
<pinref part="U5" gate="G$1" pin="IO"/>
<wire x1="5.08" y1="93.98" x2="20.32" y2="93.98" width="0.1524" layer="91"/>
<wire x1="20.32" y1="93.98" x2="20.32" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U1" gate="A" pin="PA4"/>
<wire x1="17.78" y1="73.66" x2="121.92" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U4" gate="A" pin="VOUT"/>
<wire x1="2.54" y1="71.12" x2="17.78" y2="71.12" width="0.1524" layer="91"/>
<wire x1="17.78" y1="71.12" x2="17.78" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U1" gate="A" pin="PA6"/>
<wire x1="25.4" y1="68.58" x2="121.92" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="10.16" x2="25.4" y2="10.16" width="0.1524" layer="91"/>
<wire x1="25.4" y1="10.16" x2="25.4" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="Q1" gate="G$1" pin="G"/>
<wire x1="33.02" y1="40.64" x2="33.02" y2="30.48" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PB0"/>
<wire x1="33.02" y1="40.64" x2="121.92" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="Q1" gate="G$1" pin="D"/>
<wire x1="43.18" y1="43.18" x2="43.18" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="Q2" gate="G$1" pin="D"/>
<wire x1="63.5" y1="43.18" x2="63.5" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="Q3" gate="G$1" pin="D"/>
<wire x1="81.28" y1="43.18" x2="81.28" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="Q2" gate="G$1" pin="G"/>
<wire x1="53.34" y1="30.48" x2="53.34" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-111.76" x2="304.8" y2="-111.76" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PC5"/>
<wire x1="304.8" y1="-111.76" x2="304.8" y2="96.52" width="0.1524" layer="91"/>
<wire x1="304.8" y1="96.52" x2="182.88" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="Q3" gate="G$1" pin="G"/>
<pinref part="U1" gate="A" pin="PB1"/>
<wire x1="71.12" y1="30.48" x2="71.12" y2="38.1" width="0.1524" layer="91"/>
<wire x1="71.12" y1="38.1" x2="121.92" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="Q4" gate="G$1" pin="D"/>
<wire x1="71.12" y1="-2.54" x2="71.12" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="Q4" gate="G$1" pin="G"/>
<wire x1="60.96" y1="-15.24" x2="60.96" y2="12.7" width="0.1524" layer="91"/>
<wire x1="60.96" y1="12.7" x2="96.52" y2="12.7" width="0.1524" layer="91"/>
<wire x1="96.52" y1="12.7" x2="96.52" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PB2"/>
<wire x1="96.52" y1="35.56" x2="121.92" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="ECHO"/>
<pinref part="U1" gate="A" pin="PA8"/>
<wire x1="88.9" y1="-81.28" x2="88.9" y2="63.5" width="0.1524" layer="91"/>
<wire x1="88.9" y1="63.5" x2="121.92" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="TRIG"/>
<pinref part="U1" gate="A" pin="PA9"/>
<wire x1="91.44" y1="-81.28" x2="91.44" y2="60.96" width="0.1524" layer="91"/>
<wire x1="91.44" y1="60.96" x2="121.92" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U3" gate="A" pin="SCL"/>
<wire x1="119.38" y1="-83.82" x2="101.6" y2="-83.82" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PB6"/>
<wire x1="101.6" y1="-83.82" x2="101.6" y2="25.4" width="0.1524" layer="91"/>
<wire x1="101.6" y1="25.4" x2="121.92" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="U3" gate="A" pin="SDA"/>
<wire x1="154.94" y1="-68.58" x2="154.94" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="154.94" y1="-30.48" x2="104.14" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-30.48" x2="104.14" y2="22.86" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PB7"/>
<wire x1="104.14" y1="22.86" x2="121.92" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="U1" gate="A" pin="PC9"/>
<wire x1="182.88" y1="86.36" x2="203.2" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U7" gate="A" pin="R1"/>
<wire x1="203.2" y1="86.36" x2="203.2" y2="30.48" width="0.1524" layer="91"/>
<wire x1="203.2" y1="30.48" x2="220.98" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U1" gate="A" pin="PC8"/>
<wire x1="182.88" y1="88.9" x2="193.04" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U7" gate="A" pin="R2"/>
<wire x1="193.04" y1="88.9" x2="193.04" y2="27.94" width="0.1524" layer="91"/>
<wire x1="193.04" y1="27.94" x2="220.98" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U1" gate="A" pin="PC7"/>
<wire x1="182.88" y1="91.44" x2="190.5" y2="91.44" width="0.1524" layer="91"/>
<wire x1="190.5" y1="91.44" x2="190.5" y2="25.4" width="0.1524" layer="91"/>
<pinref part="U7" gate="A" pin="R3"/>
<wire x1="190.5" y1="25.4" x2="220.98" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="U1" gate="A" pin="PC6"/>
<wire x1="182.88" y1="93.98" x2="185.42" y2="93.98" width="0.1524" layer="91"/>
<wire x1="185.42" y1="93.98" x2="185.42" y2="22.86" width="0.1524" layer="91"/>
<pinref part="U7" gate="A" pin="R4"/>
<wire x1="185.42" y1="22.86" x2="220.98" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="U1" gate="A" pin="PA11"/>
<wire x1="121.92" y1="55.88" x2="86.36" y2="55.88" width="0.1524" layer="91"/>
<wire x1="86.36" y1="55.88" x2="86.36" y2="-60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<wire x1="274.32" y1="-93.98" x2="259.08" y2="-93.98" width="0.1524" layer="91"/>
<pinref part="K1" gate="U" pin="P"/>
<wire x1="251.46" y1="-66.04" x2="251.46" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-83.82" x2="274.32" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-83.82" x2="274.32" y2="-93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U1" gate="A" pin="PA5"/>
<wire x1="121.92" y1="71.12" x2="20.32" y2="71.12" width="0.1524" layer="91"/>
<wire x1="20.32" y1="71.12" x2="20.32" y2="30.48" width="0.1524" layer="91"/>
<wire x1="20.32" y1="30.48" x2="-10.16" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U1" gate="A" pin="PA12"/>
<wire x1="121.92" y1="53.34" x2="99.06" y2="53.34" width="0.1524" layer="91"/>
<pinref part="K1" gate="1" pin="1"/>
<wire x1="99.06" y1="53.34" x2="99.06" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-55.88" x2="228.6" y2="-55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U1" gate="A" pin="PC4"/>
<wire x1="261.62" y1="99.06" x2="182.88" y2="99.06" width="0.1524" layer="91"/>
<pinref part="U7" gate="A" pin="C1"/>
<wire x1="261.62" y1="99.06" x2="261.62" y2="50.8" width="0.1524" layer="91"/>
<wire x1="261.62" y1="50.8" x2="256.54" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="U7" gate="A" pin="C2"/>
<wire x1="256.54" y1="48.26" x2="266.7" y2="48.26" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PC1"/>
<wire x1="266.7" y1="48.26" x2="266.7" y2="106.68" width="0.1524" layer="91"/>
<wire x1="266.7" y1="106.68" x2="182.88" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="U7" gate="A" pin="C3"/>
<wire x1="256.54" y1="45.72" x2="274.32" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PC3"/>
<wire x1="274.32" y1="45.72" x2="274.32" y2="101.6" width="0.1524" layer="91"/>
<wire x1="274.32" y1="101.6" x2="182.88" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="U7" gate="A" pin="C4"/>
<wire x1="256.54" y1="43.18" x2="279.4" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PC2"/>
<wire x1="279.4" y1="43.18" x2="279.4" y2="104.14" width="0.1524" layer="91"/>
<wire x1="279.4" y1="104.14" x2="182.88" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
