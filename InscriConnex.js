var password = document.getElementById("passwd")
    , confirm_password = document.getElementById("passwdVerif");

function validatePassword(){
    if(password.value != confirm_password.value) {
        confirm_password.setCustomValidity("Les mots de passe ne correspondent pas");
    } else {
        confirm_password.setCustomValidity('');
    }
}
console.log(password)

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;