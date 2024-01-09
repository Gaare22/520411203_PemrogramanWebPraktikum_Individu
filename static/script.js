let eyeicon = document.getElementById("eyeicon")
let eyeicon2 = document.getElementById("eyeicon2")
let password = document.getElementById("password") 
let password2 = document.getElementById("password2") 

eyeicon.onclick = function(){
  if(password.type == "password"){
    password.type = "text";
  }else{
    password.type = "password";
  }
}

eyeicon2.onclick = function(){
  if(password2.type == "password"){
    password2.type = "text";
  }else{
    password2.type = "password";
  }
}