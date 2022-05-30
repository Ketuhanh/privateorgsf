({
	showMessage : function(component, show, message) {
        this.testMethod();
        component.set("v.isShowMessage", show);
        component.set("v.message", message);
    },
    showToast : function(component, title, message) {
        this.testMethod();
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            "title": title,
            "message": message
        });
        toastEvent.fire();
    },
    testMethod : function(component, event){
        alert('Alert something');
    }
})