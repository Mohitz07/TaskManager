<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="common/header.jspf" %>
<style>
    body {
        background-color: #f8f9fa;
        background-image: url('/images/wallpapersden.com_solo-leveling-cool-amazing_2048x1092.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        color: white;
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .register-container {
        width: 400px;
        padding: 30px;
        background-color: rgba(0, 0, 0, 0.5);
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
    }

    h1 {
        color: white;
        text-align: center;
        margin-bottom: 30px;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
    }

    .form-label {
        font-weight: bold;
        color: white;
        text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
    }

    .form-control {
        border: 1px solid #ced4da;
        border-radius: 5px;
        padding: 10px;
        margin-bottom: 20px;
        font-size: 1rem;
        color: black;
    }

    .form-control:focus {
        border-color: #007bff;
        box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
    }

    .btn-primary {
        background-color: red; /* Changed button color to red */
        color: white;
        border: none;
        padding: 12px 20px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 1rem;
        transition: background-color 0.3s ease;
        width: 100%;
        text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.8);
    }

    .btn-primary:hover {
        background-color: darkred;
    }

    .mt-3 {
        text-align: center;
    }

    .mt-3 a {
        color: red; /* Changed link color to red */
        text-decoration: none;
        font-weight: bold;
        text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.8);
    }

    .mt-3 a:hover {
        text-decoration: underline;
    }

    .text-danger {
        color: #dc3545;
        font-size: 0.875rem;
        margin-top: 0.25rem;
        text-shadow: none;
    }
</style>
<div class="container">
    <div class="register-container">
        <h1>User Registration</h1>
        <form method="post">
            <fieldset class="mb-3">
                <label for="username" class="form-label">Username:</label>
                <input type="text" class="form-control" id="username" name="username" required="required">
                <small class="text-danger"><form:errors path="username"/></small>
            </fieldset>
            <fieldset class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <input type="password" class="form-control" id="password" name="password" required="required">
                <small class="text-danger"><form:errors path="password"/></small>
            </fieldset>
            <button type="submit" class="btn btn-primary">Register</button>
        </form>
        <div class="mt-3">
            Already have an account? <a href="/login">Log in here</a>
        </div>
    </div>
</div>
<%@ include file="common/footer.jspf" %>
