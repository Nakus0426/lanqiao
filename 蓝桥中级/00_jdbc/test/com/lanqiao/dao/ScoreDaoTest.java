package com.lanqiao.dao;

import com.lanqiao.entity.Score;
import com.lanqiao.entity.ScoreDetail;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class ScoreDaoTest {
    ScoreDao scoreDao = null;

    @Before
    public void setUp() throws Exception {
        scoreDao=new ScoreDao();
    }

    @Test
    public void save() {
        boolean save = this.scoreDao.save(new Score("2", 1, 60));
        assertTrue("fail to save",save);
    }

    @Test
    public void select() {
        List<ScoreDetail> select = this.scoreDao.select(1);
        for (ScoreDetail detail : select) {
            System.out.println(detail);
        }
    }
}