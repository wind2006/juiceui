﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Slider.aspx.cs" Inherits="Juice_Sample_Site.Slider" masterpagefile="~/Base.Master" %>
<%@ Register Assembly="Juice" Namespace="Juice" TagPrefix="Juice" %>
<asp:content contentplaceholderid="_Content" runat="server">
	<Juice:Slider ID="slider1" runat="server" AutoPostBack="true" 
        OnValueChanged="slider_Change" />
    <asp:Button Text="Server Button" runat="server" />
    <input type="button" value="Client Button" id="myButton" />
    <div>
        <asp:Literal runat="server" ID="currentValue" />
    </div>
    
    <Juice:Slider ID="slider2" runat="server" Max="150" />
    <div>
        <span id="slider2Value"></span>
    </div>

    <script>
	
		$("#myButton").click(function () {
		    var $slider = $("div[id$=slider1]"),
                currentMax = $slider.slider("option", "max");
		    $slider.slider("option", "max", currentMax + 100);
		});

        $("div[id$=slider2]").bind("slidechange", function (event, ui) {

		    $("#slider2Value").text(ui.value);

		});

	</script>
</asp:content>