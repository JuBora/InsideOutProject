package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class memberEnrollEndServlet
 */
@WebServlet("/memberEnrollEnd")
public class MemberEnrollEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberEnrollEndServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//1. paremeter handling
		String memberId = request.getParameter("memberId");
		String password = request.getParameter("password");
		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		String email = request.getParameter("email");
		String emailAdd = request.getParameter("emailAdd");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String[] genreArr = request.getParameterValues("genre");
		String genre = "";
		for(int i=0; i<genreArr.length; i++) {
			if(i != genreArr.length-1) genre += genreArr[i]+",";
			else genre += genreArr[i];
		}
		
		Member m = new Member();
		m.setMemberId(memberId);
		m.setPassword(password);
		m.setMemberName(lastName+firstName);
		m.setEmail(email+"@"+emailAdd);
		m.setPhone(phone1+"-"+phone2+"-"+phone3);
		m.setGenre(genre);
		
		System.out.println("m@memberEnrollEndServlet="+m);
		
		//2. business logic
		int result = new MemberService().insertMember(m);
		
		//3. view
		String msg = "";
		String loc = "/";
		
		if(result>0) msg = "회원가입 성공!";
		else msg = "회원가입 실패!";
		
		request.setAttribute("msg", msg);
		request.setAttribute("loc", loc);
		
		request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
