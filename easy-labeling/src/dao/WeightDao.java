package dao;

import vo.Weight;

import java.util.List;

public interface WeightDao {

  List<Weight> selectList() throws Exception;

}
