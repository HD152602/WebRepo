package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet(description = "ù��° ������", urlPatterns = { "/hello" })
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public HelloServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String name = request.getParameter("name");

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");

		 PrintWriter out = response.getWriter();
		 out.println("<!DOCTYPE html>");
		 out.println("<html>");
		 out.println("<head>");
		 out.println("<title>yeah!</title>");
		 out.println("</head>");
		 out.println("<body>");
		 out.println("<h1>Hello Servlet! �ݰ��ݰ�</h1>");
		 out.println("<h2>id : "+id+" / name : "+name+"</h2>");
		 out.println("</body></html>");
		 out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost() ȣ���");
		doGet(request, response);
	}
	@Override
	public void init() throws ServletException {
		System.out.println("init() ȣ��");
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("service() ȣ��");
		super.service(req, resp);
		
	}
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("destroy() ȣ��");
	}

}