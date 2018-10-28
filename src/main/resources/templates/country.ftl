<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Country Management</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns" crossorigin="anonymous">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container">
        <div class="jumbotron">
            <h1>Country Management</h1>
        </div>
        <div class="row">
            <form action="/country/new" method="POST" class="col">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input name="name" id="name" type="text" class="form-control" >
                </div>

                <div class="form-group">
                    <label for="acronym">Acronym</label>
                    <input name="acronym" id="acronym" type="text" class="form-control" >
                </div>

                <div class="form-group">
                    <label for="phoneDigits">Phone Digits</label>
                    <input name="phoneDigits" id="phoneDigits" type="number" class="form-control" >
                </div>

                <input type="submit" value="Create" class="btn btn-primary">
            </form>

        </div>

        <div class="row table-responsive">
            <table class="col table table-striped table-hover">
                <thead class="thead-light">
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Acronym</th>
                        <th>Phone Digits</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                <#list countryList as country>
                    <tr>
                        <td>${country.id}</td>
                        <td>${country.name}</td>
                        <td>${country.acronym}</td>
                        <td>${country.phoneDigits}</td>
                        <td>  
                            <form action="/country/delete/" method="post">
                                <input name="id" type="hidden" value="${country.id}">
                                <a onclick="this.parentNode.submit()" title="Deletar Usuário"><i class="fas fa-trash"></i></a>
                            </form>
                    </tr>
                </#list>    
                </tbody>
            </table>
        </div>
    </div>

</body>

</html>
