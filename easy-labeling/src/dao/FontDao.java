package dao;

import vo.Font;

import java.util.List;

public interface FontDao {

  List<Font> selectList() throws Exception;

}
