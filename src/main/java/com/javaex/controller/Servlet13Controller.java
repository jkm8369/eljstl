package com.javaex.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaex.vo.UserVo;

@WebServlet("/13")
public class Servlet13Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("13");
		
		List<UserVo> userList = new ArrayList<UserVo>();
		
		for(int i=0 ; i<20 ; i++) {
			UserVo vo = new UserVo(i, i+"번 회원", i+"@gmail.com", "1234", "male");
			userList.add(vo);
		}
		
		System.out.println(userList);
		
		
		request.setAttribute("userList", userList);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/13.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
