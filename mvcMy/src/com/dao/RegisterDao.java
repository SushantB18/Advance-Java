package com.dao;
import com.dto.User;

public interface RegisterDao {
    public int InsertUser(User user);
    boolean login(User user);
}
