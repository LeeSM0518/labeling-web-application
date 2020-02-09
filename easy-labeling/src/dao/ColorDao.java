package dao;

import vo.Color;

import java.util.List;

public interface ColorDao {

  List<Color> selectList() throws Exception;

}
