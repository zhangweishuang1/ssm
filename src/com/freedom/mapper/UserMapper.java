package com.freedom.mapper;

import com.freedom.pojo.User;

import java.util.List;

public interface UserMapper {
    void add(User user);
    void delete(int id);
    void update(User user);
    User get(int id);
    List<User> list();
}
