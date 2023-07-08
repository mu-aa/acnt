package xyz.itwill.exception;
//
public class MemberNotFoundException extends Exception {
	private static final long serialVersionUID = 1L;
	//
	public MemberNotFoundException() {//생성자
		// TODO Auto-generated constructor stub
	}
	public MemberNotFoundException(String message) {
		super(message);
	}
	
}