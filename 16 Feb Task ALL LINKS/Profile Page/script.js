$(document).ready(function(){
    // Prepare the preview for profile picture
        $("#wizard-picture").change(function(){
            readURL(this);
        });
    });
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
    
            reader.onload = function (e) {
                $('#wizardPicturePreview').attr('src', e.target.result).fadeIn('slow');
            }
            reader.readAsDataURL(input.files[0]);
        }
    }

function edit(){  
   
document.getElementById("name1").readOnly=false;
document.getElementById("disname1").readOnly=false;
document.getElementById("email1").readOnly=false;
document.getElementById("mobile1").readOnly=false;
document.getElementById("Uid1").readOnly=false;
document.getElementById("desig1").readOnly=false;
document.getElementById("addr1").readOnly=false;
}

function change(){
    
document.getElementById("name1").readOnly=true;
document.getElementById("disname1").readOnly=true;
document.getElementById("email1").readOnly=true;
document.getElementById("mobile1").readOnly=true;
document.getElementById("Uid1").readOnly=true;
document.getElementById("desig1").readOnly=true;
document.getElementById("addr1").readOnly=true;
document.getElementById("dname1").innerHTML=document.getElementById("disname1").value;  
document.getElementById("daddr1").innerHTML=document.getElementById("addr1").value;
alert("Successfully Changed")
}
    document.getElementById("name1").value=document.getElementById("name1").value;
    document.getElementById("disname1").value=document.getElementById("disname1").value;
    
    document.getElementById("email1").value=document.getElementById("email1").value;
    document.getElementById("mobile1").value=document.getElementById("mobile1").value;
    document.getElementById("Uid1").value=document.getElementById("Uid1").value;
    document.getElementById("desig1").value=document.getElementById("desig1").value;
    document.getElementById("addr1").value=document.getElementById("addr1").value;
    
