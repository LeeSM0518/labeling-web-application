package dao;

import annotation.Component;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import vo.Color;

import java.util.List;

@Component("colorDao")
public class PostgresSqlColorDao implements ColorDao {

  SqlSessionFactory sessionFactory;

  public void setSessionFactory(SqlSessionFactory sessionFactory) {
    this.sessionFactory = sessionFactory;
  }

  @Override
  public List<Color> selectList() throws Exception {
    try (SqlSession sqlSession = sessionFactory.openSession()) {
      return sqlSession.selectList("dao.ColorDao.selectList");
    }
  }

}
