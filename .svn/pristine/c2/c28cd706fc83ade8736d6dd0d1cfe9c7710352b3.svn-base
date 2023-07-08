package xyz.itwill.exception;
//
import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class LoginAuthFailException extends Exception {
	private static final long serialVersionUID = 1L;
	//
	private String userid;
	//
	public LoginAuthFailException() {
		// TODO Auto-generated constructor stub
	}
	public LoginAuthFailException(String message, String userid) {
		super(message);
		this.userid=userid;
	}
}