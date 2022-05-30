({
	doInit : function(component, event, helper) {
		// alert('Load medium component');
	},
    // handleBubbleEvent : function(component, event, helper) {	
    //     var message = event.getParam("message");
    //     alert("Message from Smallest Component (inside medium component): " + message);
	// },
    handleCaptureEvent : function(component, event, helper) {	
        var message = event.getParam("message");
        alert("Message from Smallest Component (inside medium component): " + message);    
	},
    handleTestAuraMethod : function(component, event, helper) {
        var childComponent = component.find("SmallestCmpId");
        if(childComponent){
            let messageStr = 'Only for test purpose';
            let messageObj = { firstName:"John", lastName:"Doe", age:50, eyeColor:"blue" };
            var result = childComponent.validationMethod(messageStr, messageObj);  
            alert("Message from Aura Method: " + result.firstName);
        }
	},
})
