package org.terasoluna.gfw.functionaltest.app;

import com.gargoylesoftware.htmlunit.BrowserVersion;
import com.gargoylesoftware.htmlunit.Page;
import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.WebResponse;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;

public class CustomHtmlUnitDriver extends HtmlUnitDriver {

    public CustomHtmlUnitDriver(BrowserVersion version) {
        super(version);
    }

    @Override
    public String getPageSource() {
        Page page = lastPage();
        if (page == null) {
            return null;
        }
        WebResponse response = page.getWebResponse();
        return response.getContentAsString();
    }

    protected WebClient modifyWebClient(WebClient client) {
        client.getOptions().setCssEnabled(false);
        return client;
    }

}
