package controls;

import annotation.Component;
import bind.DataBinding;

import java.util.Map;

@Component("/print.do")
public class PrintController implements DataBinding, Controller {

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
    System.out.println();
    String labelBackgroundColor = (String) model.get("labelBackgroundColor");
    System.out.println(labelBackgroundColor);
    String borderStyle = (String) model.get("borderStyle");
    System.out.println(borderStyle);
    String barSize = (String) model.get("barSize");
    System.out.println(barSize);
    String barColor = (String) model.get("barColor");
    System.out.println(barColor);
    String headerFontSize = (String) model.get("headerFontSize");
    System.out.println(headerFontSize);
    String headerFontName = (String) model.get("headerFontName");
    System.out.println(headerFontName);
    String headerFontColor = (String) model.get("headerFontColor");
    System.out.println(headerFontColor);
    String headerFontText = (String) model.get("headerFontText");
    System.out.println(headerFontText);
    String contentFontSize = (String) model.get("contentFontSize");
    System.out.println(contentFontSize);
    String contentFontName = (String) model.get("contentFontName");
    System.out.println(contentFontName);
    String contentFontColor = (String) model.get("contentFontColor");
    System.out.println(contentFontColor);
    String contentFontText = (String) model.get("contentFontText");
    System.out.println(contentFontText);
    String tailFontSize = (String) model.get("tailFontSize");
    System.out.println(tailFontSize);
    String tailFontName = (String) model.get("tailFontName");
    System.out.println(tailFontName);
    String tailFontColor = (String) model.get("tailFontColor");
    System.out.println(tailFontColor);
    String tailFontText = (String) model.get("tailFontText");
    System.out.println(tailFontText);
    System.out.println();
    System.out.println();
    return null;
  }

}