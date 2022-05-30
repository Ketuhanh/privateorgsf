public class StringArrayTest {
    public static List<String> generateStringArray(Integer numberTotal){
        List<String> listResult = new List<String>();
        if(numberTotal >= 0){
            for(Integer index = 0 ; index < numberTotal ; index++){
                listResult.add('Test '+index);
            }            
        }
        return listResult;
	}
}