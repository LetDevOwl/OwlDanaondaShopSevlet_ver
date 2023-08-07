package shop.model.service;

import java.sql.Connection;

import common.JDBCTemlplate;
import shop.model.dao.UserDAO;
import shop.model.vo.User;

public class UserService {
	private JDBCTemlplate jdbcTemlplate;
	private UserDAO uDao;
	
	public UserService() {
		jdbcTemlplate = JDBCTemlplate.getInstance();
		uDao = new UserDAO();
	}

	public int insertUser(User user) {
		Connection conn = jdbcTemlplate.createConnection();
		int result = uDao.insertUser(conn, user);
		if (result > 0) {
			jdbcTemlplate.commit(conn);
		} else {
			jdbcTemlplate.rollback(conn);
		}
		jdbcTemlplate.close(conn);
		return result;
	}

	public int updateUser(User user) {
		Connection conn = jdbcTemlplate.createConnection();
		int result = uDao.updateUser(conn, user);
		if (result > 0) {
			jdbcTemlplate.commit(conn);
		} else {
			jdbcTemlplate.rollback(conn);
		}
		jdbcTemlplate.close(conn);
		return result;
	}

	public int deleteUser(String userId) {
		Connection conn = jdbcTemlplate.createConnection();
		int result = uDao.deleteUser(conn, userId);
		if (result > 0) {
			jdbcTemlplate.commit(conn);
		} else {
			jdbcTemlplate.rollback(conn);
		}
		jdbcTemlplate.close(conn);
		return result;
	}

	public User selectCheckLogin(User user) {
		Connection conn = jdbcTemlplate.createConnection();
		User uOne = uDao.selectCheckLogin(conn, user);
		return uOne;
	}

	public User selectOneById(String userId) {
		Connection conn = jdbcTemlplate.createConnection();
		User user = uDao.selectOneById(conn, userId);
		return user;
	}

}
