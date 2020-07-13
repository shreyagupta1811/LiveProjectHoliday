package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.*;

public class SaveMenuServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		HttpSession session=request.getSession();
		
		//Integer ownerId=(Integer)session.getAttribute("ownerId");
		
		Integer ownerId=(Integer)session.getAttribute("ownerId");
		System.out.println(ownerId+"insms22222222222");
		System.out.println(session.getId());
		String [] prices = request.getParameterValues("price");
		String [] items = request.getParameterValues("item");
		String [] total=request.getParameterValues("total");
		System.out.println(prices.length);
		System.out.println(items.length);
		System.out.println(total.length);
		for(String tot:total){
			System.out.println("tot"+tot);
		}
		for(String price:prices){
			System.out.println("p:"+price);
		}
		for(String item:items){
			System.out.println("i:"+item);
		}
		for(int j=0;j<items.length;j++){
			for(int i=0;i<total.length;i++){
				if(total[i].equals(items[j])){
					RestRegister restRegister = new RestRegister(ownerId);
					Food food = new Food(items[0]);
					Category category=food.getCategoryId();
					RestCategory restCategory=new RestCategory(restRegister,category);
					RestFood restFood= new RestFood(restCategory,new Food(items[j]),Integer.parseInt(prices[i]));
					restFood.saveFood();
					break;
				}
			}
		}
		request.getRequestDispatcher("my_rest_home.jsp").forward(request,response);
	}
}