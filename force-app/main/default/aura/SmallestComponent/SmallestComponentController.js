({
    doInit : function(component, event, helper) {
		// alert('Load smallest component');
    },
    handleBubbleFire :  function(component, event, helper) {
        var compEvent = component.getEvent("demoBubbleEvent");
        compEvent.setParams({ "message" : "Fire from Smallest Component for demo bubble event" });
        compEvent.fire();
    }, 
    handleCaptureFire :  function(component, event, helper) {	  
        var compEvent = component.getEvent("demoCaptureEvent");
        compEvent.setParams({ "message" : "Fire from Smallest Component for demo capture event" });
        compEvent.fire();
    },
    handleValidate :  function(component, event, helper) {
        var params = event.getParam('arguments');
        if (params) {
            let newMessage = params.privateMessage;
            var newObject = params.privateObject;
            console.log('@@@@@ newMessage ==== '+newMessage);
            console.log('@@@@@ newObject ==== '+JSON.stringify(newObject));
            newObject.firstName = 'Ke Tu Hanh';
            newObject.lastName = '';
            return newObject;
        }
    },
})