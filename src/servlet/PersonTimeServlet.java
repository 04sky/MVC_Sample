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
import pojo.Person;


public class PersonTimeServlet extends HttpServlet{
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
		
		Integer beginTime = Integer.parseInt(req.getParameter("beginTime"));
		Integer endTime = Integer.parseInt(req.getParameter("endTime"));
		
		List<PData> list = personDao.selectByTime(beginTime, endTime);
		
		req.setAttribute("datas", list);
		req.getRequestDispatcher("/show.jsp").forward(req, resp);
	}
}
