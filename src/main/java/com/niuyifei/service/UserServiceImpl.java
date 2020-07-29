package com.niuyifei.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.niuyifei.bean.User;
import com.niuyifei.mapper.UserMapper;
@Service
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserMapper userMapper;
	
	public List<User> selUser() {
		// TODO Auto-generated method stub
		return userMapper.selUser();
	}

}
