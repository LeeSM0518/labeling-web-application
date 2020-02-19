package dao;

import annotation.Component;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

@Component("printDao")
public class PostgresSqlPrintDao implements PrintDao {

  private SqlSessionFactory sqlSessionFactory;

  public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
    this.sqlSessionFactory = sqlSessionFactory;
  }

  @Override
  public void insert() throws Exception {
    try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
      sqlSession.insert("dao.PrintDao.insert");
      sqlSession.commit();
    }
  }

}
