<html>
    <head> 
        <title>Cadastro Professores</title>
        <link rel="stylesheet" href="style/cadastro_professor.css">
        <link rel="shortcut icon" href="IMG/ilustracao-3d-da-fatura-de-confirmacao-de-pagamento-removebg-preview.png" type="image/x-icon">
    </head>
    <body>
        <h2>Cadastro Professores</h2>

        
        <form action="" method="post">
            
        <label for="departamento">Departamento:</label>
        <input type="text" id="departamento" nome="departamento">

        <label for="salario_base">Salario Base:</label>
        <input type="number" step="0.01" id="salario_base">

        <label for="beneficios">Benefícios:</label>
        <input type="number" step="0.01" id="beneficios">
        
        <label for="Descontos">Descontos:</label>
        <input type="number" step="0.01" id="descontos">

        <button type= "submit">Adicionar Professor</button>


        </form>
    </body>
</html>