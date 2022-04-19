package com.springlec.springAscent.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class AControllerUser {
	
	@Autowired
	private SqlSession sqlSession;
	
}
