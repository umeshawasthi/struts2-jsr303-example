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
import com.opensymphony.xwork2.ModelDriven;

/**
 * Example aims to provide an overview as how JSR303 bean validation will work with Model driven intercepter. Validation
 * flow will be same and same bean instance will be used to validate input values
 */
public class ModelValidationAction
    extends ActionSupport
    implements ModelDriven<UserProfileDTO>
{
    private static final long serialVersionUID = 1L;

    UserProfileDTO userProfileDTO = new UserProfileDTO();

   
    @Action( value = "registerModelUserProfile", results = {
        @Result( name = "success", location = "/WEB-INF/content/ModelAction.jsp" ),
        @Result( name = "input", location = "/WEB-INF/content/ModelAction.jsp" ) } )
    public String validateUserProfile()
        throws Exception
    {
        return "success"; //$NON-NLS-1$
    }

    @Valid
    public UserProfileDTO getModel()
    {
        return this.userProfileDTO;
    }

}
