package dao;

import vo.Label;
import vo.Style;

import java.util.List;

public interface StyleDao {

  List<Style> selectStylesFromLabel(Label label) throws Exception;

}
