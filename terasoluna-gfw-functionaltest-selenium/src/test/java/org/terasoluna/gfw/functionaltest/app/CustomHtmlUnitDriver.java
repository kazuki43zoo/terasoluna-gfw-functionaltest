package org.terasoluna.gfw.functionaltest.app;

import com.gargoylesoftware.htmlunit.Page;
import com.gargoylesoftware.htmlunit.SgmlPage;
import com.gargoylesoftware.htmlunit.WebResponse;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;

/**
 * Created by shimizukazuki on 2017/04/16.
 */
public class CustomHtmlUnitDriver extends HtmlUnitDriver {

    @Override
    public String getPageSource() {
        Page page = lastPage();
        if (page == null) {
            return null;
        }

//        if (page instanceof SgmlPage) {
//            return ((SgmlPage) page).asXml();
//        }
        WebResponse response = page.getWebResponse();
        return response.getContentAsString();
    }

}
