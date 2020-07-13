package controllers;

import java.util.ArrayList;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.*;

import com.google.gson.Gson;

public class AddCategoryAServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
		ArrayList<Category> list=Category.collectCategory();
		//System.out.println(list+"````````");

		Gson gson = new Gson();
		String json=gson.toJson(list);
		response.getWriter().write(json);
	}
}