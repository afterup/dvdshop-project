package com.movie.control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.movie.model.dao.MovieDAO;
import com.movie.model.vo.MovieInfo;
import com.movie.model.vo.Rental;
import com.movie.model.vo.User;

public class MovieServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		MovieDAO dao;

		// 요청파악
		String action = request.getParameter("action");
		System.out.println(action);

		// 기능수행
		if (action == null || action.equals("home")) { // 메인홈
			request.getRequestDispatcher("/view/common/index.jsp").forward(request, response);
		} else if (action.equals("moviePage")) { // 영화 전체페이지
			try {
				dao = new MovieDAO();
				List<MovieInfo> list;
				list = dao.selectAll();
				request.setAttribute("list", list);
				request.getRequestDispatcher("/view/common/moviePage.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if (action.equals("movieinfo")) {// 영화 개별페이지
			try {
				int no = Integer.parseInt(request.getParameter("no"));

				dao = new MovieDAO();
				List<MovieInfo> list;
				list = dao.selectInfo(no);
				request.setAttribute("movie", list.get(0));
				request.getRequestDispatcher("/view/common/movieInfo.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if (action.equals("login")) { // 로그인화면
			request.getRequestDispatcher("/view/user/login.jsp").forward(request, response);
		} else if (action.equals("join")) {
			request.getRequestDispatcher("/view/user/join.jsp").forward(request, response);
		} else if (action.equals("joinAction")) {// 회원가입

			String id = request.getParameter("id");
			String pass = request.getParameter("pass").toString();
			String passCK = request.getParameter("passCK");
			String email = request.getParameter("email");
			String address = request.getParameter("address");

			try {
				dao = new MovieDAO();
				User user = new User(id, pass, email, address);
				System.out.println(user.toString());
				dao.insertUser(user);
				response.sendRedirect("movie");
			} catch (SQLException e) {
				e.printStackTrace();
			}

		} else if (action.equals("loginAction")) { // 로그인
			String id = request.getParameter("id");
			String pass = request.getParameter("pass");

			try {
				dao = new MovieDAO();
				User user = new User();
				user.setId(id);
				user.setPass(pass);
				if (dao.selectLogin(user) != null) {
					System.out.println("성공");
					request.getSession().setAttribute("id", id);
					response.sendRedirect("movie");
				} else {
					System.out.println("실패");
					request.getRequestDispatcher("/view/user/login_fail.jsp").forward(request, response);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if (action.equals("logout")) { // 로그아웃
			request.getSession().removeAttribute("id");
			response.sendRedirect("movie");
		} else if (action.equals("rental")) { // 대여하기버튼

			dao = new MovieDAO();
			try {
				int movieid = Integer.parseInt(request.getParameter("no"));
				String userid = (String) request.getSession().getAttribute("id");
				System.out.println(userid);

				Rental rental = new Rental();
				rental.setMovieid(movieid);
				rental.setUserid(userid);
				dao.insertRental(rental); // 렌탈 테이블에 추가
				dao.updateRental(movieid);// 영화 DVD수량 -1업데이트
				request.getRequestDispatcher("/view/common/movie_rental.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if (action.equals("mypage")) {// 마이페이지. 대여한 영화 보기
			
			try {
				//리스트 띄우기
				dao = new MovieDAO();
				String id = (String) request.getSession().getAttribute("id");
				List<String> list = dao.selectRental(id);
				System.out.println(list);
				request.setAttribute("rentalList", list);
				
				
				request.getRequestDispatcher("/view/user/mypage.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if(action.equals("return")) {//반납
			
			dao = new MovieDAO();
			int rentid = Integer.parseInt(request.getParameter("rentid"));
			int movieid = Integer.parseInt(request.getParameter("movieid"));
			System.out.println(rentid);
			
			try {
				if(dao.updateReturn(rentid)==1) {
					System.out.println("반납성공");
					dao.returnAmount(movieid);
				}else {
					System.out.println("반납실패");
				}
				response.sendRedirect("movie?action=mypage");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			
		}

	}

}
