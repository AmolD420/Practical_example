<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product_Page.aspx.cs" Inherits="Practical_example.Product_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Bootstrap CSS -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js">
    </script>
   
    <script src="Product_Page.js" type="text/javascript"></script>
    <link href="Common.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .clstblwidth {
            width: 15px !important;
            font-size: 10px;
        }

        .clsftblwidth {
            width: 300px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-group row">
            <label for="staticEmail" class="col-sm-2 col-form-label">Select Plant :</label>
            <div class="col-sm-10" style="padding-top: 10px;">
                <select id='ddlPlant' class="form-control" style="width: 200px;">
                    
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label for="staticEmail" class="col-sm-2 col-form-label">Select Machine / Line :</label>
            <div class="col-sm-10" style="padding-top: 10px;">
                <select id='ddlPlantMachine' class="form-control" style="width: 200px;">
                    <option value="0">Select</option>
                </select>
            </div>
        </div>
        <label class="font-weight-bold">Packaging Test</label>
        <div>
            <table class="table table-striped table-bordered" id="binding-table">
                <thead>
                    <tr>
                        <th scope="col" class="clsftblwidth"></th>
                        <th scope="col" class="clstblwidth font-weight-bold">07:00-07:30</th>
                        <th scope="col" class="clstblwidth font-weight-bold">07:30-08:00</th>
                        <th scope="col" class="clstblwidth font-weight-bold">08:00-08:30</th>
                        <th scope="col" class="clstblwidth font-weight-bold">08:30-09:00</th>
                        <th scope="col" class="clstblwidth font-weight-bold">09:00-09:30</th>
                        <th scope="col" class="clstblwidth font-weight-bold">09:30-10:00</th>
                        <th scope="col" class="clstblwidth font-weight-bold">10:00-10:30</th>
                        <th scope="col" class="clstblwidth font-weight-bold">10:30-11:00</th>
                        <th scope="col" class="clstblwidth font-weight-bold">11:00-11:30</th>
                        <th scope="col" class="clstblwidth font-weight-bold">11:30-12:00</th>
                        <th scope="col" class="clstblwidth font-weight-bold">12:00-12:30</th>
                        <th scope="col" class="clstblwidth font-weight-bold">12:30-13:00</th>
                        <th scope="col" class="clstblwidth font-weight-bold">13:00-13:30</th>
                        <th scope="col" class="clstblwidth font-weight-bold">13:30-14:00</th>
                        <th scope="col" class="clstblwidth font-weight-bold">14:00-14:30</th>
                        <th scope="col" class="clstblwidth font-weight-bold">15:00-15:30</th>
                    </tr>
                </thead>
                <tbody class="tblData">
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
