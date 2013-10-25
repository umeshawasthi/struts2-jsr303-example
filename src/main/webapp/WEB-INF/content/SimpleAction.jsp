<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<link href="http://localhost:7777/struts2-jsr303/style.css"
	rel="stylesheet" type="text/css" media="all" />
<title>Simple Bean Based Validation</title>
</head>
<body>
	<div class="midCntCol2">
		<div class="pageTitle">Register</div>
		<s:actionerror />
		<s:form action="registerUserProfile" theme="simple" id="registration">
			<div class="dvMainForm">

				<div class="row">
					<div class="col">
						<div class="inputLabel">
							Email ID <span class="asterisk">*</span>
						</div>
						<div class="inputField">
							<div class="flW">
							<s:textfield label="Email" name="userProfileDTO.email"
										id="email" cssClass="required email textField" />
							<s:fielderror fieldName="userProfileDTO.email" />
							</div>
						</div>
					</div>
					<div class="col">
					
						<div class="inputLabel">
							Moblie Number <span class="asterisk">*</span>
						</div>
						<div class="inputField">
							<div class="flW">
								<s:textfield label="Mobile No" name="userProfileDTO.mobile"
									id="mobile" cssClass="required textField" />
								<s:fielderror fieldName="userProfileDTO.mobile" />
							</div>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col">
						<div class="inputLabel">
							Name <span class="asterisk">*</span>
						</div>
						<div class="inputField">
							<div class="flW">
								<s:textfield label="Name" name="userProfileDTO.name" id="name"
									cssClass="required textField" />
								<s:fielderror fieldName="userProfileDTO.name" />

							</div>
						</div>
					</div>
					<div class="col">
						<div class="inputLabel">
							Confirm Name <span class="asterisk">*</span>
						</div>
						<div class="inputField">
							<div class="flW">
								<s:textfield label="confirm Name"
									name="userProfileDTO.confirmName" id="confirmName"
									cssClass="required textField" />
								<s:fielderror fieldName="userProfileDTO.confirmName" />

							</div>
						</div>
					</div>


				</div>
				<div class="row">
					<div class="col">
						<div class="inputLabel">
							Date Of Birth <span class="asterisk">*</span>
						</div>
						<div class="inputField">
							<div class="flW">
								<s:textfield label="Date of Birth"
									name="userProfileDTO.dateOfBirth" id="dateOfBirth"
									cssClass="required textField" />
								<s:fielderror fieldName="userProfileDTO.dateOfBirth" />
							</div>
						</div>
					</div>
					<div class="col">
						<div class="inputLabel">
							Gender <span class="asterisk">*</span>
						</div>
						<div class="inputField">
							<div class="flW rdo">
								<s:radio name="userProfileDTO.gender" cssClass="chkinput"
									list="#{'Male':'Male','Female':'Female'}" id="gender"
									value="%{user_gender}" theme="xhtml">
								</s:radio>
								<s:fielderror fieldName="userProfileDTO.gender" />
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col">
						<div class="inputLabel">
							Location <span class="asterisk">*</span>
						</div>
						<div class="inputField">
							<div class="flW">
								<s:textfield label="location" name="userProfileDTO.location"
									id="location" cssClass="required textField" />
								<s:fielderror fieldName="userProfileDTO.location" />
							</div>
						</div>
					</div>
					<div class="col">
						<div class="inputLabel">
							Weight <span class="asterisk">*</span>
						</div>
						<div class="inputField">
							<div class="flW">
								<s:textfield label="Weight" name="userProfileDTO.weight"
									id="weight" cssClass="required textField" />
								<s:fielderror fieldName="userProfileDTO.weight" />
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="inputLabel">
							Postal Code <span class="asterisk">*</span>
						</div>
						<div class="inputField">
							<div class="flW">
								<s:textfield label="Pin Code" name="userProfileDTO.postalCode"
									id="pincode" cssClass="required textField" />
								<s:fielderror fieldName="userProfileDTO.postalCode" />
							</div>
						</div>
					</div>

				</div>
				<div class="row">
					<div class="col">
						<div class="inputLabel">Secondary Mobile No.</div>
						<div class="inputField">
							<div class="flW">
								<s:textfield label="Secondary Mobile Number"
									name="userProfileDTO.secondaryContactNumber" id="sMobileNumber"
									cssClass="textField" />
								<s:fielderror fieldName="userProfileDTO.secondaryContactNumber" />
							</div>
						</div>
					</div>

				</div>
				<div class="row">
					<div class="submitBtn">
						<s:submit name="Registration" cssClass="button" />
					</div>
				</div>
			</div>
		</s:form>
	</div>
</body>