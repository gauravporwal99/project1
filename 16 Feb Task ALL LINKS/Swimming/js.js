function validate(){
    var FName = document.getElementById("FirstName").value;
    var FirstName = /^[a-zA-Z]*$/;
    var SName = document.getElementById("SecondName").value;
    var SecondName = /^[a-zA-Z]*$/;
    var PhoneNum = document.getElementById("PhoneNo").value;
    var regPhone=/^\d{10}$/;
  
    var valid=true;


        if (FName == ""||FirstName.test(FName)==false) {
           alert("Please enter a valid First Name address.");
           valid =false;
        }
       if (SName == ""|| !SecondName.test(SName)) {
           alert("Please enter your Second name properly.");
           valid =false;
        }
        if (PhoneNo == "" || !regPhone.test(PhoneNum)) {
            alert("Please enter valid phone number.");
            valid =false;
            }
        if(valid){
                alert("Congratulations your form is filled");
            }
}