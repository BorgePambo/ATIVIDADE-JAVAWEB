<%@page import="Escola.Alunos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="Google-Noto-Emoji-Travel-Places-42496-school.ico" type="image/x-icon" />
        <title>Universidade Uninove</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <style>
        body {
            background-color:  #d1d1d1;
        }

        #customizar {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: #f1f1f1;
            width: 100%;
        }

        #customizar td, #customizar th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customizar tr:nth-child(even){background-color: #4F4F4F;}

        #customizar tr:hover {background-color: #ddd;}

        #customizar th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #F0FFFF;
            color: black;
        }
    </style>
    <body>
        <h1 style="color: whitesmoke; text-align: center; background-color: black;">Colégio N. S. Auxiliadora</h1>
        <h2 style="color:whitesmoke; text-align: center; ">Lista de alunos</h2>
        <h4 style="color:whitesmoke; text-align: center;">3° Ano Ensino Médio </h4>
        <a style="background-color:rgba(255, 99, 71, 0.5);" href="page2.jsp" target="_self" rel="external">Pagina 2</a>

        <%
            List<Alunos> alunos = new ArrayList<Alunos>();
            alunos.add(new Alunos("Alberto Thiago", 123456789, 4.0, 4.0, 4.0, 4.0));
            alunos.add(new Alunos("Bruno Bastos", 321654987, 4.0, 4.0, 4.0, 4.0));
            alunos.add(new Alunos("Centro comercial Dudas", 789123456, 4.0, 4.0, 4.0, 4.0));
            alunos.add(new Alunos("Ernst Handel", 974123453, 4.0, 4.0, 4.0, 4.0));
            alunos.add(new Alunos("Island Trading", 123698523, 4.0, 4.0, 4.0, 4.0));
            alunos.add(new Alunos("Kollin Essen", 5563324, 6.0, 7.0, 4.0, 4.0));
            out.println("<table id='customizar'>");
            out.println("<tr>"
                    + "<th>Nome do Aluno</th>"
                    + "<th>RA</th>"
                    + "<th>Nota 1</th>"
                    + "<th>Nota 2</th>"
                    + "<th>Nota 3</th>"
                    + "<th>Nota 4</th>"
                    + "<th>Média</th>"
                    + "</tr>");
            for (Alunos aluno : alunos) {
                aluno.setMedia(aluno.getNota1(), aluno.getNota2(), aluno.getNota3(), aluno.getNota4());
                out.println("<tr>"
                        + "<td>" + aluno.getNome() + "</td>"
                        + "<td>" + aluno.getRA() + "</td>"
                        + "<td>" + aluno.getNota1() + "</td>"
                        + "<td>" + aluno.getNota2() + "</td>"
                        + "<td>" + aluno.getNota3() + "</td>"
                        + "<td>" + aluno.getNota4() + "</td>"
                        + "<td>" + aluno.getMedia() + "</td"
                        + "</tr>");
            }
            out.println("</table>");

        %>
       
    </body>
</html>

