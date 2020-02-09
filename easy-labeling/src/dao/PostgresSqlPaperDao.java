package dao;

import annotation.Component;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import vo.Paper;

import java.util.List;

@Component("paperDao")
public class PostgresSqlPaperDao implements PaperDao {

  SqlSessionFactory sqlSessionFactory;

  public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
    this.sqlSessionFactory = sqlSessionFactory;
  }

  @Override
  public List<Paper> selectList() throws Exception {
    try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
      return sqlSession.selectList("dao.PaperDao.selectList");
    }
  }

}
