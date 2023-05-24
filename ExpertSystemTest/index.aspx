<%@ Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ExpertSystemTest.index" %>

<asp:Content ID="Content1" contentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" contentPlaceHolderID="ContentPlaceholder1" Runat="Server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <asp:ListView ID="ListView1" runat="Server">
        <ItemTemplate>

             <div class="staff-container">
                 <div class="staff">
                     <div class="staff-picture"><img src="<%#Eval("Img_url") %>" alt="Photo of "<%# Eval("name") %>></div>
                        <a href="https://www.msubillings.edu/citycollege/programs/ProgAccountingTech.htm">
                            <p>
                                <h3 class="name"><%# Eval("name") %></h3><br />
                                <%# Eval("College") %><br />
                                <%# Eval("Dept") %><br />
                                <span class="bold"><%# Eval("Specialization") %></span>
                            </p>
                            
                      
                        </a>
                     </div>
                    </div>
            
                        
       
        </ItemTemplate>
    </asp:ListView>
</asp:Content>

