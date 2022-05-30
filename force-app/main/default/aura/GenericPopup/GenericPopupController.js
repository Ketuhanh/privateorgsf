({
    closeModel : function(component, event, helper) {
        var compEvent = component.getEvent("showHideModalEvent");
        compEvent.setParams({"open" : false, "message" : "User selected Cancel button" });
        compEvent.fire();
    },
    submitDetails : function(component, event, helper) {
        var compEvent = component.getEvent("showHideModalEvent");
        compEvent.setParams({"open" : false, "message" : "User selected OK button" });
        compEvent.fire();
    },
})