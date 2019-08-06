import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class PrintDateTag extends SimpleTagSupport {
    private Date date;
    private String pattern = "yyyy-MM-dd";
    private SimpleDateFormat sdf =new SimpleDateFormat();

    @Override
    public void doTag() throws JspException, IOException {
        sdf.applyPattern(pattern);
        String s = sdf.format(date);
        JspContext jspContext = this.getJspContext();
        jspContext.getOut().write(s);
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getPattern() {
        return pattern;
    }

    public void setPattern(String pattern) {
        this.pattern = pattern;
    }

    public SimpleDateFormat getSdf() {
        return sdf;
    }

    public void setSdf(SimpleDateFormat sdf) {
        this.sdf = sdf;
    }
}
