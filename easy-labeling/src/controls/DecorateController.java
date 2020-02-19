package controls;

import annotation.Component;
import bind.DataBinding;
import dao.*;
import vo.Label;
import vo.Paper;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Component("/decorate.do")
public class DecorateController implements DataBinding, Controller {

  PostgresSqlColorDao colorDao;
  PostgresSqlWeightDao weightDao;
  PostgresSqlFontSizeDao fontSizeDao;
  PostgresSqlFontDao fontDao;

  public void setColorDao(PostgresSqlColorDao colorDao) {
    this.colorDao = colorDao;
  }

  public void setWeightDao(PostgresSqlWeightDao weightDao) {
    this.weightDao = weightDao;
  }

  public void setFontSizeDao(PostgresSqlFontSizeDao fontSizeDao) {
    this.fontSizeDao = fontSizeDao;
  }

  public void setFontDao(PostgresSqlFontDao fontDao) {
    this.fontDao = fontDao;
  }

  @Override
  public Object[] getDataBinders() {
    return new Object[] {
            "paper", Paper.class,
            "label", Label.class
    };
  }

  @Override
  public String execute(Map<String, Object> model) throws Exception {
    HttpSession session = (HttpSession) model.get("session");
    model.put("colors", colorDao.selectList());
    model.put("weights", weightDao.selectList());
    model.put("fontSizes", fontSizeDao.selectList());
    model.put("fonts", fontDao.selectList());
    model.put("label", session.getAttribute("label"));
    return "/sample-web-page/DecoratePage.jsp";
  }

}
