package com.service;

import com.dto.*;

public interface UserService {
    int register(User user);
    boolean login(User user);
}
