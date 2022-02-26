<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="NewProjectDemo.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome To Our Page</title>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" />

    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function btnview() {

            var Name = document.getElementById("txtname").Value;
            var Email = document.getElementById("txtemail").Value;
            var Contact = document.getElementById("txtcontact").Value;
            var password = document.getElementById("txtpass").Value;
            if (password != nul) {

                var table = document.getElemetById("tblsavedata");
                var rowcnt = table.rows.lenght;
                var row = table.insert row(rowcnt);
                var cell1 = row.insertcell(0);
                var cell2 = row.insertcell(1);
                var cell3 = row.insertcell(2);
                var cell4 = row.insertcell(3);
                cell.InnerHTML = Name;
                cell.InnerHTML = email;
                cell.InnerHTML = contact;
                cell.InnerHTML = password;
            }
        }
    </script>


    <script>
        Swal.fire({
            title: 'Error!',
            text: 'Do you want to continue',
            icon: 'error',
            confirmButtonText: 'Cool'
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <section class="vh-100" style="background-color: #eee;">
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-12 col-xl-11">
                        <div class="card text-black" style="border-radius: 25px;">
                            <div class="card-body p-md-5">
                                <div class="row justify-content-center">
                                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign Up</p>


                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <input type="text" id="txtname" runat="server" class="form-control" />
                                                <label class="form-label" for="form3Example1c" runat="server" id="lblname">Your Name</label>
                                            </div>
                                        </div>

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <input type="email" id="txtemail" runat="server" class="form-control" />
                                                <label class="form-label" runat="server" id="lblemail" for="form3Example3c">Your Email</label>
                                            </div>
                                        </div>
                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <input type="email" id="txtcontact" runat="server" class="form-control" />
                                                <label class="form-label" runat="server" id="lblcontactno" for="form3Example3c">Your contact</label>
                                            </div>
                                        </div>



                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <input type="password" id="txtpass" runat="server" class="form-control" />
                                                <label class="form-label" for="form3Example4c" runat="server" id="lblpass">Password</label>
                                            </div>
                                        </div>




                                        <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">


                                            <button type="button" id="btnview" runat="server" onserverclick="btnview_ServerClick" class="btn btn-primary btn-lg">Register</button>
                                        </div>



                                    </div>
                                    <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp" class="img-fluid" alt="Sample image">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="container">
            <div class="card">

                <table border="1" class="tblclass" id="tblsavedata">
                    <thead style="color:seagreen">


                        <tr>
                            <b>
                                <th>Name</th>
                                

                                <th>Email</th>
                                
                                <th>Contact</th>
                                
                                <th>password</th>
                            </b>
                        </tr>
                    </thead>


                    <tbody>
                        <asp:Repeater ID="repeat_data" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("name")%></td>
                                    <td><%#Eval("email")%></td>
                                    <td><%#Eval("contact")%></td>
                                    <td><%#Eval("password")%></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
        </div>




    </form>
</body>

</html>
