package controllers;

import java.util.ArrayList;
import java.sql.*;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.*;

import com.google.gson.Gson;

public class GetItemServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
		String category = request.getParameter("category");
		Category cat =new Category(category);
		ArrayList<Food> list=Food.collectFood(cat);
		//System.out.println(list+"````````");

		Gson gson = new Gson();
		String json=gson.toJson(list);
		response.getWriter().write(json);
	}
}