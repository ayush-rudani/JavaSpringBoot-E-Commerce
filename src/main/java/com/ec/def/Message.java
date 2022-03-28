package com.ec.def;

public class Message {
	private String content;
	private String type;
	private String src;
	
	public Message(String content, String type, String src) {
		super();
		this.content = content;
		this.type = type;
		this.src = src;
	}

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

}
