package com.freedom.util;

import com.freedom.mapper.UserMapper;
import com.freedom.pojo.User;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class Test {
    @Autowired
    private UserMapper userMapper;

    @org.junit.Test
    public void add() {
        for (int i = 1; i < 101; i++) {
            User user = new User();
            user.setName("测试" + i);
            user.setAge(i);
            userMapper.add(user);
        }
    }
}
