package com.book.servlet.borrow;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.entity.Book;
import com.book.entity.Borrow;
import com.book.service.ServiceFactory;
import com.book.util.StringUtils;

import cn.hutool.json.JSONObject;

/**
 * Servlet implementation class BookServlet
 */
public class QueryBorrowByISBNServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String book_ISBN = request.getParameter("ISBN");

		JSONObject json = new JSONObject();
		if (StringUtils.validateEmpty(book_ISBN)) {

			Borrow borrow = ServiceFactory.getIBorrowServiceInstance().selectByISBN(book_ISBN);
			json.put("data", borrow);
			json.put("code", "000000");
			json.put("message", "请求成功");
			response.getWriter().println(json);

		} else {
			json.put("code", "111111");
			json.put("message", "缺少参数！");
			response.getWriter().println(json);
		}
	}

}
