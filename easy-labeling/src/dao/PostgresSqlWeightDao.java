package dao;

import annotation.Component;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import vo.Weight;

import java.util.List;

@Component("weightDao")
public class PostgresSqlWeightDao implements WeightDao {

  SqlSessionFactory sqlSessionFactory;

  public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
    this.sqlSessionFactory = sqlSessionFactory;
  }

  @Override
  public List<Weight> selectList() throws Exception {
    try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
      return sqlSession.selectList("dao.WeightDao.selectList");
    }
  }
}
