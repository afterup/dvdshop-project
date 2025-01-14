package com.movie.control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.movie.model.dao.AdminDAO;
import com.movie.model.dao.MovieDAO;
import com.movie.model.vo.MovieInfo;

public class AdminServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String action = request.getParameter("action");
		System.out.println("action>"+action);
		
		AdminDAO dao = new AdminDAO();
		
		if(action==null) { //Admin 관리페이지. 영화
			try {
				List<MovieInfo> movieList = dao.selectAll();
				request.setAttribute("movieList", movieList);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("/view/manager/admin.jsp").forward(request,response);
		}else if(action.equals("update")) {//영화 수정페이지
			try {
				int no = Integer.parseInt(request.getParameter("no"));
				System.out.println(no);
				List<MovieInfo> movieInfo = dao.selectInfo(no);
				request.setAttribute("movie", movieInfo.get(0));
				request.getRequestDispatcher("/view/manager/admin_update.jsp").forward(request,response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else if(action.equals("updateAction")) {//업데이트
			int movieid = Integer.parseInt(request.getParameter("no"));
			String movieNm = request.getParameter("movienm");
			String genreNm = request.getParameter("genrenm");
			String supervison = request.getParameter("supervison");
			String watchGradenm = request.getParameter("watchgradenm");
			String movieDesc = request.getParameter("moviedesc");
			int dvdamount = Integer.parseInt(request.getParameter("dvdamount"));
			
			MovieInfo movie = new MovieInfo(movieid,movieNm,null,movieDesc,genreNm,supervison,watchGradenm,dvdamount);
			System.out.println(movie);

			try {
				if(dao.updateMovie(movie)==1) {
					System.out.println("수정완료");
				}else {
					System.out.println("수정실패");
				}
				response.sendRedirect("admin");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else if(action.equals("delete")) {
			int no = Integer.parseInt(request.getParameter("no"));
			System.out.println(no);
			try {
				if(dao.deleteMovie(no)==1) {
					System.out.println("삭제");
					
				}else {
					System.out.println("삭제실패");
				}
				response.sendRedirect("admin");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else if(action.equals("insert")) {
			request.getRequestDispatcher("/view/manager/admin_insert.jsp").forward(request,response);
			
		}else if(action.equals("insertAction")) {
			String movieNm = request.getParameter("movienm");
			String genreNm = request.getParameter("genrenm");
			String supervison = request.getParameter("supervison");
			String watchGradenm = request.getParameter("watchgradenm");
			String movieDesc = request.getParameter("moviedesc");
			int dvdamount = Integer.parseInt(request.getParameter("dvdamount"));
			
			MovieInfo movie = new MovieInfo(0,movieNm,null,movieDesc,genreNm,supervison,watchGradenm,dvdamount);
			try {
				dao.insertMovie(movie);
				response.sendRedirect("admin");
			} catch (SQLException e) {
				e.printStackTrace();
			}
				
		}else if(action.equals("user")) {//회원, 대여관리
			
			request.getRequestDispatcher("/view/manager/admin_user.jsp").forward(request,response);
		}
		
		
	}
}
