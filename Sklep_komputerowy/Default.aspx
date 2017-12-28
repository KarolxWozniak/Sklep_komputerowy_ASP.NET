<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Sklep_komputerowy.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sklep_komputerowy</title>
    <style>
        .btn-group .button {
            width: 25%;
            background-color: #4CAF50; /* Green */
            border: 1px solid green;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
            float: left;
            transition: all 0.5s;
        }

            .btn-group .button span {
                cursor: pointer;
                display: inline-block;
                position: relative;
                transition: 0.5s;
            }

                .btn-group .button span:after {
                    content: '\00bb';
                    position: absolute;
                    opacity: 0;
                    top: 0;
                    right: -20px;
                    transition: 0.5s;
                }

            .btn-group .button:not(:last-child) {
                border-right: none; /* Prevent double borders */
            }

            .btn-group .button:hover span {
                padding-right: 25px;
            }

                .btn-group .button:hover span:after {
                    opacity: 1;
                    right: 0;
                }

        marquee {
            font-size: 25px;
        }

        nav {
            float: left;
            max-width: 250px;
            padding-top: 40px;
        }

        article {
            margin-left: 250px;
            border-left: 1px solid gray;
            border-right:1px solid gray;
            padding: 20px;
            border-bottom: 1px solid black;
        }

        footer {
            color: white;
            background-color: black;
            clear: left;
            text-align: center;
            padding: 20px;
        }

        .text1 {
            margin-left: 13px;
        }

        .przycisk2 {
            margin-left: 80px;
        }

        .text2 {
            margin-left: 20px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" src="https://www.euro.com.pl/upload_module/events/lg/sis/top_baner5.jpg" Width="100%" />
        </div>
        <hr />
        <div>
            <marquee bgcolor="aqua" height="30">!!! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pulvinar. !!!</marquee>
        </div>
        <hr />
        <div class="btn-group">
            <button class="button" type="button"><span>O nas</span></button>
            <button class="button" type="button"><span>Części</span></button>
            <button onclick="location.href='Register.aspx'" class="button" type="button"><span>Lorem ipsum</span></button>
            <button class="button" type="button"><span>Lorem ipsum</span></button>
        </div>
        <br />
        <nav id="Log_bar" runat="server" style="clear: both">
            <h4 style="vertical-align: bottom; text-align: center">Witamy na stronie</h4>
            <asp:Label ID="Label1" runat="server" Text="Nazwa"></asp:Label>
            <asp:TextBox class="text1" ID="TextBox1" runat="server" ></asp:TextBox>
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Hasło"></asp:Label>
            <asp:TextBox class="text2" ID="TextBox2" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button class="przycisk1" ID="Button1" runat="server" Text="Zaloguj" OnClick="Button1_Click" />
            <asp:Button class="przycisk2" ID="Button2" runat="server" Text="Zarejetruj" OnClick="Button2_Click" />
        </nav>
        <article>
            <h2>News_1</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque velit lorem, placerat non justo ac, luctus blandit metus. Nunc ut lorem tellus. Duis dignissim posuere mattis. In dapibus pellentesque ligula. Proin tempor purus vitae convallis laoreet. Aliquam erat volutpat. Nulla facilisi. Sed nec dictum magna, eu tincidunt lacus. Aliquam vestibulum.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque velit lorem, placerat non justo ac, luctus blandit metus. Nunc ut lorem tellus. Duis dignissim posuere mattis. In dapibus pellentesque ligula. Proin tempor purus vitae convallis laoreet. Aliquam erat volutpat. Nulla facilisi. Sed nec dictum magna, eu tincidunt lacus. Aliquam vestibulum.</p>
        </article>
        <article>
            <h2>News_2</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque velit lorem, placerat non justo ac, luctus blandit metus. Nunc ut lorem tellus. Duis dignissim posuere mattis. In dapibus pellentesque ligula. Proin tempor purus vitae convallis laoreet. Aliquam erat volutpat. Nulla facilisi. Sed nec dictum magna, eu tincidunt lacus. Aliquam vestibulum.</p>
        </article>
        <article>
            <h2>News_3</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque velit lorem, placerat non justo ac, luctus blandit metus. Nunc ut lorem tellus. Duis dignissim posuere mattis.</p>
            <p>Aliquam vestibulum.</p>
        </article>
        <footer>Copyright &copy; Sklep_komputerowy.com</footer>
    </form>
</body>
</html>
