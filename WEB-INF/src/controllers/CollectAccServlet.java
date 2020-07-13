package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

import models.*;
import java.util.ArrayList;

import com.google.gson.Gson;

public class CollectAccServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
		String acc = request.getParameter("acc");
		
		ArrayList<Accomodation> accs= Accomodation.collectAcc(acc);

		Gson gson = new Gson();
		String jsonStr = gson.toJson(accs);
		response.getWriter().write(jsonStr);
	}
}