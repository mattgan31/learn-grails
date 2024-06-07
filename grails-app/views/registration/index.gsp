<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Register</title>
</head>
<body>
    <h1>Register</h1>

    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>

    <g:form controller="registration" action="register">
        <fieldset class="form">
            <div class="fieldcontain ${hasErrors(bean: user, field: 'username', 'error')}">
                <label for="username">Username</label>
                <g:textField name="username" value="${user?.username}" required=""/>
                <g:hasErrors bean="${user}" field="username">
                    <g:eachError bean="${user}" field="username">
                        <div class="errors">${it.defaultMessage}</div>
                    </g:eachError>
                </g:hasErrors>
            </div>

            <div class="fieldcontain ${hasErrors(bean: user, field: 'password', 'error')}">
                <label for="password">Password</label>
                <g:passwordField name="password" required=""/>
                <g:hasErrors bean="${user}" field="password">
                    <g:eachError bean="${user}" field="password">
                        <div class="errors">${it.defaultMessage}</div>
                    </g:eachError>
                </g:hasErrors>
            </div>

            <%-- <div class="fieldcontain ${hasErrors(bean: user, field: 'email', 'error')}">
                <label for="email">Email</label>
                <g:textField name="email" value="${user?.email}" required=""/>
                <g:hasErrors bean="${user}" field="email">
                    <g:eachError bean="${user}" field="email">
                        <div class="errors">${it.defaultMessage}</div>
                    </g:eachError>
                </g:hasErrors>
            </div> --%>
        </fieldset>

        <fieldset class="buttons">
            <g:submitButton name="register" value="Register"/>
        </fieldset>
    </g:form>
</body>
</html>
