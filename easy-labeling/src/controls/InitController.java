package controls;

import annotation.Component;
import bind.DataBinding;

import java.util.Map;

@Component("/init")
public class InitController implements DataBinding, Controller {

  @Override
  public Object[] getDataBinders() {
    return new Object[0];
  }

  @Override
  public String execute(Map<String, Object> model) throws Exception {
    return null;
  }

}