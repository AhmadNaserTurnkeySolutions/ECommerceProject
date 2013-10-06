
var status=document.getElementById("status");
var username=document.getElementById("username");


function validateUserName(username)//validate user name
{
var reg1=/^([a-zA-z]){2}[a-zA-z\.\_]{2,11}([a-zA-z]{2})$/;
///^[0-9]{10}/;


if(reg1.test(username)==false)
{
document.getElementById("status").src="images/fbig.png";
}
else if(reg1.test(username)==true)
{
document.getElementById("status").src="images/tbig.png";
}
}//end validate user name


function validatePassword(password)//validate password
{
var reg1=/^([A-Z]){1}[a-zA-Z0-9\.\_]{6,10}([0-9]{1})$/;

if(password.toString()!=document.getElementById("password_again").value.toString()){//set the pass again to empty
document.getElementById("password_again").value="";//set the pass again to empty
document.getElementById("status2b").src="images/fbig.png";//set the pass again to false
}
if(reg1.test(password)==false)
{
document.getElementById("status2").src="images/fbig.png";
}
else if(reg1.test(password)==true)
{
document.getElementById("status2").src="images/tbig.png";
}
}//end validate password2
function validatePassword1(password)//validate password1 org
{
var reg1=/^([A-Z]){1}[a-zA-Z0-9\.\_]{6,10}([0-9]{1})$/;

if(reg1.test(password)==false)
{
document.getElementById("status2").src="images/fbig.png";
}
else if(reg1.test(password)==true)
{
document.getElementById("status2").src="images/tbig.png";
}
}//end validate password1 org

function validatePassword2(pass1,pass2)//validate password
{
var reg1=/^([A-Z]){1}[a-zA-Z0-9\.\_]{6,10}([0-9]{1})$/;
///^[0-9]{10}/;



if(pass2.toString()==pass1.toString())
{
document.getElementById("status2b").src="images/tbig.png";
}
else if(pass2.toString()!=pass1.toString())
{
document.getElementById("status2b").src="images/fbig.png";
}
//document.write(document.getElementById("password").value);
}//end validate password2