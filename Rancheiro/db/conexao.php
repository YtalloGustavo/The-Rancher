<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "rancheiroteste";

// Cria conexão
$conn = new mysqli($servername, $username, $password, $database);

// Verifica conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

