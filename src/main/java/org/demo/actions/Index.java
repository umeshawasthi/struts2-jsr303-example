package org.demo.actions;


import com.opensymphony.xwork2.ActionSupport;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.convention.annotation.Action;


@Results({
        @Result(name = "success", location = "${redirectName}", type = "redirectAction")
})
public class Index extends ActionSupport {

   
    private static final long serialVersionUID = 1L;
    private String redirectName;

    @SuppressWarnings( "nls" )
    public String execute() {
        this.redirectName = "hello";
        return "success";
    }

    public String getRedirectName() {
        return this.redirectName;
    }
    
    @Action( value = "modelValidationAction", results = { @Result( name = "success", location = "/WEB-INF/content/ModelAction.jsp" ) } )
    public String modelValidationAction() throws Exception
    {
        return "success"; //$NON-NLS-1$
    }


}
