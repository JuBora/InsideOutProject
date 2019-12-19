package common.wrapper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import common.util.Utils;

public class EncryptWrapper extends HttpServletRequestWrapper {

	//HttpServletRequestWrapper는 기본생성자가 없다.
	//부모생성자는 상속되지 않으므로, 반드시 작성해야한다.
	public EncryptWrapper(HttpServletRequest request) {
		super(request);
	}
	
	@Override
	public String getParameter(String key) {
		String value = "";
		
		//password속성인 경우, 암호화처리
		if("password".equals(key) || "password_new".equals(key)) {
			System.out.println("암호화 전 password=["+super.getParameter(key)+"]");
			
			value = Utils.getSha512(super.getParameter(key));
			System.out.println("암호화 후 password=["+value+"]");
		}
		else {
			value = super.getParameter(key);
		}
		
		return value;
	}

}
