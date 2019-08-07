package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PersonDao;
import dao.PersonDaoImpl;
import pojo.PData;


public class PersonYearServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	PersonDao personDao = new PersonDaoImpl();
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("utf-8");
		
		Integer beginYear = Integer.parseInt(req.getParameter("beginYear"));
		Integer endYear = Integer.parseInt(req.getParameter("endYear"));
		
		List<PData> list = personDao.selectByBirth(beginYear, endYear);
		
		req.setAttribute("datas", list);
		req.getRequestDispatcher("/show.jsp").forward(req, resp);
	}
	

	
	
}
