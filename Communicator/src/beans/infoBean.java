package beans;

import java.time.LocalTime;

public class infoBean {
	private String nick;
	private String text;
	
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public LocalTime getCurrentTime() {
		return LocalTime.now();
	}
	

}
