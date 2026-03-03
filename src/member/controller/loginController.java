package member.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.service.IMemberService;
import member.service.MemberService;

@WebServlet("/login.do")
public class loginController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public loginController() {
        super();
    }

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/loginForm").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uId = req.getParameter("userId");
		String uPw = req.getParameter("userPw");
		
		Map<String, Object> map = new HashMap();
		
		map.put("uId", uId);
		map.put("uPw", uPw);
		
		IMemberService memberService = MemberService.getInstance();
		String memId = memberService.loginChk(map);
		
		System.out.println(memId);
		
		if(memId != null) {
			HttpSession session = req.getSession(); 
			session.setAttribute("loginCode", memId);
			
			req.getRequestDispatcher("/index.jsp").forward(req, resp);
		} else {
			resp.sendRedirect("loginForm.jsp");
		}
	}
}
