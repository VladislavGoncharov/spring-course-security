<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>

<html>

<body>

<h3>Information for all employees</h3>
<br><br>
<security:authorize access="hasRole('HR')">


    <input type="button" value="Salary"
           onclick="window.location.href='hr_info'">
    <br><br>
    <h1>Only for HR staff</h1>
    <br><br>
</security:authorize>

<security:authorize access="hasRole('MANAGER')">
    <input type="button" value="Performance"
           onclick="window.location.href='manager_info'">
    <br><br>
    <h1>Only for Managers</h1>
    <br><br>
</security:authorize>




</body>


</html>
