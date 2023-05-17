<%@ Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ExpertSystemTest.index" %>

<asp:Content ID="Content1" contentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" contentPlaceHolderID="ContentPlaceholder1" Runat="Server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <asp:ListView ID="ListView1" runat="Server">
        <ItemTemplate>
            <div class="content">
            <div class="List">
                <table>
                   
                    <tr><td><img src="<%#Eval("Img_url") %>" class="center" ></td></tr>
                    <tr><td><h2><%# Eval("name") %></h2></td></tr>
                    <tr><td><p><%# Eval("College") %></p></td></tr>
                    <tr><td><p><strong>Department:</strong><br/><%# Eval("Dept") %></p></td></tr>
                    <tr><td><p><strong>Specialization:</strong><br/><%# Eval("Specialization") %></p></td></tr>
                        
                </table>
            </div>
            </div>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>

