package com.lanqiao.cdstore.dao;

import com.lanqiao.dao.CdDiscDao;
import org.junit.Test;
import org.junit.Before;
import org.junit.After;

/**
 * CdDiscDao Tester.
 *
 * @author <Authors name>
 * @since <pre>���� 2, 2019</pre>
 * @version 1.0
 */
public class CdDiscDaoTest {

    CdDiscDao dao = null;

    @Before
    public void before() throws Exception {
        this.dao = new CdDiscDao();
    }

    @After
    public void after() throws Exception {
    }

    /**
     *
     * Method: list()
     *
     */
    @Test
    public void testList() throws Exception {
        //TODO: Test goes here...

        System.out.println(this.dao.list());
    }


} 
