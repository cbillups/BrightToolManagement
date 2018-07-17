<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="TSR.aspx.vb" Inherits="BrightToolsManagement.TSR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <p>
        <asp:Image ID="Image1" src="images/BrightLogo.png" runat="server" Width="204px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        Tool:&nbsp;
        <asp:DropDownList ID="ddlTools" runat="server">
            <asp:ListItem Value="-1">Select a Tool</asp:ListItem>
                    <asp:ListItem Value="1">CA10-01</asp:ListItem>
                    <asp:ListItem Value="1">CA10-02</asp:ListItem>
                    <asp:ListItem Value="1">CA58-00</asp:ListItem>
                    <asp:ListItem Value="1">CK40-02</asp:ListItem>
                    <asp:ListItem Value="1">CK40-03</asp:ListItem>
                    <asp:ListItem Value="1">CO45-01</asp:ListItem>
                    <asp:ListItem Value="1">CO97-04A</asp:ListItem>
                    <asp:ListItem Value="1">ZI80-PR10/11</asp:ListItem>
                    <asp:ListItem Value="1">ZI80-PR12/13</asp:ListItem>
                    
        </asp:DropDownList>
        &nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" src="images/srch.jpg" runat="server" Height="27px" Width="29px" style="cursor:pointer"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tool Description:
        <asp:TextBox ID="TextBox2" runat="server" Width="492px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>

    <div id="divInit" style="display: none">
    <p>
        &nbsp;Tool Status:&nbsp;
        Issue</p>
    <p>
        &nbsp;</p>
    <p>
        TSR list/history:&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem>Spring (open)</asp:ListItem>
            <asp:ListItem>Mount cracked (Closed)</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
    <p style="display: none">
        &nbsp;Status:&nbsp;<span style="display:none">
        <asp:DropDownList ID="DDLStatus" runat="server" >
        </asp:DropDownList></span>
    &nbsp;&nbsp;&nbsp; 
    </p>
    Status: &nbsp;&nbsp;<span id="SpnStatus" style="font-weight: bold"></span>
    <br />
    <br />
        </div>
    <%-- ================================ Data screens start ========================================================== --%>

    <div id="Status0" style="display:none">

        TSR Header
        <br />
        <br />
        Data display and data entry to open a new TSR or for an active TSR
        <br />
        <br />
        <asp:RadioButton ID="rdo01" Text="Quality" runat="server" Checked="False" GroupName="rdo0" />
        &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rdo02" Text="Broken" runat="server" GroupName="rdo0" />
        &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rdo03" Text="ECN Change" runat="server" GroupName="rdo0" />
        <br />
        <br />
        <input id="btnStatus0" type="button" value="Submit"  OnClick="SetStatus();return false;"/>
    </div>

    <div id="Status1" style="display:none">

        Pulled from production
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <input id="btnStatus1" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status2" style="display:none">

        Tool is repaired and being returned to production
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <asp:RadioButton ID="rdo20" Text="Production Ended, Close TRS" runat="server" GroupName="rdo2" />
        <br />
        <input id="btnStatus2" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>


    <div id="Status3" style="display:none">
        Quality Issue
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <asp:RadioButton ID="rdo30" Text="Deviation Approved, resume production" runat="server" Checked="False" GroupName="rdo3" />
        &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rdo31" Text="Pull Tool" runat="server" GroupName="rdo3" />
        <br />
        <br />
        <input id="btnStatus3" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status4" style="display:none">

        Evaluation of Broken Tool
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <input id="btnStatus4" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status5" style="display:none">

        Quality Deviation
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <asp:RadioButton ID="rdo50" Text="Production Ended, Evaluate Lifetime Deviation" runat="server" Checked="False" GroupName="rdo5" />
        <br />
        <br />
        <input id="btnStatus5" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status6" style="display:none">

        Update Control Plan
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <input id="btnStatus6" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status7" style="display:none">

        Determine Responsibility
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <asp:RadioButton ID="rdo70" Text="Internal" runat="server" Checked="False" GroupName="rdo7" />
        &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rdo71" Text="Customer" runat="server" GroupName="rdo7" />
        <br />
        <br />
        <input id="btnStatus7" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status8" style="display:none">

        ECN Cost Quote
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <asp:RadioButton ID="rdo80" Text="Approved" runat="server" GroupName="rdo8" />
        &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rdo81" Text="Not Approved" runat="server" GroupName="rdo8" />
        <br />
        <br />
        <input id="btnStatus8" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status9" style="display:none">

        Request Customer PO
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <asp:RadioButton ID="rdo90" Text="Not Received" runat="server" GroupName="rdo9" />
        &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rdo91" Text="Received" runat="server" GroupName="rdo9" />
        <br />
        <br />
        <input id="btnStatus9" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status10" style="display:none">

        Requesting Customer Approval for Repair
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <input id="btnStatus10" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status11" style="display:none">

        Quote Repair Cost (internal)
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <asp:RadioButton ID="rdo110" Text="Evaluating" runat="server" GroupName="rdo11" />
        &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rdo112" Text="Quote Submitted" runat="server" GroupName="rdo11" />
        &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rdo113" Text="Quote Rejected" runat="server" GroupName="rdo11" />
        &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rdo114" Text="Quote Approved" runat="server" GroupName="rdo11" />
        <br />
        <br />
        <input id="btnStatus11" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status12" style="display:none">

        Quote Repair Cost to Customer
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <input id="btnStatus12" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status13" style="display:none">

        Customer PO Received
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <input id="btnStatus13" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status14" style="display:none">

        Repair in Progress
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <asp:RadioButton ID="RadioButton1" Text="Evaluating" runat="server" GroupName="rdo14" />
        &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioButton2" Text="Quote Submitted" runat="server" GroupName="rdo14" />
        &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioButton3" Text="Quote Rejected" runat="server" GroupName="rdo14" />
        <br />
        <br />
        <input id="btnStatus14" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status15" style="display:none">

        Back in Production (Post production repair scheduled)
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <input id="btnStatus15" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status16" style="display:none">

        Back in Production (Post production CP change needed)
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <asp:RadioButton ID="rdo160" Text="Lifetime Deviation request submitted" runat="server" GroupName="rdo16" />
        &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rdo161" Text="Lifetime Deviation request accepted" runat="server" GroupName="rdo16" />
        &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rdo162" Text="Lifetime Deviation request rejected" runat="server" GroupName="rdo16" />
        <br />
        <br />
        <input id="btnStatus16" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status17" style="display:none">

        Customer Declined to Fix
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <input id="btnStatus17" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status18" style="display:none">

        Internal Cost Rejection
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <input id="btnStatus18" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status19" style="display:none">

        Being Repaired, with ECN Change Needed
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <asp:RadioButton ID="rdo190" Text="Being Repaired, working on ECN change" runat="server" GroupName="rdo19" />
        &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rdo191" Text="Repaired, waiting for ECN change approval" runat="server" GroupName="rdo19" />
        &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rdo192" Text="Being Repaired, ECN Change Approved" runat="server" GroupName="rdo19" />
        &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rdo193" Text="Repaired with ECN changes, return to production" runat="server" GroupName="rdo19" />
        <br />
        <br />
        <input id="btnStatus19" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status20" style="display:none">

        In Production, Lifetime Deviation Pending
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <asp:RadioButton ID="rdo200" Text="Control Plan Updated, close TSR" runat="server" GroupName="rdo20" />
        <br />
        <br />
        <input id="btnStatus20" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status21" style="display:none">

        In Production, Repair Pending
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <asp:RadioButton ID="rdo210" Text="Send to Repair" runat="server" GroupName="rdo21" />
        <br />
        <br />
        <input id="btnStatus21" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status22" style="display:none">

        Update Control Plan
        <br />
        <br />
        Data display and data entry fields
        <br />
        <br />
        <input id="btnStatus22" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <div id="Status23" style="display:none">

        This TSR has been closed
        <br />
        <br />
        Data display 
        <br />
        <br />
        <input id="btnStatus23" type="button" value="Submit"  OnClick="SetStatus();return false;" />
    </div>

    <%-- ================================ Data screens end ========================================================== --%>



        <%-- ================================ scripts start ========================================================== --%>

            <script type="text/javascript">
          var ddlStatus = document.getElementById("<%=DDLStatus.ClientID%>");
          var rdo01 = document.getElementById("<%=rdo01.ClientID%>");
          var rdo02 = document.getElementById("<%=rdo02.ClientID%>");
          var rdo03 = document.getElementById("<%=rdo03.ClientID%>");

          var spnStatus = document.getElementById("SpnStatus");

               // window.onload = function () { BuildStatus(0); }
                
                function BuildStatus(indx) {
                    
          document.getElementById("divInit").style.display = "block";
          ddlStatus.options.length = 0;
          var option0 = document.createElement("OPTION");

          option0.innerHTML = "Select status";
          option0.value = 0;
          ddlStatus.options.add(option0);

          for (var i = 0; i < status.length; i++) {
              var option = document.createElement("OPTION");
              option.value = status[i][0];
              option.innerHTML = status[i][1];
              ddlStatus.options.add(option);
          }
          ddlStatus.selectedIndex = indx;
          spnStatus.innerHTML = ddlStatus.options[ddlStatus.selectedIndex].innerHTML;

          ShowActivityScreen();

        }

                function TurnOnButton() {
                    
          statusIndx = ddlStatus.options[ddlStatus.selectedIndex].value;
          document.getElementById("btnStatus" + statusIndx).style.display = "block";
      }

       var StatusIndex = 0
       function SetStatus() {

           
           ddlStatus.selectedIndex = StatusIndex * 1 + 1;
           spnStatus.innerHTML = ddlStatus.options[ddlStatus.selectedIndex].innerHTML;
           ShowActivityScreen();
        }

                function ShowActivityScreen() {

                    for (i = 0; i < ddlStatus.length; i++) {
                        statusIndx = ddlStatus.options[i].value;
                     
                        if (document.getElementById("Status" + statusIndx)) {

                            document.getElementById("btnStatus" + statusIndx).style.display = "none";

                            if (ddlStatus.selectedIndex == i) {
                                document.getElementById("Status" + statusIndx).style.display = 'block';
                            } else {
                                document.getElementById("Status" + statusIndx).style.display = 'none';
                            }
                        }
                    }

                }

               // Array  status index, status,
                var status = [
                        ['0', 'Stagged']
                        ,['1', 'Pulled']
                        ,['2', 'Return to Production']
                        ,['3', 'Quality Issue, evaluating tool']
                        ,['4', 'Tool Evaluation']
                        ,['5', 'Return to Production with Deviation']
                        ,['6', 'Update Control Plan']
                        ,['7', 'Repair Tool, Determine responsibility']
                        ,['8', 'ECN Cost Quote']
                        ,['9', 'Request Cust PO #']
                        ,['10', 'Requesting Cust Approval']
                        ,['11', 'Quote Internal Repair Cost for Data Collection']
                        ,['12', 'Quote Repair Cost to Customer']
                        ,['13', 'Cust PO Recieved']
                        ,['14', 'Being Repaired']
                        ,['15', 'Operating, Post repair Needed']
                        ,['16', 'Production ended with Devaitions, Post CP Change Needed']
                        ,['17', 'Customer Declined Repair']
                        , ['18', 'Internal Cost Rejection']
                        , ['19', 'Being Repaired, with ECN Change Needed']
                        , ['20', 'Lifetime Deviation Approved, updating Control Plan']
                        , ['21', 'Production Ended, Repair needed']
                        , ['22', 'Update Control Plan']
                        , ['23', 'TSR Closed']
                        , ['24', 'Production Ended, Deviation Evaluation']
                ];

                //Array action index, status index, action, status index selected
                var actions = [
                        ////['0', '0','Quality','3']
                        //,['1', '0', 'Broken', '7']
                        //,['2', '0', 'ECN Change', '8']
                        //,['3', '3', 'Deviation Approved, resume production', '5']
                        //,['4', '3', 'Pull Tool', '7']
                        //,['5', '8', 'Approved', '9']
                        //,['6', '8', 'Not Approved', '10']
                        //,['7', '7', 'Internal', '11']
                        //,['8', '7', 'Customer', '9']
                        //,['9', '9', 'Not Received', '17']
                        //,['10', '9', 'Received', '14']
                        //,['11', '11', 'Evaluating', '11']
                        //, ['12', '11', 'Quote Submitted', '11']
                        //, ['13', '11', 'Quote Rejected', '18']
                        //, ['14', '11', 'Quote Approved', '14']
                        , ['15', '24', 'Lifetime Dev Approved', '16']
                        , ['16', '24', 'Lifetime Dev Not Approved', '15']
                        //, ['17', '14', 'Being Repaired', '14']
                        //, ['18', '14', 'Being Repaired, ECN Change Approval Needed', '19']
                        //, ['19', '14', 'Repaired', '2']
                        //, ['20', '19', 'Being Repaired, working on ECN change', '19']
                        //, ['21', '19', 'Repaired, waiting for ECN change approval', '19']
                        //, ['22', '19', 'Being Repaired, ECN Change Approved', '19']
                        //, ['23', '19', 'Repaired with ECN changes, return to production', '2']
                        //, ['24', '16', 'Lifetime Deviation request submitted', '16']
                        //, ['25', '16', 'Lifetime Deviation request accepted', '20']
                        //, ['26', '16', 'Lifetime Deviation request rejected', '7']
                        //, ['27', '20', 'Control Plan Updated, close TSR', '23']
                        //, ['28', '21', 'Send to Repair', '7']
                        //, ['29', '5', 'Production Ended, Evaluate Lifetime Deviation', '16']
                        //, ['30', '2', 'Production Ended, Close TRS', '23']
                ];

    </script>

            <%-- ================================ scripts end ========================================================== --%>

</asp:Content>
