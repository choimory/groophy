package com.groophy.lucy;


import org.junit.Test;

import com.navercorp.lucy.security.xss.servletfilter.XssEscapeFilter;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;

/**
 * @author todtod80
 * @author leeplay
 */
public class XssEscapeFilterTest {
	XssEscapeFilter filter = XssEscapeFilter.getInstance();
	
	@Test
	public void testDoFilter() {
		assertThat(filter.doFilter("/notExistUrl.do", "title", "<b>Text</b>"), is("&lt;b&gt;Text&lt;/b&gt;"));
		assertThat(filter.doFilter("/notExistUrl.do", "globalParameter", "<b>Text</b>"), is("<b>Text</b>"));
		assertThat(filter.doFilter("/notExistUrl.do", "test", "<script>alert('1');</script>"), is("&lt;script&gt;alert(&#39;1&#39;);&lt;/script&gt;"));
		
		assertThat(filter.doFilter("/url1.do", "url1Parameter", "<b>Text</b>"), is("<b>Text</b>"));
		assertThat(filter.doFilter("/url1.do", "globalParameter", "<script>Text</script>"), is("&lt;script&gt;Text&lt;/script&gt;"));
		
	}
	
	@Test
	public void testUnicodeDoFilter() {
		assertThat(filter.doFilter("/notExistUrl.do", "title", "<b>Text</b>"), is("&lt;b&gt;Text&lt;/b&gt;"));
		assertThat(filter.doFilter("/notExistUrl.do", "title", "�ȳ�"), is("�ȳ�"));
	}
	
	@Test
	public void testDisableUrlDoFilter() {
		assertThat(filter.doFilter("/disableUrl4.do", "title", "<b>Text</b>"), is("&lt;b&gt;Text&lt;/b&gt;"));  //���� �ſ� ������ ��ġ���� Ȯ��
		assertThat(filter.doFilter("/disableUrl4.do", "query", "<b>Text</b>"), is("<b>Text</b>"));              //���� �ſ� ������ ��ġ���� Ȯ��
		assertThat(filter.doFilter("/notExistUrl.do", "globalParameter", "<b>Text</b>"), is("<b>Text</b>"));             //�۷ι��� �����Ǿ� �ִٸ� �۷ι� ������� �Ǵ��� Ȯ��
		
		assertThat(filter.doFilter("/disableUrl1.do", "web", "<b>Text</b>"), is("<b>Text</b>"));   //url disable ���� �ְ� �۷ι��� ���͸� ������ �Ǿ� ������, url�� disable�����Ƿ� ���͸� �Ǹ�ȵ�
		assertThat(filter.doFilter("/disableUrl1.do", "q", "�ȳ�"), is("�ȳ�"));
		assertThat(filter.doFilter("/disableUrl1.do", "text", "<b>Text</b>"), is("<b>Text</b>"));        //url disable ������ true�̹Ƿ� ���͸� �Ǹ� �ȵ�
		assertThat(filter.doFilter("/disableUrl1.do", "hello", "�ȳ�"), is("�ȳ�"));                        //url disable ������ true�̹Ƿ� ���͸� �Ǹ� �ȵ�
		
		assertThat(filter.doFilter("/disableUrl2.do", "text", "<�ȳ�>"), is("&lt;�ȳ�&gt;"));               //url disable ������ false�̹Ƿ� ���͸� �Ǿ�� ��
		assertThat(filter.doFilter("/disableUrl2.do", "hello", "<�ȳ�>"), is("&lt;�ȳ�&gt;"));              //url disable ������ false�̹Ƿ� ���͸� �Ǿ�� �� `
		
		assertThat(filter.doFilter("/disableUrl3.do", "query", "<�ȳ�>"), is("<�ȳ�>"));                   //url disable ������ true�̹Ƿ� �Ķ���� ������ �ִ��� ���͸� �Ǹ� �ȵ�
		assertThat(filter.doFilter("/disableUrl3.do", "prefix5", "<�ȳ�>"), is("<�ȳ�>"));                   //url disable ������ true�̹Ƿ� �Ķ���� ������ �ִ��� ���͸� �Ǹ� �ȵ�
	
		assertThat(filter.doFilter("/disableUrl4.do", "query", "<�ȳ�>"), is("<�ȳ�>"));                //url disable ������ false�̹Ƿ� url ������ �����ϰ� param ������� ���͸� �Ǵ��� Ȯ��
 		assertThat(filter.doFilter("/disableUrl4.do", "prefix1", "<�ȳ�>"), is("&lt;�ȳ�&gt;"));
		assertThat(filter.doFilter("/disableUrl4.do", "prefix1aaa", "<�ȳ�>"), is("&lt;�ȳ�&gt;"));
		assertThat(filter.doFilter("/disableUrl4.do", "prefix2aaa", "<�ȳ�>"), is("&lt;�ȳ�&gt;"));  //prefix ������ �ȵǾ� �����Ƿ� param�� ���͸� ������ ������ �ʾƾ��Ѵ�.
		assertThat(filter.doFilter("/disableUrl4.do", "prefix2", "<�ȳ�>"), is("<�ȳ�>"));
		assertThat(filter.doFilter("/disableUrl4.do", "prefix3", "<�ȳ�>"), is("&lt;�ȳ�&gt;"));
		assertThat(filter.doFilter("/disableUrl4.do", "prefix3-123", "<�ȳ�>"), is("&lt;�ȳ�&gt;"));
		assertThat(filter.doFilter("/disableUrl4.do", "prefix4", "<�ȳ�>"), is("<�ȳ�>"));
		assertThat(filter.doFilter("/disableUrl4.do", "prefix4adf123", "<�ȳ�>"), is("<�ȳ�>"));
		assertThat(filter.doFilter("/disableUrl4.do", "prefix5", "<�ȳ�>"), is("&lt;�ȳ�&gt;"));
		assertThat(filter.doFilter("/disableUrl4.do", "prefix5-zddfadf123", "<�ȳ�>"), is("&lt;�ȳ�&gt;"));
	}
	
	@Test
	public void testPrefixDoFilter() {
		assertThat(filter.doFilter("/url1.do", "url1PrefixParameter", "<b>Text</b>"), is("<b>Text</b>"));
		assertThat(filter.doFilter("/url1.do", "url1PrefixParameterabc", "<b>Text</b>"), is("<b>Text</b>"));
		assertThat(filter.doFilter("/url1.do", "url1PrefixParameter123", "<b>Text</b>"), is("<b>Text</b>"));

		assertThat(filter.doFilter("/notExist.do", "globalPrefixParameter1", "<b>Text</b>"), is("<b>Text</b>"));
		assertThat(filter.doFilter("/notExist.do", "globalPrefixParameter1aaa", "<b>Text</b>"), is("<b>Text</b>"));
		assertThat(filter.doFilter("/notExist.do", "globalPrefixParameter2", "<b>Text</b>"), is("&lt;b&gt;Text&lt;/b&gt;"));
		assertThat(filter.doFilter("/notExist.do", "globalPrefixParameter2aaa", "<b>Text</b>"), is("&lt;b&gt;Text&lt;/b&gt;"));
		assertThat(filter.doFilter("/notExist.do", "globalPrefixParameter3", "<b>Text</b>"), is("<b>Text</b>"));
		assertThat(filter.doFilter("/notExist.do", "globalPrefixParameter3a1", "<b>Text</b>"), is("&lt;b&gt;Text&lt;/b&gt;"));
	}
}