package shop.model.vo;

public class User {
	private String userId;
	private String userPw;
	private String userName;
	private String userNickName;
	private String userEmail;
	private String userPhone;
	private String userGender;
	
	public User() {}
	
	public User(String userId, String userPw, String userName, String userNickName, String userEmail, String userPhone,
			String userGender) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userNickName = userNickName;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.userGender = userGender;
	}

	public User(String userId, String userPw) {
		super();
		this.userId = userId;
		this.userPw = userPw;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserNickName() {
		return userNickName;
	}

	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userPw=" + userPw + ", userName=" + userName + ", userNickName="
				+ userNickName + ", userEmail=" + userEmail + ", userPhone=" + userPhone + ", userGender=" + userGender
				+ "]";
	}
	
}
