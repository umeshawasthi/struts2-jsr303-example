<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<link href="http://localhost:7777/struts2-jsr303/style.css"
	rel="stylesheet" type="text/css" media="all" />
<title>Validation For Model Driven Action</title>
</head>
<body>
<div class="midCntCol2">
	<div class="pageTitle">Register</div>
	<s:form action="registerModelUserProfile" theme="simple"
		id="registration">
		<s:actionerror />
		<div class="dvMainForm">

			<div class="row">
				<div class="col">
					<div class="inputLabel">
						Email ID <span class="asterisk">*</span>
					</div>
					<div class="inputField">
						<div class="flW">


							<s:textfield label="Email" name="email" id="email"
								cssClass="required email textField" />

							<s:fielderror fieldName="email" />
						</div>
					</div>
				</div>
				<div class="col">

					<div class="inputLabel">
						Moblie Number <span class="asterisk">*</span>
					</div>
					<div class="inputField">
						<div class="flW">
							<s:textfield label="Mobile No" name="mobile" id="mobile"
								cssClass="required textField" />
							<s:fielderror fieldName="mobile" />
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
							<s:textfield label="Name" name="name" id="name"
								cssClass="required textField" />
							<s:fielderror fieldName="name" />

						</div>
					</div>
				</div>

				<div class="col">
					<div class="inputLabel">
						Confirm Name <span class="asterisk">*</span>
					</div>
					<div class="inputField">
						<div class="flW">
							<s:textfield label="confirm Name" name="confirmName"
								id="confirmName" cssClass="required textField" />
							<s:fielderror fieldName="confirmName" />

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
							<s:textfield label="Date of Birth" name="dateOfBirth"
								id="dateOfBirth" cssClass="required textField" />
							<s:fielderror fieldName="dateOfBirth" />
						</div>
					</div>
				</div>
				<div class="col">
					<div class="inputLabel">
						Gender <span class="asterisk">*</span>
					</div>
					<div class="inputField">
						<div class="flW rdo">
							<s:radio name="gender" cssClass="chkinput"
								list="#{'Male':'Male','Female':'Female'}" id="gender"
								value="%{user_gender}" theme="xhtml">
							</s:radio>
							<s:fielderror fieldName="gender" />
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
							<s:textfield label="location" name="location" id="location"
								cssClass="required textField" />
							<s:fielderror fieldName="location" />
						</div>
					</div>
				</div>
				<div class="col">
					<div class="inputLabel">
						Weight <span class="asterisk">*</span>
					</div>
					<div class="inputField">
						<div class="flW">
							<s:textfield label="Weight" name="weight" id="weight"
								cssClass="required textField" />
							<s:fielderror fieldName="weight" />
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
							<s:textfield label="Pin Code" name="postalCode" id="pincode"
								cssClass="required textField" />
							<s:fielderror fieldName="postalCode" />
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
								name="secondaryContactNumber" id="sMobileNumber"
								cssClass="textField" />
							<s:fielderror fieldName="secondaryContactNumber" />
						</div>
					</div>
				</div>

			</div>





			<div class="row">
				<div class="submitBtn">
					<s:submit name="Registration" value="Register" cssClass="button" />
				</div>
			</div>
		</div>
	</s:form>
</div>
</body>
</html>


