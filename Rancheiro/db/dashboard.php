<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    
    <title>DashBoard</title>

</head>

<body style="background-color: #4CAF50;">
    <div class="container mt-5">
    <p class="h1 text-center color:white">RELATORIO DIARIO</p>

        <div class="container bg-light mt-5 mb-5">
            <?php include 'conexao.php';

            // Tabela para Soldado e Cabo
            $sqlSoldadoCabo = "SELECT postoGraduacao, nomeDeGuerra,IDCompanhia, status FROM usuario WHERE postoGraduacao IN ('Soldado', 'Cabo')";
            $resultSoldadoCabo = $conn->query($sqlSoldadoCabo);

            echo "<h2>Soldados e Cabos</h2>";
            echo "<table class='table table-striped' border='1'>
            <tr>
                <th scope='col'>OM / </th>
                <th scope='col'>Posto / Graduação</th>
                <th scope='col'>Nome de Guerra</th>
                <th scope='col'>Status</th>
            </tr>";

            // Verifica se há resultados para Soldado e Cabo
            if ($resultSoldadoCabo->num_rows > 0) {
                // output data de cada linha
                while ($row = $resultSoldadoCabo->fetch_assoc()) {


                    echo "<tr>";
                    echo "<td>" . $row["IDCompanhia"] . "</td>";
                    echo "<td>" . $row["postoGraduacao"] . "</td>";
                    echo "<td>" . $row["nomeDeGuerra"] . "</td>";
                    

                    $status = ($row["status"] == 1) ? "Interno" : "Externo";
                    echo "<td>" . $status . "</td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='3'>0 resultados</td></tr>";
            }
            echo "</table>";

            // Tabela para Sargento
            $sqlSargento = "SELECT postoGraduacao, nomeDeGuerra, status FROM usuario WHERE postoGraduacao = 'Sargento'";
            $resultSargento = $conn->query($sqlSargento);

            echo "<h2>Sargentos / Sub-Tenentes</h2>";
            echo "<table class='table table-striped' border='1'>
            <tr>
                <th scope='col'>Posto / Graduação</th>
                <th scope='col'>Nome de Guerra</th>
                <th scope='col'>Status</th>
            </tr>";

            // Verifica se há resultados para Sargento
            if ($resultSargento->num_rows > 0) {
                // output data de cada linha
                while ($row = $resultSargento->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row["postoGraduacao"] . "</td>";
                    echo "<td>" . $row["nomeDeGuerra"] . "</td>";

                    $status = ($row["status"] == 1) ? "Interno" : "Externo";
                    echo "<td>" . $status . "</td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='3'>0 resultados</td></tr>";
            }
            echo "</table>";

            // Tabela para Tenente
            $sqlTenente = "SELECT postoGraduacao, nomeDeGuerra, status FROM usuario WHERE postoGraduacao = 'Tenente'";
            $resultTenente = $conn->query($sqlTenente);

            echo "<h2>Oficiais</h2>";
            echo "<table class='table table-striped' border='1'>
            <tr>
                <th scope='col'>Posto / Graduação</th>
                <th scope='col'>Nome de Guerra</th>
                <th scope='col'>Status</th>
            </tr>";

            // Verifica se há resultados para Tenente
            if ($resultTenente->num_rows > 0) {
                // output data de cada linha
                while ($row = $resultTenente->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row["postoGraduacao"] . "</td>";
                    echo "<td>" . $row["nomeDeGuerra"] . "</td>";

                    $status = ($row["status"] == 1) ? "Interno" : "Externo";
                    echo "<td>" . $status . "</td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='3'>0 resultados</td></tr>";
            }
            echo "</table>";
            echo "<br>";

            // Fechar conexão
            $conn->close();
            ?>
        </div>
    </div>

</body>

</html>