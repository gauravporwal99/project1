$(document).ready(function(){
    var currValue = "" ;
    $("button").click(function(){
        var currButton = $(this).html();
        if(currButton == "="){
            if(currValue != ""){   
                try{
                    currValue = eval(currValue);
                    document.getElementById("display").value = currValue;
                }
                catch{
                    document.getElementById("display").value = "Undefined" ;
                    currValue = "";
                }
            }
        }
        else if(currButton == "C") {
            currValue = "";
            document.getElementById("display").value = "0";
        }
        else { 
            if(currValue == "0" || ((currValue == "" && currButton != "-") && event.target.className == "operator"))
            {     
                currValue =""; 
            }
            else{
                currValue += currButton;
                document.getElementById("display").value = currValue;
            }
        }
    })
});