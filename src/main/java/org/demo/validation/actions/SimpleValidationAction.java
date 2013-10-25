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
import org.demo.validation.actions.dto.UserProfileDTO;

import com.opensymphony.xwork2.ActionSupport;

/**
 * <p>Simple example showing how JSR303 bean validation can be used 
 * with Struts2.
 * Example will use a java bean to fill properties from JSP page and 
 * Bean validator will be used to validate java bean properties.</p>
 * 
 * <p>
 * To display validation messages, example will use Struts2 message resolution 
 * technique.
 * </p>
 */




public class SimpleValidationAction extends ActionSupport
{

    private static final long serialVersionUID = 1L;
    
    
    @Action(value="simpleValidationAction",
    results={@Result(name="success", location="/WEB-INF/content/SimpleAction.jsp")}
  )
    public String execute() throws Exception{
        return "success"; //$NON-NLS-1$
    }
    
    
    
    
    @Action(value="registerUserProfile",
                    results={@Result(name="success", location="/WEB-INF/content/SimpleAction.jsp"),@Result(name="input",location="/WEB-INF/content/SimpleAction.jsp")}
                  )
    public String validateUserProfile() throws Exception{
        return "success"; //$NON-NLS-1$
    }
    
    
    /**
     * {@link UserProfileDTO} will be validated using Bean validator.
     * All we need to annotate bean wit @Valid annotation.
     * 
     * Bean Validator will pick this bean and validate
     *  
     */
    
    @Valid
    private UserProfileDTO userProfileDTO;

    
    public UserProfileDTO getUserProfileDTO()
    {
        return this.userProfileDTO;
    }


    public void setUserProfileDTO( UserProfileDTO userProfileDTO )
    {
        this.userProfileDTO = userProfileDTO;
    }
    

}
