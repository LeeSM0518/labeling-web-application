package controls;

import annotation.Component;
import bind.DataBinding;
import dao.PostgresSqlLabelDao;
import dao.PostgresSqlPaperDao;
import vo.Label;
import vo.Paper;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Component("/init.do")
public class InitController implements DataBinding, Controller {

  PostgresSqlPaperDao postgresSqlPaperDao;
  PostgresSqlLabelDao postgresSqlLabelDao;

  public void setPostgresSqlPaperDao(PostgresSqlPaperDao postgresSqlPaperDao) {
    this.postgresSqlPaperDao = postgresSqlPaperDao;
  }

  public void setPostgresSqlLabelDao(PostgresSqlLabelDao postgresSqlLabelDao) {
    this.postgresSqlLabelDao = postgresSqlLabelDao;
  }

  @Override
  public String execute(Map<String, Object> model) throws Exception {
    Paper paper = (Paper)model.get("paper");
    Label label = (Label)model.get("label");
    if (paper.getHeight() == null) {
      model.put("paperSizes", postgresSqlPaperDao.selectList());
      model.put("labels", postgresSqlLabelDao.selectList());
      return "/sample-web-page/InitPage.jsp";
    } else {
      HttpSession session = (HttpSession) model.get("session");
      String width = paper.getWidth();
      String height = paper.getHeight();
      int intWidth = Integer.parseInt(width.substring(0, 3)) - 5;
      String stringWidth = intWidth + "mm";
      int intHeight = Integer.parseInt(height.substring(0, 3)) - 5;
      String stringHeight = intHeight + "mm";
      session.setAttribute("width", stringWidth);
      session.setAttribute("height", stringHeight);
      session.setAttribute("label", label);
      return "redirect:/decorate.do";
    }

  }

  @Override
  public Object[] getDataBinders() {
    return new Object[] {
            "paper", Paper.class,
            "label", Label.class
    };
  }

}