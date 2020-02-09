package dao;

import annotation.Component;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import vo.Label;
import vo.Style;

import java.util.List;

@Component("styleDao")
public class PostgresSqlStyleDao implements StyleDao {

  SqlSessionFactory sqlSessionFactory;

  public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
    this.sqlSessionFactory = sqlSessionFactory;
  }

  @Override
  public List<Style> selectStylesFromLabel(Label label) throws Exception {
    try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
      return sqlSession.selectList("dao.StyleDao.selectStylesFromLabel", label);
    }
  }

}
