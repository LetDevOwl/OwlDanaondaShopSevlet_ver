package shop.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import shop.model.vo.User;

public class UserDAO {

	public int insertUser(Connection conn, User user) {
		String query = "INSERT INTO USER_TBL VALUES(?,?,?,?,?,?,?)";
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user.getUserId());
			pstmt.setString(2, user.getUserPw());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserNickName());
			pstmt.setString(5, user.getUserEmail());
			pstmt.setString(6, user.getUserPhone());
			pstmt.setString(7, user.getUserGender());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public int updateUser(Connection conn, User user) {
		String query = "UPDATE USER_TBL SET USER_EMAIL = ?, USER_NICK_NAME = ?, USER_PHONE = ? WHERE USER_ID = ?";
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user.getUserEmail());
			pstmt.setString(2, user.getUserNickName());
			pstmt.setString(3, user.getUserPhone());
			pstmt.setString(4, user.getUserId());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public int deleteUser(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "DELETE FROM USER_TBL WHERE USER_ID = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public User selectCheckLogin(Connection conn, User user) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		String query = "SELECT * FROM USER_TBL WHERE USER_ID = ? AND USER_PW = ?";
		User uOne = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user.getUserId());
			pstmt.setString(2, user.getUserPw());
			rset = pstmt.executeQuery(); // 누락 주의, 결과값 받기 주의
			if (rset.next()) {
				uOne = rsetToUser(rset);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rset.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return uOne;
	}

	public User selectOneById(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM USER_TBL WHERE USER_ID = ?";
		User uOne = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				uOne = rsetToUser(rset);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rset.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return uOne;
	}

	private User rsetToUser(ResultSet rset) throws SQLException {
		User user = new User();
		user.setUserId(rset.getString("USER_ID"));
		user.setUserPw(rset.getString("USER_PW"));
		user.setUserName(rset.getString("USER_NAME"));
		user.setUserNickName(rset.getString("USER_NICK_NAME"));
		user.setUserEmail(rset.getString("USER_EMAIL"));
		user.setUserPhone(rset.getString("USER_PHONE"));
		user.setUserGender(rset.getString("USER_GENDER"));
		return user;
	}

}
