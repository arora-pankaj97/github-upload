package org.javaexp.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class MyCustomTag extends TagSupport {

	@Override
	public int doStartTag() throws JspException {
		// TODO Auto-generated method stub
		
		JspWriter out=pageContext.getOut();
		try {
			out.print("<font color='red' size='10'><marquee><h1>Its a header</h1></marquee></font>");
		}catch(IOException e)
		{
			e.printStackTrace();
		}
		return super.doStartTag();
	}
	

}
