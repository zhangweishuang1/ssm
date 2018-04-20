package com.freedom.service.impl;

import com.freedom.mapper.UserMapper;
import com.freedom.pojo.User;
import com.freedom.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;
    @Override
    public void add(User user) {
        userMapper.add(user);
    }

    @Override
    public void delete(int id) {
        userMapper.delete(id);
    }

    @Override
    public void update(User user) {
        userMapper.update(user);
    }

    @Override
    public User get(int id) {
        return userMapper.get(id);
    }

    @Override
    public List<User> list() {
        return userMapper.list();
    }
}
