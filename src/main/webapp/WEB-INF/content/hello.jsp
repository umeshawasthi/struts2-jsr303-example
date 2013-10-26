<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title><s:text name="hello.message"/></title>
</head>

<body>
<h2><s:property value="message"/></h2>

<h3>Languages</h3>
<ul>
    <li>
        <s:url id="url" action="hello">
            <s:param name="request_locale">en</s:param>
        </s:url>
        <s:a href="%{url}">English</s:a>
    </li>
    <li>
        <s:url id="url" action="hello">
            <s:param name="request_locale">es</s:param>
        </s:url>
        <s:a href="%{url}">Espanol</s:a>
    </li>
    
     <li>
        <s:url id="url" action="simpleValidationAction"/>
        
        <s:a href="%{url}">Simple Bean Validation</s:a>
    </li>
    
    <li>
        <s:url id="url" action="modelValidationAction"/>
       
        <s:a href="%{url}">Bean Validation For Model Driven Action</s:a>
    </li>
    
    <li>
        <s:url id="url" action="crossFieldConstraints"/>
       
        <s:a href="%{url}">Cross Field Constraints</s:a>
    </li>
    
     <li>
        <s:url id="url" action="customFieldConstraints"/>
       
        <s:a href="%{url}">Custom Field Constraints</s:a>
    </li>
    
      <li>
        <s:url id="url" action="xmlFieldConstraintsValidation"/>
       
        <s:a href="%{url}">XML Field Constraints</s:a>
    </li>
</ul>

<s:fielderror fieldName="message"/>
<s:actionerror/>

</body>
</html>
