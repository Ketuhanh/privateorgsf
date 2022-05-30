({
	doInit : function(component, event, helper) {
		// alert('Load biggest component');
        component.set("v.isOpenMiddle", true);
	},
    handleBubbleEvent : function(component, event, helper) {	
        var message = event.getParam("message");
        alert("Message from Smallest Component (inside biggest component): " + message);    
	},
    handleCaptureEvent : function(component, event, helper) {	
        var message = event.getParam("message");
        alert("Message from Smallest Component (inside biggest component): " + message);    
	},
    handleChangeMessage : function(component, event, helper) {
        component.set("v.count", (parseInt(component.get("v.count") + 1)));
        component.set("v.messageToChild", "Count number for now equal ===== " + component.get("v.count"));
        
    },
})