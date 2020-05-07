package project.app.geobuk.vo;

import java.sql.Date;

public class EventVo {
	private int eventnum;
	private String event;
	private String minprice;
	private String maxprice;
	private Date ricecakeup;
	private Date ricecakedown;
	private String notepad;
	private Date regdate;
	private String status;
	
	public EventVo(){}

	public EventVo(int eventnum, String event, String minprice, String maxprice, Date ricecakeup, Date ricecakedown,
			String notepad, Date regdate, String status) {
		super();
		this.eventnum = eventnum;
		this.event = event;
		this.minprice = minprice;
		this.maxprice = maxprice;
		this.ricecakeup = ricecakeup;
		this.ricecakedown = ricecakedown;
		this.notepad = notepad;
		this.regdate = regdate;
		this.status = status;
	}

	public int getEventnum() {
		return eventnum;
	}

	public void setEventnum(int eventnum) {
		this.eventnum = eventnum;
	}

	public String getEvent() {
		return event;
	}

	public void setEvent(String event) {
		this.event = event;
	}

	public String getMinprice() {
		return minprice;
	}

	public void setMinprice(String minprice) {
		this.minprice = minprice;
	}

	public String getMaxprice() {
		return maxprice;
	}

	public void setMaxprice(String maxprice) {
		this.maxprice = maxprice;
	}

	public Date getRicecakeup() {
		return ricecakeup;
	}

	public void setRicecakeup(Date ricecakeup) {
		this.ricecakeup = ricecakeup;
	}

	public Date getRicecakedown() {
		return ricecakedown;
	}

	public void setRicecakedown(Date ricecakedown) {
		this.ricecakedown = ricecakedown;
	}

	public String getNotepad() {
		return notepad;
	}

	public void setNotepad(String notepad) {
		this.notepad = notepad;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	
}
