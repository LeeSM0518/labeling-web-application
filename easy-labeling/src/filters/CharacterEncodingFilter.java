package filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

public class CharacterEncodingFilter implements Filter {

  private FilterConfig config;

  @Override
  public void init(FilterConfig filterConfig) throws ServletException {
    this.config = filterConfig;
  }

  @Override
  public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
    // 서블릿이 실행되기 전에 해야 할 작업 위치
    servletRequest.setCharacterEncoding(config.getInitParameter("encoding"));

    // 다음 필터를 호출. 더이상 필터가 없다면 서블릿의 service()가 호출됨.
    filterChain.doFilter(servletRequest, servletResponse);

    // 서블릿을 실행한 후, 클라이언트에게 응답하기 전에 해야할 작업 위치
  }

  @Override
  public void destroy() {}

}