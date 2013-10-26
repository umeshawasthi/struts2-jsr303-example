<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<link href="http://localhost:7777/struts2-jsr303/style.css"
	rel="stylesheet" type="text/css" media="all" />
<title>XML based Validation</title>
</head>
<body>
	<div class="midCntCol2">
		<div class="pageTitle">Register</div>
		<s:actionerror />
		<s:form action="executeXmlFieldConstraintsValidation" theme="simple" id="registration">
			<div class="dvMainForm">

				<div class="row">
					<div class="col">
						<div class="inputLabel">
							Email ID <span class="asterisk">*</span>
						</div>
						<div class="inputField">
							<div class="flW">
							<s:textfield label="Email" name="xmlValidationConstraintsDTO.email"
										id="email" cssClass="required email textField" />
							<s:fielderror fieldName="xmlValidationConstraintsDTO.email" />
							</div>
						</div>
					</div>
					<div class="col">
					
						<div class="inputLabel">
							Moblie Number <span class="asterisk">*</span>
						</div>
						<div class="inputField">
							<div class="flW">
								<s:textfield label="Mobile No" name="xmlValidationConstraintsDTO.mobile"
									id="mobile" cssClass="required textField" />
								<s:fielderror fieldName="xmlValidationConstraintsDTO.mobile" />
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
								<s:textfield label="Name" name="xmlValidationConstraintsDTO.name" id="name"
									cssClass="required textField" />
								<s:fielderror fieldName="xmlValidationConstraintsDTO.name" />

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
									name="xmlValidationConstraintsDTO.confirmName" id="confirmName"
									cssClass="required textField" />
								<s:fielderror fieldName="xmlValidationConstraintsDTO.confirmName" />

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
									name="xmlValidationConstraintsDTO.dateOfBirth" id="dateOfBirth"
									cssClass="required textField" />
								<s:fielderror fieldName="xmlValidationConstraintsDTO.dateOfBirth" />
							</div>
						</div>
					</div>
					<div class="col">
						<div class="inputLabel">
							Gender <span class="asterisk">*</span>
						</div>
						<div class="inputField">
							<div class="flW rdo">
								<s:radio name="xmlValidationConstraintsDTO.gender" cssClass="chkinput"
									list="#{'Male':'Male','Female':'Female'}" id="gender"
									value="%{user_gender}" theme="xhtml">
								</s:radio>
								<s:fielderror fieldName="xmlValidationConstraintsDTO.gender" />
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
								<s:textfield label="location" name="xmlValidationConstraintsDTO.location"
									id="location" cssClass="required textField" />
								<s:fielderror fieldName="xmlValidationConstraintsDTO.location" />
							</div>
						</div>
					</div>
					<div class="col">
						<div class="inputLabel">
							Weight <span class="asterisk">*</span>
						</div>
						<div class="inputField">
							<div class="flW">
								<s:textfield label="Weight" name="xmlValidationConstraintsDTO.weight"
									id="weight" cssClass="required textField" />
								<s:fielderror fieldName="xmlValidationConstraintsDTO.weight" />
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
								<s:textfield label="Pin Code" name="xmlValidationConstraintsDTO.postalCode"
									id="pincode" cssClass="required textField" />
								<s:fielderror fieldName="xmlValidationConstraintsDTO.postalCode" />
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
									name="xmlValidationConstraintsDTO.secondaryContactNumber" id="sMobileNumber"
									cssClass="textField" />
								<s:fielderror fieldName="xmlValidationConstraintsDTO.secondaryContactNumber" />
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