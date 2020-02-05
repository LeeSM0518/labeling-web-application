package dao;

import java.util.HashMap;
import java.util.List;

public interface CategoryDao {

  List<Category> selectList() throws Exception;
  int insert(Category category) throws Exception;
  int delete(Category category) throws Exception;
  Category selectOne(Category category) throws Exception;
  int update(HashMap<String, Object> paramMap) throws Exception;

}