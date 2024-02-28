package servletdemo.part03;

import java.sql.Connection;
import java.util.List;

public class MemService {
	private MemDAO dao;

	public MemService() {
		dao = MemDAO.getInstance();
	}

	public List<MemDTO> listProcess() {
		List<MemDTO> aList = null;
		Connection conn = null;

		try {
			conn = JdbcTemplate.getConnection();
			conn.setAutoCommit(false);
			aList = dao.listMethod(conn);
			JdbcTemplate.commit(conn);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			JdbcTemplate.rollback(conn);
		}finally {
			JdbcTemplate.close(conn);
		}
		return aList;
	}// end listProcess()
}// end class