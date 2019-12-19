package common.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import common.wrapper.EncryptWrapper;

/**
 * Servlet Filter implementation class EncryptFilter
 */
@WebFilter(
		servletNames = { 
				"MemberEnrollEndServlet", 
				"MemberLoginCheckServlet", 
				"MemberUpdateServlet",
				"UpdatePasswordEndServlet"
		})
public class EncryptFilter implements Filter {

    /**
     * Default constructor. 
     */
    public EncryptFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//암호화wrapper객체 생성
		HttpServletRequest httpReq = (HttpServletRequest)request;
//		EncryptWrapper encWrapper = new EncryptWrapper(httpReq);
		ServletRequest encWrapper = new EncryptWrapper(httpReq);
		System.out.println("암호화wrapper적용됨@EncryptFilter");
		
		// pass the request along the filter chain
		chain.doFilter(encWrapper, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
