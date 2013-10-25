<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<link href="http://localhost:7777/struts2-jsr303/style.css"
	rel="stylesheet" type="text/css" media="all" />
<title>Simple Bean Based Validation Showing Custom Field constraints</title>
</head>
<body>
	<div class="midCntCol2">
		<div class="pageTitle">Register</div>
		<s:actionerror />
		<s:form action="executeCustomFieldConstraints" theme="simple" id="registration">
			<div class="dvMainForm">

				<div class="row">
					<div class="col">
						<div class="inputLabel">
							Field1 <span class="asterisk">*</span>
						</div>
						<div class="inputField">
							<div class="flW">
								<s:textfield label="Value1"
									name="customFieldConstraintsDTO.value1" id="value1"
									cssClass="required email textField" />
								<s:fielderror fieldName="customFieldConstraintsDTO.value1" />
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