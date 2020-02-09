package dao;

import annotation.Component;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import vo.FontSize;

import java.util.List;

@Component("fontSizeDao")
public class PostgresSqlFontSizeDao implements FontSizeDao {

  SqlSessionFactory sqlSessionFactory;

  public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
    this.sqlSessionFactory = sqlSessionFactory;
  }

  @Override
  public List<FontSize> selectList() throws Exception {
    try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
      return sqlSession.selectList("dao.FontSizeDao.selectList");
    }
  }

}
