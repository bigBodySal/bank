<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind ="adminPage.aspx.cs" Inherits="bank.adminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>

   <meta name="viewport" content="width=device-width, initial-scale=1"/>

   <link rel="stylesheet" href="/Content/bootstrap.min.css"  runat="server"/>

   <script src="bootstrap.min.js"></script>

   
    <title>The Bank</title>
    <style type="text/css">
        .auto-style1 {
            width: auto;
            height: 376px;
            margin-left: 67px;
        }
        .auto-style2 {
            margin-left: 0px;
            margin-right: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <ul class = "nav">
	<li><a href = "homePage.aspx">Signout</a></li>
	<li><a href = "about.aspx">About</a></li>
	<li><a href = "Careers.aspx">Careers</a></li>
	<li><a href = "contact.aspx">Contact</a></li>
		
  
  </ul>

        <div class="auto-style1" style="margin: 20px; padding: 50px; background-color: #FFFFFF; ">
            <asp:Label ID="Label1" runat="server" Font-Names="Century Gothic" Font-Size="XX-Large" ForeColor="#666666" Text="Welcome Admin!"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Users:" Font-Size="Large" ForeColor="#666666"></asp:Label>
            &nbsp;
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Member_ID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CssClass="auto-style2" ShowFooter="True" PageSize="5"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField HeaderText="Member_ID" SortExpression="Member_ID">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Member_ID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("Member_ID") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID ="lbInsert" ValidationGroup="INSERT" OnClick="lbInsert_Click" runat="server">Insert</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Member_UserName" SortExpression="Member_UserName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" width="100px"  runat="server" Text='<%# Bind("Member_UserName") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEdituserName" runat="server" ErrorMessage="username required"
                                ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Member_UserName") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID ="UsernameInsert" width="100px" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvInsertuserName" runat="server" ErrorMessage="username required"
                                ControlToValidate="UsernameInsert" ValidationGroup="INSERT" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Member_Password" SortExpression="Member_Password">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" width="100px"  runat="server" Text='<%# Bind("Member_Password") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvEditPassword" runat="server" ErrorMessage="password required"
                                ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Member_Password") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID ="PasswordInsert" width="100px" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvInsertPassword" runat="server" ErrorMessage="password required"
                                ControlToValidate="PasswordInsert" ValidationGroup="INSERT" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Member_Fname" SortExpression="Member_Fname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" width="100px"  runat="server" Text='<%# Bind("Member_Fname") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfveditFName" runat="server" ErrorMessage=" first name required"
                                ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Member_Fname") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID ="FnameInsert" width="100px" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvInsertFirstName" runat="server" ErrorMessage="first name required"
                                ControlToValidate="FnameInsert" ValidationGroup="INSERT" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                   
                    <asp:TemplateField HeaderText="Member_Lname" SortExpression="Member_Lname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" width="100px"  runat="server" Text='<%# Bind("Member_Lname") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditLName" runat="server" ErrorMessage="last name required"
                                ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Member_Lname") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID ="LnameInsert" width="100px" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvInsertLName" runat="server" ErrorMessage="last name required"
                                ControlToValidate="LnameInsert" ValidationGroup="INSERT" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                   
                    <asp:TemplateField HeaderText="Member_CheckingNum" SortExpression="Member_CheckingNum">
                        <EditItemTemplate>
                            <asp:TextBox ID="checkNumBox" width="100px"  runat="server" Text='<%# Bind("Member_CheckingNum") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditCheckNum" runat="server" ErrorMessage="checking number required"
                                ControlToValidate="checkNumBox" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Member_CheckingNum") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                             <asp:TextBox ID ="checkNumInsert" width="100px" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvInsertCheckingNum" runat="server" ErrorMessage="checking num required"
                                ControlToValidate="checkNumInsert" ValidationGroup="INSERT" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                   
                    <asp:TemplateField HeaderText="Member_SavingsNum" SortExpression="Member_SavingsNum">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5"  width="100px" runat="server" Text='<%# Bind("Member_SavingsNum") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditSavingsNum" runat="server" ErrorMessage="Savings number required"
                                ControlToValidate="TextBox5" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Member_SavingsNum") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID ="savingsNumInsert" width="100px" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvInsertSavingsNum" runat="server" ErrorMessage="savings number required"
                                ControlToValidate="savingsNumInsert" ValidationGroup="INSERT" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Member_CheckingTotal" SortExpression="Member_CheckingTotal">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" width="100px"  runat="server" Text='<%# Bind("Member_CheckingTotal") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditCheckingTotal" runat="server" ErrorMessage="CheckingTotal required"
                                ControlToValidate="TextBox6" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Member_CheckingTotal") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID ="checkingTotalInsert" width="100px" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvInsertCheckingTotal" runat="server" ErrorMessage="checking total required"
                                ControlToValidate="checkingTotalInsert" ValidationGroup="INSERT" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Member_SavingTotal" SortExpression="Member_SavingTotal">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7"  width="100px" runat="server" Text='<%# Bind("Member_SavingTotal") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditSavingsTotal" runat="server" ErrorMessage="savings total required"
                                ControlToValidate="TextBox7" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("Member_SavingTotal") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID ="savingsTotalInsert" width="100px" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvInsertSavingTotal" runat="server" ErrorMessage="savings total required"
                                ControlToValidate="savingsTotalInsert" ValidationGroup="INSERT" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <PagerStyle CssClass="pagerStyle" HorizontalAlign="Center" />
            </asp:GridView>
            <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="INSERT" ForeColor="Red" runat="server" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bankConnectionString %>" SelectCommand="SELECT * FROM [Members]" DeleteCommand="DELETE FROM [Members] WHERE [Member_ID] = @Member_ID" InsertCommand="INSERT INTO [Members] ([Member_UserName], [Member_Password], [Member_Fname], [Member_Lname],[Member_CheckingNum] ,[Member_SavingsNum], [Member_CheckingTotal], [Member_SavingTotal]) VALUES (@Member_UserName, @Member_Password, @Member_Fname, @Member_Lname, @Member_CheckingNum,@Member_SavingsNum, @Member_CheckingTotal, @Member_SavingTotal)" UpdateCommand="UPDATE [Members] SET [Member_UserName] = @Member_UserName, [Member_Password] = @Member_Password, [Member_Fname] = @Member_Fname, [Member_Lname] = @Member_Lname, [Member_CheckingNum] = @Member_CheckingNum, [Member_SavingsNum] = @Member_SavingsNum, [Member_CheckingTotal] = @Member_CheckingTotal, [Member_SavingTotal] = @Member_SavingTotal WHERE [Member_ID] = @Member_ID">
                <DeleteParameters>
                    <asp:Parameter Name="Member_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                  
                    <asp:Parameter Name="Member_UserName" Type="String" />
                    <asp:Parameter Name="Member_Password" Type="String" />
                    <asp:Parameter Name="Member_Fname" Type="String" />
                    <asp:Parameter Name="Member_Lname" Type="String" />
                    <asp:Parameter Name="Member_CheckingNum" Type="Int32" />
                    <asp:Parameter Name="Member_SavingsNum" Type="Int32" />
                    <asp:Parameter Name="Member_CheckingTotal" Type="Decimal" />
                    <asp:Parameter Name="Member_SavingTotal" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Member_UserName" Type="String" />
                    <asp:Parameter Name="Member_Password" Type="String" />
                    <asp:Parameter Name="Member_Fname" Type="String" />
                    <asp:Parameter Name="Member_Lname" Type="String" />
                    <asp:Parameter Name="Member_CheckingNum" Type="Int32" />
                    <asp:Parameter Name="Member_SavingsNum" Type="Int32" />
                    <asp:Parameter Name="Member_CheckingTotal" Type="Decimal" />
                    <asp:Parameter Name="Member_SavingTotal" Type="Decimal" />
                    <asp:Parameter Name="Member_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>

    </body>

</html>
