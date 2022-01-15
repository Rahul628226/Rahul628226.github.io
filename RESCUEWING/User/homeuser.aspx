<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="homeuser.aspx.cs" Inherits="User_homeuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class="row about_grids">
			<div class="col-lg-4 col-md-6 team_grid1">
				<h3 class="heading text-uppercase">About Us</h3>
				<p>Providing timely and effective relief assistance and suport to effected community during disaster has been a major challenge. </p>
				<p class="second_para">Volunteers can manage a camp details in a recorded format and can arrange the need required for that camp in better way.This project provides a better way to orginise volunteers activity.</p>
			</div>
			<div class="col-lg-3 col-md-6 about_img mt-md-0 mt-5 ">
				<div class="about_image">
					<img src="../web/images/about.jpg" alt="" class="img-fluid">
				</div>
			</div>
			<div class="col-lg-5 col-md-12 about-right mt-lg-0 mt-5 pl-lg-5">
				<div id="horizontalTab">
					<ul class="resp-tabs-list">
						<li><h3>Mission</h3></li>
						<li><h3>Vision</h3></li>
						<li><h3>Values</h3></li>
					</ul>
					<div class="resp-tabs-container">
						<div class="tab1">
							<h4 class="">Disasters can happen at any time and any places,leaving little time to prepare the in the moment.It is crucial that a community prepare for the most likely hassards and risks prior to a disaster</h4>
							<p class="">Along with emergency management, law enforcement,government organizations, disaster relief organizations and many others,volunteers are the valuable part of a disaster response.</p>
						</div>
						<div class="tab2">
							<h4 class="">Providing user friendly interface during software execution.</h4>
							<p class="">The volunteers can register into the site and leaders of a volunteers represented a camp and the leader can manage camp, and camp needs, manage collection center,etc.</p>
						</div>
						<div class="tab3">
							<h4 class="">Thousands of people who became victims of flood or other disaster .In the state are housed in relief camp .They includes women,children and elder once. The people who are staying in relief camp must take care of certain things.</h4>
							<p class="">Apart from the personal needs, people should be give importance to the requirements of the camp us a society.Otherwise,it can lead to worries and arguments. There will be hindrance in the activities in the camp.Camp must be made a place to extend help and support to each other.This site is developed for volunteers to manage a relief camp activities. </p>
						</div>
					</div>
				</div>

			</div>
		</div>


    <%--<p>
        <table class="style1">
            <tr>
                <td>
        </td>
                <td>
                    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">My Profile</asp:LinkButton>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">Donates Item</asp:LinkButton>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">View Camp Needs</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click">Blood Bank</asp:LinkButton>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click"> Add Feedback  </asp:LinkButton>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>--%>
</asp:Content>

