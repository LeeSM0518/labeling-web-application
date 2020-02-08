package dao;

import vo.FontSize;

import java.util.List;

public interface FontSizeDao {

  List<FontSize> selectList() throws Exception;

}
