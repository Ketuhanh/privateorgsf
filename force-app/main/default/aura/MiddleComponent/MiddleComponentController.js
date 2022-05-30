({
	doInit : function(component, event, helper) {
		// alert('Load middle component');
	},
    handleBubbleEvent : function(component, event, helper) {	
        var message = event.getParam("message");
        alert("Message from Smallest Component (inside middle component): " + message);
        // event.stopPropagation();
	},
    handleCaptureEvent : function(component, event, helper) {	
        var message = event.getParam("message");
        alert("Message from Smallest Component (inside middle component): " + message);    
	},
})