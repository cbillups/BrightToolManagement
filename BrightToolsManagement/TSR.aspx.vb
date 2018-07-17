Public Class TSR
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        ddlTools.Attributes.Add("onChange", "BuildStatus(1);return false;")
        rdo01.Attributes.Add("OnChange", "StatusIndex=3;TurnOnButton()")
        rdo02.Attributes.Add("OnChange", "StatusIndex=7;TurnOnButton()")
        rdo20.Attributes.Add("OnChange", "StatusIndex=23;TurnOnButton()")
        rdo03.Attributes.Add("OnChange", "StatusIndex=8;TurnOnButton()")
        rdo50.Attributes.Add("OnChange", "StatusIndex=16;TurnOnButton()")
        rdo30.Attributes.Add("OnChange", "StatusIndex=5;TurnOnButton()")
        rdo31.Attributes.Add("OnChange", "StatusIndex=7;TurnOnButton()")
        rdo70.Attributes.Add("OnChange", "StatusIndex11;TurnOnButton()")
        rdo71.Attributes.Add("OnChange", "StatusIndex=9;TurnOnButton()")
        rdo80.Attributes.Add("OnChange", "StatusIndex=9;TurnOnButton()")
        rdo81.Attributes.Add("OnChange", "StatusIndex=10;TurnOnButton()")
        rdo90.Attributes.Add("OnChange", "StatusIndex=17;TurnOnButton()")
        rdo91.Attributes.Add("OnChange", "StatusIndex=14;TurnOnButton()")
        rdo110.Attributes.Add("OnChange", "StatusIndex=11;TurnOnButton()")
        rdo112.Attributes.Add("OnChange", "StatusIndex=11;TurnOnButton()")
        rdo113.Attributes.Add("OnChange", "StatusIndex=18;TurnnButton()")
        rdo114.Attributes.Add("OnChange", "StatusIndex=4;TurnOnButton()")
        rdo190.Attributes.Add("OnChange", "StatusIndex=19;TurnOnButton()")
        rdo191.Attributes.Add("OnChange", "StatusIndex=19;TurnOnButton()")
        rdo192.Attributes.Add("OnChange", "StatusIndex=19;TurnOnButton()")
        rdo193.Attributes.Add("OnChange", "StatusIndex=2;TurnOnButton()")
        rdo160.Attributes.Add("OnChange", "StatusIndex=16;TurnOnButton()")
        rdo161.Attributes.Add("OnChange", "StatusIndex=20;TurnOnButton()")
        rdo162.Attributes.Add("OnChange", "StatusIndex=7;TurnOnButton()")
        rdo200.Attributes.Add("OnChange", "StatusIndex=23;TurnOnButton()")
        rdo210.Attributes.Add("OnChange", "StatusIndex=7;TurnOnButton()")


    End Sub

End Class