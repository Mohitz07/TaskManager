<%@ include file="common/header.jspf" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
    body {
        background-color: #f8f9fa; /* Fallback color */
        background-image: url('/images/wallpapersden.com_solo-leveling-cool-amazing_2048x1092.jpg'); /* Replace with your image path */
        background-size: cover;
        background-repeat: no-repeat;
        color: #333;
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .login-container {
        width: 400px;
        padding: 30px;
        background-color: rgba(255, 255, 255, 0.8);
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }

    h1 {
        color: #343a40;
        text-align: center;
        margin-bottom: 30px;
    }

    .alert {
        margin-bottom: 20px;
        border-radius: 5px;
        padding: 10px;
    }

    .alert-danger {
        background-color: #f8d7da;
        border-color: #f5c6cb;
        color: #721c24;
    }

    .alert-info {
        background-color: #d1ecf1;
        border-color: #bee5eb;
        color: #0c5460;
    }

    .alert-success {
        background-color: #d4edda;
        border-color: #c3e6cb;
        color: #155724;
    }

    .form-label {
        font-weight: bold;
        color: #495057;
    }

    .form-control {
        border: 1px solid #ced4da;
        border-radius: 5px;
        padding: 10px;
        margin-bottom: 20px;
        font-size: 1rem;
    }

    .form-control:focus {
        border-color: #007bff;
        box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
    }

    .btn-primary {
        background-color: red; /* Changed button background to red */
        color: #fff;
        border: none;
        padding: 12px 20px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 1rem;
        transition: background-color 0.3s ease;
        width: 100%;
    }

    .btn-primary:hover {
        background-color: darkred; /* Darker red on hover */
    }

    .mt-3 {
        text-align: center;
    }

    .mt-3 a {
        color: red; /* Changed link color to red */
        text-decoration: none;
        font-weight: bold;
    }

    .mt-3 a:hover {
        text-decoration: underline;
    }
</style>
<div class="container">
    <div class="login-container">
        <h1>Login</h1>
        <c:if test="${param.error != null}">
            <div class="alert alert-danger">Invalid username or password</div>
        </c:if>
        <c:if test="${param.logout != null}">
            <div class="alert alert-info">You have been logged out</div>
        </c:if>
        <c:if test="${registrationSuccess != null}">
            <div class="alert alert-success">${registrationSuccess}</div>
        </c:if>
        <form method="post" action="/login">
            <fieldset class="mb-3">
                <label for="username" class="form-label">Username:</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username">
            </fieldset>
            <fieldset class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password">
            </fieldset>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button type="submit" class="btn btn-primary">Log In</button>
        </form>
        <div class="mt-3">
            <a href="/register">New user? Register here</a>
        </div>
    </div>
</div>
<%@ include file="common/footer.jspf" %>