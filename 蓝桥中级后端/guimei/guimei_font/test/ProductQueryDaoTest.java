import com.lanqiao.store.dao.ProductQueryDao;
import com.lanqiao.store.vo.Category;
import com.lanqiao.store.vo.Page;
import com.lanqiao.store.vo.Product;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

/**
 * @Author 天份
 * @Date 2019/8/18 0018 16:06
 * @JDK Version 1.8
 * @Created by IntelliJ IDEA
 */
public class ProductQueryDaoTest {
    ProductQueryDao productQueryDao = null;

    @Before
    public void setUp(){
        this.productQueryDao = new ProductQueryDao();
    }

    @Test
    public void testQuery(){
        Category category = new Category(null,null,"沙发",null);
        Page<Category> page = new Page<>();
        page.setPageSize(Page.R8);
        page.setPageNo(1);
        page.setQueryObject(category);
        page.setTotalRow(this.productQueryDao.queryCountForPageByCate(category));
        List<Product> query = this.productQueryDao.query(page);
        for (Product product : query) {
            System.out.println(product);
        }
    }
}
