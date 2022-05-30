public class AnimalLocator {
    public static String getAnimalNameById(Integer inputId){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + inputId);
        request.setMethod('GET');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        HttpResponse response = http.send(request);        
		Map<String, Object> mapBody = (Map<String, Object>)JSON.deserializeUntyped(response.getBody());
		return (String)((Map<String, Object>)mapBody.get('animal')).get('name');
    }
}