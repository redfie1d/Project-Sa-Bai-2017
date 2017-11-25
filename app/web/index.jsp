<%-- 
    Document   : starter
    Created on : 24 Nov, 2016, 1:19:04 PM
    Author     : tcw
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.User"%>
<%@ include file="protect.jsp" %>
<%@include file="header.jsp" %>

<style>
    .homepage-button{
        width: 200px;
        height: 200px;
    }

    .homepage-button>i{
        font-size: 5em !important;
    }
</style>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" style="margin-left: 0 !important;">
    <!-- Content Header (Page header) -->
    <section class="content-header text-center">
        <h1>
            Sabai Biometrics System
            <!--<small>Optional description</small>-->
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">

        <!-- Your Page Content Here -->
        <div class="row text-center">
            <%                
                // ALL FEATURES
                if (user.getAccountType().equals("admin")) {
            %>

            <a class="btn btn-app homepage-button bg-green" href="new_consult.jsp">
                <i class="fa fa-user fa-5x"></i> <h3>Consultation</h3>
            </a>

            <a class="btn btn-app homepage-button bg-blue" href="existing_patient.jsp">
                <i class="fa fa-user-plus fa-5x"></i> <h3>Registration</h3>
            </a>

            <a class="btn btn-app homepage-button bg-orange" href="new_triage.jsp">
                <i class="fa fa-user-plus fa-5x"></i> <h3>Triage</h3>
            </a>

            <a class="btn btn-app homepage-button bg-yellow" href="pharmacy.jsp">
                <i class="fa fa-user-plus fa-5x"></i> <h3>Pharmacy</h3>
            </a>

            <a class="btn btn-app homepage-button bg-fuchsia" href="summary.jsp">
                <i class="fa fa-bar-chart fa-5x"></i> <h3>Summary</h3>
            </a>

            <a class="btn btn-app homepage-button bg-purple" href="referral.jsp">
                <i class="fa fa-user-plus fa-5x"></i> <h3>Referral</h3>
            </a>

            <%
                }

                ArrayList<String> consultation_pharmacy = new ArrayList<>();
                consultation_pharmacy.add("acts");
                consultation_pharmacy.add("alumni");
                consultation_pharmacy.add("m4");

                // CONSULTATION & PHARAMCY ONLY
                if (consultation_pharmacy.contains(user.getAccountType())) {

            %>

            <a class="btn btn-app homepage-button bg-green" href="new_consult.jsp">
                <i class="fa fa-user fa-5x"></i> <h3>Consultation</h3>
            </a>

            <a class="btn btn-app homepage-button bg-yellow" href="pharmacy.jsp">
                <i class="fa fa-user-plus fa-5x"></i> <h3>Pharmacy</h3>
            </a>

            <%                
                // REGISTRATION & TRIAGE ONLY
                } else if (user.getAccountType().equals("student")) {
            %>

            <a class="btn btn-app homepage-button bg-blue" href="existing_patient.jsp">
                <i class="fa fa-user-plus fa-5x"></i> <h3>Registration</h3>
            </a>

            <a class="btn btn-app homepage-button bg-orange" href="new_triage.jsp">
                <i class="fa fa-user-plus fa-5x"></i> <h3>Triage</h3>
            </a>

            <%
                // PHARMACY ONLY
                } else if (user.getAccountType().equals("pharmacy")) {
            %>

            <a class="btn btn-app homepage-button bg-yellow" href="pharmacy.jsp">
                <i class="fa fa-user-plus fa-5x"></i> <h3>Pharmacy</h3>
            </a>

            <%
                // SUMMARY ONLY
                } else if (user.getAccountType().equals("pharmacy")) {
            %>

            <a class="btn btn-app homepage-button bg-fuchsia" href="summary.jsp">
                <i class="fa fa-bar-chart fa-5x"></i> <h3>Summary</h3>
            </a>

            <%
                // REFERRAL ONLY
                } else if (user.getAccountType().equals("referral")) {
            %>

            <a class="btn btn-app homepage-button bg-purple" href="referral.jsp">
                <i class="fa fa-user-plus fa-5x"></i> <h3>Referral</h3>
            </a>
            
            <%
                }
            %>

        </div>
        <!-- /.row -->

    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->


<script src='js/array.generics.min.js'></script>
<script src='js/jquery.min.js'></script>
<!--<script src='js/biominiWebAgent.js'></script>-->
<script src='js/sabai.js'></script>

<%@include file="footer.jsp" %>