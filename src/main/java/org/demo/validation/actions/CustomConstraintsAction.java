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
import org.demo.validation.actions.dto.CustomFieldConstraintsDTO;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Example demonstrating how to use custom constraints in your
 * Struts2 application.
 *
 */
public class CustomConstraintsAction extends ActionSupport
{
    private static final long serialVersionUID = 1L;

    @Action( value = "customFieldConstraints", results = {
        @Result( name = "success", location = "/WEB-INF/content/CustomFieldAction.jsp" ),
        @Result( name = "input", location = "/WEB-INF/content/CustomFieldAction.jsp" ) } )
        public String execute() throws Exception{
        return "success"; //$NON-NLS-1$
    }
    
    @Action( value = "executeCustomFieldConstraints", results = {
        @Result( name = "success", location = "/WEB-INF/content/CustomFieldAction.jsp" ),
        @Result( name = "input", location = "/WEB-INF/content/CustomFieldAction.jsp" ) } )
    public String executeCustomConstraints() throws Exception {
        return "success"; //$NON-NLS-1$
    }
    
    @Valid
    private CustomFieldConstraintsDTO customFieldConstraintsDTO;

    public CustomFieldConstraintsDTO getCustomFieldConstraintsDTO()
    {
        return this.customFieldConstraintsDTO;
    }

    public void setCustomFieldConstraintsDTO( CustomFieldConstraintsDTO customFieldConstraintsDTO )
    {
        this.customFieldConstraintsDTO = customFieldConstraintsDTO;
    }
    
    
}
