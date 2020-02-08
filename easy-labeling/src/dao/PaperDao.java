package dao;

import vo.Paper;

import java.util.List;

public interface PaperDao {

  List<Paper> selectList() throws Exception;

}
