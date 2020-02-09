package dao;

import vo.Label;

import java.util.List;

public interface LabelDao {

  List<Label> selectList() throws Exception;

}
