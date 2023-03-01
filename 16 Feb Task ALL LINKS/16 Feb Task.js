$("#selectCards").change(function(){
    getelementfromdropdown()
});

function getelementfromdropdown(){
    var value = selectCards.value;

    switch(value){

        case "--":                 $("#registrationCard").show().removeClass("singleclass");
                                   $("#profileCard").show().removeClass("singleclass");
                                   $("#calculatorCard").show().removeClass("singleclass");
                                   $("#poolCard").show().removeClass("singleclass");
                                   break;

        case "Registration Page":  $("#registrationCard").show().addClass("singleclass"); 
                                   $("#profileCard").hide();
                                   $("#calculatorCard").hide();
                                   $("#poolCard").hide();
                                   break;

        case "Profile page":       $("#registrationCard").hide(); 
                                   $("#profileCard").show().addClass("singleclass");
                                   $("#calculatorCard").hide();
                                   $("#poolCard").hide();
                                   break;

        case "Calculator":         $("#registrationCard").hide(); 
                                   $("#profileCard").hide();
                                   $("#calculatorCard").show().addClass("singleclass");
                                   $("#poolCard").hide();
                                   break;
 
        case "Swimming Pool":      $("#registrationCard").hide(); 
                                   $("#profileCard").hide();
                                   $("#calculatorCard").hide();
                                   $("#poolCard").show().addClass("singleclass");
                                    break;

        default:                   console.log("Choose something");
                                   break;
    }
}

