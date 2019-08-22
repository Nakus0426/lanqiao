import com.lanqiao.guimei.dao.ProductDao;
import com.lanqiao.guimei.dao.VendorDao;
import com.lanqiao.guimei.vo.Product;
import org.junit.Test;

public class DbTest {
    ProductDao productDao=new ProductDao();
    VendorDao vendorDao = new VendorDao();
    @Test
    public void dbTest(){

        System.out.println(productDao.findForPage());
    }
    @Test
    public void deleteTest(){
        System.out.println(productDao.delete("B91D4F305EAE400686A9DFE4E2784ADB"));
    }
    @Test
    public  void update(){

        Product product = new Product("6AD44B686C2947B09E477879B5C0C6BF",1026,21,21,"飞鸟沙发",2599.99,"三人座","耸立实木，超大净坐宽，构建空间建筑轮廓","product1.jpg","绿色");
        System.out.println(productDao.update(product));
    }

    @Test
    public void insertTest(){
        Product product = new Product(1030,21,21,"xxxx",2599.99,"三人座","沙发一个","product1.jpg","绿色");
        System.out.println(productDao.insert(product));

    }

    @Test
    public void findByPk(){
        System.out.println(productDao.findByPk("8209C34154764F5284D537493D01C7F8"));
    }


    @Test
    public void onSale(){
        System.out.println(productDao.onSale("087784DF9CEC4A5889D1C83E515DB1D6"));
    }

    @Test
    public void fakeDelet(){
        System.out.println(productDao.fakeDelete("087784DF9CEC4A5889D1C83E515DB1D6"));
    }
@Test
    public void yb(){
    System.out.println(vendorDao.load());
}


}



