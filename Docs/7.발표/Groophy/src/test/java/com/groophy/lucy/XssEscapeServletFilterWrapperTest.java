package com.groophy.lucy;


import org.junit.Test;
import org.springframework.mock.web.MockHttpServletRequest;

import com.navercorp.lucy.security.xss.servletfilter.XssEscapeFilter;
import com.navercorp.lucy.security.xss.servletfilter.XssEscapeServletFilterWrapper;

import java.util.Map;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;

/**
 * @author todtod80
 * @author leeplay
 */
public class XssEscapeServletFilterWrapperTest {
	XssEscapeFilter filter = XssEscapeFilter.getInstance();;
	MockHttpServletRequest request;
	XssEscapeServletFilterWrapper wrapper;

	@Test
	public void testGetMethodGetParameter() {
		request = new MockHttpServletRequest("GET", "/notExistUrl.do");
		request.addParameter("title", "<b>Text</b>");
		request.addParameter("globalParameter", "<b>Text</b>");
		wrapper = new XssEscapeServletFilterWrapper(request, filter);

		assertThat(wrapper.getParameter("title"), is("&lt;b&gt;Text&lt;/b&gt;"));
		assertThat(wrapper.getParameter("globalParameter"), is("<b>Text</b>"));

		request = new MockHttpServletRequest("GET", "/url1.do");
		request.addParameter("title", "<b>Text</b>");
		request.addParameter("mode", "<script>Text</script>");
		request.addParameter("globalParameter", "<script>Text</script>");
		wrapper = new XssEscapeServletFilterWrapper(request, filter);

		assertThat(wrapper.getParameter("title"), is("&lt;b&gt;Text&lt;/b&gt;"));
		assertThat(wrapper.getParameter("mode"), is("&lt;script&gt;Text&lt;/script&gt;"));
		assertThat(wrapper.getParameter("globalParameter"), is("&lt;script&gt;Text&lt;/script&gt;"));
	}

	@Test
	public void testPostMethodGetParameter() {
		request = new MockHttpServletRequest("POST", "/notExistUrl.do");
		request.addParameter("title", "<b>Text</b>");
		request.addParameter("globalParameter", "<b>Text</b>");
		wrapper = new XssEscapeServletFilterWrapper(request, filter);

		assertThat(wrapper.getParameter("title"), is("&lt;b&gt;Text&lt;/b&gt;"));
		assertThat(wrapper.getParameter("globalParameter"), is("<b>Text</b>"));

		request = new MockHttpServletRequest("POST", "/url1.do");
		request.addParameter("title", "<b>Text</b>");
		request.addParameter("mode", "<script>Text</script>");
		request.addParameter("globalParameter", "<script>Text</script>");
		wrapper = new XssEscapeServletFilterWrapper(request, filter);

		assertThat(wrapper.getParameter("title"), is("&lt;b&gt;Text&lt;/b&gt;"));
		assertThat(wrapper.getParameter("mode"), is("&lt;script&gt;Text&lt;/script&gt;"));
		assertThat(wrapper.getParameter("globalParameter"), is("&lt;script&gt;Text&lt;/script&gt;"));
	}

	@Test
	public void testGetMethodGetParameterValues() {
		request = new MockHttpServletRequest("GET", "/notExistUrl.do");
		request.addParameter("title", "<b>Text1</b>");
		request.addParameter("title", "<b>Text2</b>");
		request.addParameter("globalParameter", "<b>Text1</b>");
		request.addParameter("globalParameter", "<b>Text2</b>");
		wrapper = new XssEscapeServletFilterWrapper(request, filter);

		String[] values = wrapper.getParameterValues("title");
		assertThat(values[0], is("&lt;b&gt;Text1&lt;/b&gt;"));
		assertThat(values[1], is("&lt;b&gt;Text2&lt;/b&gt;"));

		values = wrapper.getParameterValues("globalParameter");
		assertThat(values[0], is("<b>Text1</b>"));
		assertThat(values[1], is("<b>Text2</b>"));

		request = new MockHttpServletRequest("GET", "/url1.do");
		request.addParameter("title", "<b>Text1</b>");
		request.addParameter("title", "<b>Text2</b>");
		request.addParameter("mode", "<script>Text1</script>");
		request.addParameter("mode", "<script>Text2</script>");
		request.addParameter("globalParameter", "<script>Text1</script>");
		request.addParameter("globalParameter", "<script>Text2</script>");
		wrapper = new XssEscapeServletFilterWrapper(request, filter);

		values = wrapper.getParameterValues("title");
		assertThat(values[0], is("&lt;b&gt;Text1&lt;/b&gt;"));
		assertThat(values[1], is("&lt;b&gt;Text2&lt;/b&gt;"));

		values = wrapper.getParameterValues("mode");
		assertThat(values[0], is("&lt;script&gt;Text1&lt;/script&gt;"));
		assertThat(values[1], is("&lt;script&gt;Text2&lt;/script&gt;"));

		values = wrapper.getParameterValues("globalParameter");
		assertThat(values[0], is("&lt;script&gt;Text1&lt;/script&gt;"));
		assertThat(values[1], is("&lt;script&gt;Text2&lt;/script&gt;"));
	}

	@Test
	public void testGetMethodGetParameterMap() {
		request = new MockHttpServletRequest("GET", "/notExistUrl.do");
		request.addParameter("title", "<b>Text1</b>");
		request.addParameter("title", "<b>Text2</b>");
		request.addParameter("globalParameter", "<b>Text1</b>");
		wrapper = new XssEscapeServletFilterWrapper(request, filter);

		Map<String, Object> map = wrapper.getParameterMap();
		String[] values = (String[])map.get("title");
		assertThat(values[0], is("&lt;b&gt;Text1&lt;/b&gt;"));
		assertThat(values[1], is("&lt;b&gt;Text2&lt;/b&gt;"));

		values = (String[])map.get("globalParameter");
		assertThat(values[0], is("<b>Text1</b>"));

		request = new MockHttpServletRequest("GET", "/url1.do");
		request.addParameter("title", "<b>Text1</b>");
		request.addParameter("title", "<b>Text2</b>");
		request.addParameter("mode", "<script>Text1</script>");
		request.addParameter("mode", "<script>Text2</script>");
		request.addParameter("globalParameter", "<script>Text1</script>");
		wrapper = new XssEscapeServletFilterWrapper(request, filter);

		map = wrapper.getParameterMap();
		values = (String[])map.get("title");
		assertThat(values[0], is("&lt;b&gt;Text1&lt;/b&gt;"));
		assertThat(values[1], is("&lt;b&gt;Text2&lt;/b&gt;"));

		values = (String[])map.get("mode");
		assertThat(values[0], is("&lt;script&gt;Text1&lt;/script&gt;"));
		assertThat(values[1], is("&lt;script&gt;Text2&lt;/script&gt;"));

		values = (String[])map.get("globalParameter");
		assertThat(values[0], is("&lt;script&gt;Text1&lt;/script&gt;"));
	}
}