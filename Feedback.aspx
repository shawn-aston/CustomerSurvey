<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /* Customize the label (the container) */
        .container {
            display: block;
            position: relative;
            padding-left: 15px;
            margin-bottom: 12px;
            cursor: pointer;
        }

        input[type=text], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .tble {
            border: 1px solid black;
            font-size: 18px;
            font-family: Frutiger LT Std, Helvetica, Arial, San Serif;
            padding-right: 59px;
            padding-left: 100px;
        }

        .button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="tble">
                <tr>
                    <th colspan="2">
                        Customer Survey
                    </th>
                </tr>
                <tr>
                    <td>Ticket Number</td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txt_call_id" placeholder="Ticket Number.." runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Did you find it easy to navigate the main greeting to reach an Agent?

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButtonList ID="rbtn_q1_option" runat="server" class="container" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1">Very Satisfied</asp:ListItem>
                            <asp:ListItem Value="2">Satisfied</asp:ListItem>
                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                            <asp:ListItem Value="4">Dissatisfied</asp:ListItem>
                            <asp:ListItem Value="5">Very Dissatisfied</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txt_q1_comment" placeholder="Comment.." runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>How would you rate your wait time until answered by an Agent?

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButtonList ID="rbtn_q2_option" runat="server" class="container" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1">Very Satisfied</asp:ListItem>
                            <asp:ListItem Value="2">Satisfied</asp:ListItem>
                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                            <asp:ListItem Value="4">Dissatisfied</asp:ListItem>
                            <asp:ListItem Value="5">Very Dissatisfied</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txt_q2_comment" placeholder="Comment.." runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Did the Agent conduct themselves in a professional manner?

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButtonList ID="rbtn_q3_option" runat="server" class="container" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1">Very Satisfied</asp:ListItem>
                            <asp:ListItem Value="2">Satisfied</asp:ListItem>
                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                            <asp:ListItem Value="4">Dissatisfied</asp:ListItem>
                            <asp:ListItem Value="5">Very Dissatisfied</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txt_q3_comment" placeholder="Comment.." runat="server"></asp:TextBox>
                    </td>
                </tr>


                <tr>
                    <td>Was the Agent patient and courteous?

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButtonList ID="rbtn_q4_option" runat="server" class="container" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1">Very Satisfied</asp:ListItem>
                            <asp:ListItem Value="2">Satisfied</asp:ListItem>
                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                            <asp:ListItem Value="4">Dissatisfied</asp:ListItem>
                            <asp:ListItem Value="5">Very Dissatisfied</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txt_q4_comment" placeholder="Comment.." runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>How would you rate the technical knowledge of the Agent?

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButtonList ID="rbtn_q5_option" runat="server" class="container" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1">Very Satisfied</asp:ListItem>
                            <asp:ListItem Value="2">Satisfied</asp:ListItem>
                            <asp:ListItem Value="3">Neutral</asp:ListItem>
                            <asp:ListItem Value="4">Dissatisfied</asp:ListItem>
                            <asp:ListItem Value="5">Very Dissatisfied</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txt_q5_comment" placeholder="Comment.." runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td style="text-align: center;">
                        <asp:Button ID="btn_save" runat="server" CssClass="button" Text="SUBMIT" OnClick="btn_save_Click" />

                    </td>
                </tr>


            </table>

        </div>
    </form>
</body>
</html>
