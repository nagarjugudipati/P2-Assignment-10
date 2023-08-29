<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductRegistration.aspx.cs" Inherits="WebAppAssignment10.ProductRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

    <title>Product Registration</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 26px;
        }
        body{
            background-color:cyan;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td>Product Image</td>
                    <td>
                                     <div class="col-md-4"><asp:Image runat="server" ID="Image3" ImageUrl="~/Images/cam.jpeg" Width="500" Height="500" CssClass="img-fluid" /></div>
                        </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td>Product Name</td>
                    <td>
                        <asp:TextBox ID="TxtName" runat="server" EnableViewState="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td>Category</td>
                    <td>
                        <asp:DropDownList ID="TxtCategory" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtCategory" ErrorMessage="Please Select Category" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td>
                        <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtPrice" ErrorMessage="Please Enter Price" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TxtPrice" ErrorMessage="Must Enter Integer Values" ForeColor="Red" MaximumValue="50000" MinimumValue="500" Type="Integer"></asp:RangeValidator>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td>
                        <asp:TextBox ID="TxtDesc" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtDesc" ErrorMessage="Please Enter Description About Product" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td>Release Date</td>
                    <td>
                        <asp:Calendar ID="TxtCal" runat="server"></asp:Calendar>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="BtnRegister" runat="server" OnClick="BtnRegister_Click" Text="Register Product" />
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
