<!DOCTYPE html>
<html>
<head>
      <meta name="layout" content="bootstrap"/>
      <title>Welcome to Health Logger API</title>
</head>
<body>
<!-- Content Header (Page header) -->
<section class="content-header">
      <h1>
            Dashboard
            <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
            <li  class="active"><g:link controller="patient" action="dashBoard">Login</g:link></li>
      </ol>
</section>

<!-- Main content -->
<section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
            <div class="col-lg-3 col-xs-6">
                  <!-- small box -->
                  <div class="small-box bg-aqua">
                        <div class="inner">
                              <h3>
                                  Welcome to
                              </h3>
                        </div>
                        <div class="icon">
                              <i class="ion ion-bag"></i>
                        </div>
                  </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                  <!-- small box -->
                  <div class="small-box bg-green">
                        <div class="inner">
                              <h3>
                                    Health Logger
                              </h3>
                        </div>
                        <div class="icon">
                              <i class="ion ion-stats-bars"></i>
                        </div>
                  </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                  <!-- small box -->
                  <div class="small-box bg-yellow">
                        <div class="inner">
                              <h3>
                                    Application
                              </h3>
                        </div>
                        <div class="icon">
                              <i class="ion ion-person-add"></i>
                        </div>
                  </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                  <!-- small box -->
                  <div class="small-box bg-red">
                        <div class="inner">
                              <h3 style="color: #ffffff;">
                                    <g:link style="color: #ffffff;" controller="patient" action="dashBoard">Please Login</g:link>
                              </h3>
                        </div>
                        <div class="icon">
                              <i class="ion ion-pie-graph"></i>
                        </div>

                  </div>
            </div><!-- ./col -->
      </div><!-- /.row -->
      <div class="row">
            <section class="col-lg-4 connectedSortable">
                  <div id="status" role="complementary">
                  </div>
            </section>
            <section class="col-lg-8 connectedSortable">
                  <div id="page-body" role="main">
                        <h1>Welcome to Health Logger API </h1>
                  </div>
            </section>
      </div><!-- /.row (main row) -->

</section><!-- /.content -->
</body>
</html>
