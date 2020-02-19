package controls;

import annotation.Component;
import bind.DataBinding;
import dao.PostgresSqlPrintDao;

import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.Map;

@Component("/print.do")
public class PrintController implements DataBinding, Controller {

  PostgresSqlPrintDao postgresSqlPrintDao;

  public void setPostgresSqlPrintDao(PostgresSqlPrintDao postgresSqlPrintDao) {
    this.postgresSqlPrintDao = postgresSqlPrintDao;
  }

  @Override
  public Object[] getDataBinders() {
    return new Object[]{
        "labelBackgroundColor", String.class,
        "borderStyle", String.class,
        "barSize", String.class,
        "barColor", String.class,
        "headerFontSize", String.class,
        "headerFontName", String.class,
        "headerFontColor", String.class,
        "headerFontText", String.class,
        "contentFontSize", String.class,
        "contentFontName", String.class,
        "contentFontColor", String.class,
        "contentFontText", String.class,
        "tailFontSize", String.class,
        "tailFontName", String.class,
        "tailFontColor", String.class,
        "tailFontText", String.class
    };
  }

  @Override
  public String execute(Map<String, Object> model) throws Exception {
    HttpSession session = (HttpSession) model.get("session");
    String labelBackgroundColor = (String) model.get("labelBackgroundColor");
    if (labelBackgroundColor != null) {
      postgresSqlPrintDao.insert();
      String borderStyle = (String) model.get("borderStyle");
      session.setAttribute("borderStyle", borderStyle);
      String barSize = (String) model.get("barSize");
      session.setAttribute("barSize", barSize);
      String barColor = (String) model.get("barColor");
      session.setAttribute("barColor", barColor);
      String headerFontSize = (String) model.get("headerFontSize");
      session.setAttribute("headerFontSize", headerFontSize);
      String headerFontName = (String) model.get("headerFontName");
      session.setAttribute("headerFontName", headerFontName.replace("\"", ""));
      String headerFontColor = (String) model.get("headerFontColor");
      session.setAttribute("headerFontColor", headerFontColor);
      String headerFontText = (String) model.get("headerFontText");
      String contentFontSize = (String) model.get("contentFontSize");
      session.setAttribute("contentFontSize", contentFontSize);
      String contentFontName = (String) model.get("contentFontName");
      session.setAttribute("contentFontName", contentFontName.replace("\"", ""));
      String contentFontColor = (String) model.get("contentFontColor");
      session.setAttribute("contentFontColor", contentFontColor);
      String contentFontText = (String) model.get("contentFontText");
      session.setAttribute("contentFontText", contentFontText);
      String tailFontSize = (String) model.get("tailFontSize");
      session.setAttribute("tailFontSize", tailFontSize);
      String tailFontName = (String) model.get("tailFontName");
      session.setAttribute("tailFontName", tailFontName.replace("\"", ""));
      String tailFontColor = (String) model.get("tailFontColor");
      session.setAttribute("tailFontColor", tailFontColor);
      String tailFontText = (String) model.get("tailFontText");
      session.setAttribute("tailFontText", tailFontText);
      session.setAttribute("labelBackgroundColor", labelBackgroundColor);
      session.setAttribute("headerFontText", headerFontText);
      if (borderStyle != null && !borderStyle.equals("") && barSize != null && !barSize.equals("")) {
        int borderWeight = Integer.parseInt(borderStyle.split(" ")[0].replace("m", ""));
        int intBarSize = Integer.parseInt(barSize.replace("m", ""));
        int intHeight = (int) session.getAttribute("intHeight");
        double realHeight = (intHeight - 10 - borderWeight * 2 - intBarSize) / 2.0;
        session.setAttribute("headerHeight", realHeight);
        session.setAttribute("tailHeight", realHeight);
      } else if (borderStyle != null && !borderStyle.equals("")) {
        int borderWeight = Integer.parseInt(borderStyle.split(" ")[0].replace("m", ""));
        int intHeight = (int) session.getAttribute("intHeight");
        double contentHeight = intHeight - borderWeight * 2 - 10;
        String height = contentHeight + "mm";
        session.setAttribute("contentHeight", height);
        System.out.println(height);
      } else if (barSize != null && !barSize.equals("")) {
        int intBarSize = Integer.parseInt(barSize.replace("m", ""));
        int height = (int) session.getAttribute("intHeight");
        double realHeight = (height - intBarSize) / 2.0;
        session.setAttribute("headerHeight", realHeight);
        session.setAttribute("tailHeight", realHeight);
      }
      return "/sample-web-page/Print.jsp";
    }
    session.invalidate();
    return "redirect:init.do";
  }

}