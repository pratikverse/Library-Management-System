<!-- sidebar menu area start -->
<div class="sidebar-menu">
    <div class="sidebar-header">
        <div class="logo">
            <a href="home.php"><img src="mujlogo.jpeg" width="150" height="155" alt="logo"></a>
        </div>
    </div>
    <div class="main-menu">
        <div class="menu-inner">
            <nav>
                <ul class="metismenu" id="menu">
                    <li><a href="home.php"><i class="ti-map-alt"></i> <span>Dashboard</span></a></li>
                    <li>
                        <a href="javascript:void(0)" aria-expanded="true"><i class="ti-dashboard"></i><span>Manage Books</span></a>
                        <ul class="collapse">
                            <li><a href="addBook.php">Add Books</a></li>
                            <li><a href="removeBook.php">Remove Books</a></li>
                            <li><a href="allissuedbooks.php">Issued Books</a></li>
                            <li><a href="issuebooks.php">Issue</a></li>
                            <li><a href="update.php">Update</a></li>
                            <li><a href="reissue.php">Reissue</a></li>
                        </ul>
                    </li>
                    <li><a href="books.php"><i class="ti-map-alt"></i> <span>View Books</span></a></li>
                    
                    <li><a href="author.php"><i class="ti-map-alt"></i> <span>About Author </span></a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>
<!-- sidebar menu area end -->
<!-- main content area start -->
        <div class="main-content">
            <!-- header area start -->
            <div class="header-area">
                <div class="row align-items-center">
                    <!-- nav and search button -->
                    <div class="col-md-6 col-sm-8 clearfix">
                        <div class="nav-btn pull-left">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>                        
                        <div class="search-box pull-left">
                            <form action="back.php" method="POST">
                                <input type="text" name="searchquery" placeholder="Search..." onchange="this.form.submit();" required>
                                <i class="ti-search"></i>
                            </form>
                        </div>
                    </div>
                    <!-- profile info & task notification -->
                    <div class="col-md-6 col-sm-4 clearfix">
                        <ul class="notification-area pull-right">
                            <li id="full-view"><i class="ti-fullscreen"></i></li>
                            <li id="full-view-exit"><i class="ti-zoom-out"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- header area end -->
            <!-- page title area start -->
            <div class="page-title-area">
                <div class="row align-items-center">
                    <div class="col-sm-6">
                        <div class="breadcrumbs-area clearfix">
                            <!-- <h4 class="page-title pull-left">Dashboard</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><a href="index.html">Home</a></li>
                                <li><span>Form</span></li>
                            </ul> -->
                        </div>
                    </div>
                    <div class="col-sm-6 clearfix">
                        <div class="user-profile pull-right">
                            <img class="avatar user-thumb" src="../assets/images/author/avatar.png" alt="avatar">
                            <h4 class="user-name dropdown-toggle" data-toggle="dropdown">STAFF PORTAL <i class="fa fa-angle-down"></i></h4>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="logout.php">Log Out</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- page title area end -->
  