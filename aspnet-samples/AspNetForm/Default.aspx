﻿<%@ Page Title="Default Group" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AspNetForm._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!--Reference the jQuery library. -->
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <!--Reference the SignalR library. -->
    <script src="Scripts/jquery.signalR-2.4.1.js"></script>
    <!--Reference the autogenerated SignalR hub script. -->
    <script src="/signalr/hubs"></script>
    <!--Reference the my style. -->
    <link href="Content/my.css" rel="stylesheet">
    <!--Reference the my js. -->
    <script src="Scripts/my.js"></script>

    <main>
        <div role="row">
            Message:
            <asp:TextBox ID="txtMessage" runat="server"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit To AspNet" OnClick="btnSubmit_Click" />
        </div>
        <table id="tblRows" class="styled-table">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Submited At</th>
                    <th>Message</th>
                    <th>Processed At</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td rowspan="5">loading...</td>
                </tr>
            </tbody>
        </table>
        <div id="status" role="row">
        </div>
    </main>

    <script type="text/javascript">
        $(function () {
            var notificationHub = startSignalR("tblRows", "default");
        });
    </script>
</asp:Content>
