/* **********************************************************************************************************************
 *
 *  Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
 *  the License. You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
 *  an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
 *  specific language governing permissions and limitations under the License.
 *
 * **********************************************************************************************************************/
package org.demo.validation.actions;

import javax.validation.Valid;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.demo.validation.actions.dto.CrossFieldConstraintsDTO;

import com.github.umeshawasthi.struts2.jsr303.constraints.FieldMatch;
import com.opensymphony.xwork2.ActionSupport;

/**
 *<p>Action class showing how cross field constraints can be used in Struts2.
 *Cross field constraint are generally applied over class level as they get access
 *to each property of class.</p>
 *
 *<p>
 *This will also show how we can use {@link FieldMatch} constrains in your application.
 *This validation is being provided out of the box by pluign and let you compare two 
 *fields for there equality.
 *</p>
 */
public class CrossFieldConstraintsValidationAction extends ActionSupport
{

    private static final long serialVersionUID = 1L;
    
   
    
    @Action( value = "crossFieldConstraints", results = {
        @Result( name = "success", location = "/WEB-INF/content/CrossFieldAction.jsp" ),
        @Result( name = "input", location = "/WEB-INF/content/CrossFieldAction.jsp" ) } )
    public String execute() throws Exception{
        return "success"; //$NON-NLS-1$
    }
    
    
    @Action( value = "executeFieldConstraints", results = {
        @Result( name = "success", location = "/WEB-INF/content/CrossFieldAction.jsp" ),
        @Result( name = "input", location = "/WEB-INF/content/CrossFieldAction.jsp" ) } )
    public String executeFieldConstraints() throws Exception{
       return "success";  //$NON-NLS-1$
    }

    
    
    
    @Valid
    private CrossFieldConstraintsDTO crossFieldConstraintsDTO;
   
    public CrossFieldConstraintsDTO getCrossFieldConstraintsDTO()
    {
        return this.crossFieldConstraintsDTO;
    }


    public void setCrossFieldConstraintsDTO( CrossFieldConstraintsDTO crossFieldConstraintsDTO )
    {
        this.crossFieldConstraintsDTO = crossFieldConstraintsDTO;
    }
    
    
}
