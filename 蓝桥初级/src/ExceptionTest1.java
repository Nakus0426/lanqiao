package demo1;

public class ExceptionTest1 {
    public static void main(String args[]){
        try{
            int n=7;
            int m=0;
            int div=n/m;
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            System.out.println("test is over!");
        }
    }
}
