package demo1;

public class ExceptionTest2 {
    public static void main(String[] args) {
        try{
            go();
        } catch(NullPointerException e){
            System.out.println(e.toString());
        } catch(Exception e){
            e.printStackTrace();
        }
    }

    public static void go()throws Exception{
        throw new Exception("this is a exception!");
    }
}
