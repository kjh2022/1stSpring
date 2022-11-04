package test;

import lombok.Data;

@Data
public class UserVO {
	String username;

	public UserVO(String username) {
		super();
		this.username = username;
	}
}
