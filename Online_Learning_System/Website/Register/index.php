<?php
session_start();

include 'RegisterForm.php';
include '../ConnectDB.php';


// Check if password is valid
function validatePassword($password)
{
    $errors = [];
    if (strlen($password) < 8) {
        $errors[] = "Password length must be at least 8 characters.";
    }

    if (!preg_match('/[a-z]/', $password)) {
        $errors[] = "Password should contain at least one lowercase letter.";
    }

    if (!preg_match('/[A-Z]/', $password)) {
        $errors[] = "Password should contain at least one uppercase letter.";
    }

    if (!preg_match('/\d/', $password)) {
        $errors[] = "Password should contain at least one number.";
    }

    if (!preg_match('/[^a-zA-Z\d]/', $password)) {
        $errors[] = "Password should contain at least one special character.";
    }
    return $errors;
}
// Function to verify the input data
function verify($username, $password, $email, $contactnumber)
{
    $errors = []; // Initialize an empty array for errors

    // Check if all fields are filled
    if (empty($username) || empty($password) || empty($email) || empty($contactnumber)) {
        $errors[] = "Please fill in all fields.";
    }

    // Check if username is valid
    if (!preg_match("/^[a-zA-Z0-9]*$/", $username)) {
        $errors[] = "Username can only contain letters and numbers.";
    }

    // Check if password and repeat password match
    if ($password !== $_POST["repeatpassword"]) {
        $errors[] = "Password and Repeat Password do not match.";
    }

    // Check if email is valid
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $errors[] = "Please enter a valid email address.";
    }

    // Check if contact number is valid
    if (!preg_match("/^(01[0-9])?\d{7,8}$/", $contactnumber)) {
        $errors[] = "Please enter a valid 10-digit phone number.";
    }

    return $errors; // Return the array of errors
}

// Check if the request method is POST
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get the input data from the form
    $username = $_POST['UserName'];
    $password = $_POST['Password'];
    $email = $_POST['Email'];
    $contactnumber = $_POST['ContactNumber'];

    $passwordErrors = validatePassword($password); // Get the array of errors
    $inputErrors = verify($username, $password, $email, $contactnumber); // Get the array of errors
    $errors = array_merge($passwordErrors, $inputErrors);
    if (empty($errors)) {
        // Insert the data into the database
        $insert = "INSERT INTO users(UserName, PasswordHash, Email, ContactNumber) VALUES (?, ?, ?, ?)";
        $stm = $conn->prepare($insert);
        $stm->bind_param("ssss", $username, $password, $email, $contactnumber);

        // Execute the query
        if ($stm->execute()) {
            // Show success message
            echo "<script>
                Swal.fire({
                    title: 'Success!',
                    text: 'Registration successful!',
                    icon: 'success'
                }).then(() => {
                    window.location.href = '../Login/Login.php'; // Redirect to login page after 'OK' is clicked
                });
            </script>";
        }

        // Close the statement
        $stm->close();
    } else {
        // Store errors in session
        $_SESSION['errors'] = $errors;
        exit();
    }
    // Close the connection
    $conn->close();
} else {
    $_SESSION['error_message'] = "Invalid request method."; // Store error in session for invalid request method
    exit();
}
?>