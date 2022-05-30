@isTest public class AnimalLocatorMock implements HttpCalloutMock{
    private String type;
    public AnimalLocatorMock(String type){
        this.type = type;
    }    
    
	public HTTPResponse respond(HTTPRequest request) {  
		HttpResponse response = new HttpResponse();    
        response.setHeader('Content-Type', 'application/json');  
        response.setStatusCode(200);
        if(this.type.contains('herokuapp')){
            response.setBody('{"animal":{"id":2,"name":"bear","eats":"berries, campers, adam seligman","says":"yum yum"}}');
        }else{
            response.setBody('{"animal":{"id":2,"name":"lion","eats":"berries, campers, adam seligman","says":"yum yum"}}');          
        }
        return response;
    }
}