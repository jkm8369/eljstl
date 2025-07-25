package com.javaex.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javaex.vo.UserVo;

@WebServlet("/05")
public class Servlet05Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("05");
		//"http://localhost:8080/eljstl/05?name=이효리"
		
		//문제 5번 6번 예제
		
		//세션
		UserVo userVo1 = new UserVo(1, "박명수", "park", "1234", "male");
		HttpSession session = request.getSession(true);
		session.setAttribute("authUser", userVo1);
		
		//리퀘스트의 어트리뷰트
		UserVo userVo2 = new UserVo(2, "정우성", "jung", "7890", "male");
		request.setAttribute("userVO", userVo2);
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/05.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
