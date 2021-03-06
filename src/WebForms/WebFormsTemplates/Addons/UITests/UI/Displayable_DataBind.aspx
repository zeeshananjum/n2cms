﻿<%@ Page Language="C#" AutoEventWireup="true" %>
<%@ Import Namespace="N2"%>
<%@ Register TagPrefix="n2" Namespace="N2.Web.UI.WebControls" Assembly="N2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<n2:ItemDataSource ID="ItemDataSource1" runat="server" Path="~/" />
		<asp:Repeater ID="Repeater2" runat="server" DataSourceID="ItemDataSource1">
			<HeaderTemplate><ul></HeaderTemplate>
			<ItemTemplate><li>
				<n2:Display PropertyName="Title" CurrentItem='<%# Container.DataItem %>' runat="server"/>
			</li></ItemTemplate>
			<FooterTemplate></ul></FooterTemplate>
		</asp:Repeater>
    </div>
    </form>
</body>
</html>
