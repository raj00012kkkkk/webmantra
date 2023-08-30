<header>
  <div class="container-fluid">
    <div class="row py-3 border-bottom">

      <div class="col-sm-4 col-lg-3 text-center text-sm-start">
        <div class="main-logo">
          <a href="index.html">
            <img src="images/logo.png" alt="logo" class="img-fluid">
          </a>
        </div>
      </div>

      <div class="col-sm-6 offset-sm-2 offset-md-0 col-lg-5 d-none d-lg-block">
        <div class="search-bar row bg-light p-2 my-2 rounded-4">
          <div class="col-md-4 d-none d-md-block">
            <select class="form-select border-0 bg-transparent">
              <option>All Categories</option>
              <option>Groceries</option>
              <option>Drinks</option>
              <option>Chocolates</option>
            </select>
          </div>
          <div class="col-11 col-md-7">
            <form id="search-form" class="text-center" action="index.html" method="post">
              <input type="text" class="form-control border-0 bg-transparent" placeholder="Search for more than 20,000 products" />
            </form>
          </div>
          <div class="col-1">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
              <path fill="currentColor" d="M21.71 20.29L18 16.61A9 9 0 1 0 16.61 18l3.68 3.68a1 1 0 0 0 1.42 0a1 1 0 0 0 0-1.39ZM11 18a7 7 0 1 1 7-7a7 7 0 0 1-7 7Z" />
            </svg>
          </div>
        </div>
      </div>

      <div class="col-sm-8 col-lg-4 d-flex justify-content-end gap-5 align-items-center mt-4 mt-sm-0 justify-content-center justify-content-sm-end">
        <div class="support-box text-end d-none d-xl-block">
          <span class="fs-6 text-muted">For Support?</span>
          <h5 class="mb-0">+90912 99406</h5>
        </div>

        <ul class="d-flex justify-content-end list-unstyled m-0">
          @if (Auth::check())
          <li>
            <a href="#" class="rounded-circle bg-light p-2 mx-1">
              <svg width="24" height="24" viewBox="0 0 24 24">
                <use xlink:href="#user"></use>
              </svg>
            </a>
          </li>
          @else
          <li>
            <a href="#" class="rounded-circle bg-light p-2 mx-1 btn-primary" data-bs-toggle="offcanvas" data-bs-target="#offcanvasLogin" aria-controls="offcanvasLogin">
              Login
            </a>
          </li>
          @endif

          <li>
            <a href="#" class="rounded-circle bg-light p-2 mx-1">
              <svg width="24" height="24" viewBox="0 0 24 24">
                <use xlink:href="#heart"></use>
              </svg>
            </a>
          </li>
          <li class="d-lg-none" >
            <a  class="rounded-circle bg-light p-2 mx-1" data-bs-toggle="offcanvas" data-bs-target="#offcanvasCart" aria-controls="offcanvasCart" >
              <svg width="24" height="24" viewBox="0 0 24 24">
                <use xlink:href="#cart"></use>
              </svg>
            </a>
          </li>
          <li class="d-lg-none">
            <a href="#" class="rounded-circle bg-light p-2 mx-1" data-bs-toggle="offcanvas" data-bs-target="#offcanvasSearch" aria-controls="offcanvasSearch">
              <svg width="24" height="24" viewBox="0 0 24 24">
                <use xlink:href="#search"></use>
              </svg>
            </a>
          </li>
        </ul>
        @if (Auth::check())
        <div class="cart text-end d-none d-lg-block dropdown" onClick="cartopen()">
          <button class="border-0 bg-transparent d-flex flex-column gap-2 lh-1" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasCart" aria-controls="offcanvasCart">
            <span class="fs-6 text-muted dropdown-toggle">Your Cart</span>
            <!-- <span class="cart-total fs-5 fw-bold">$1290.00</span> -->
          </button>
        </div>
        @endif
      </div>

    </div>
  </div>
  <div class="container-fluid">
    <div class="row py-3">
      <div class="d-flex  justify-content-center justify-content-sm-between align-items-center">
        <nav class="main-menu d-flex navbar navbar-expand-lg">

          <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">

            <div class="offcanvas-header justify-content-center">
              <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>

            <div class="offcanvas-body">

              <select class="filter-categories border-0 mb-0 me-5">
                <option>Shop by Departments</option>
                <option>Groceries</option>
                <option>Drinks</option>
                <option>Chocolates</option>
              </select>

              <ul class="navbar-nav justify-content-end menu-list list-unstyled d-flex gap-md-3 mb-0">
                <li class="nav-item active">
                  <a href="#women" class="nav-link">Women</a>
                </li>
                <li class="nav-item dropdown">
                  <a href="#men" class="nav-link">Men</a>
                </li>
                <li class="nav-item">
                  <a href="#kids" class="nav-link">Kids</a>
                </li>
                <li class="nav-item">
                  <a href="#accessories" class="nav-link">Accessories</a>
                </li>

                <li class="nav-item">
                  <a href="#brand" class="nav-link">Brand</a>
                </li>
                <li class="nav-item">
                  <a href="#sale" class="nav-link">Sale</a>
                </li>
                <li class="nav-item">
                  <a href="#blog" class="nav-link">Blog</a>
                </li>
              </ul>

            </div>

          </div>

        </nav>

      </div>
    </div>
  </div>
</header>



<!-- Login Modal -->
<div class="offcanvas offcanvas-end" data-bs-scroll="true" tabindex="-1" id="offcanvasLogin" aria-labelledby="My Cart">
  <div class="offcanvas-header justify-content-center">
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    <div class="order-md-last">
      <h4 class="d-flex justify-content-between align-items-center mb-3">
        <span class="text-primary">User Login</span>
        <!-- <span class="badge bg-primary rounded-pill">3</span> -->
      </h4>

      @if (count($errors) > 0)
      <div class="alert alert-danger">
        <ul>
          @foreach($errors->all() as $error)
          <li>{{ $error }}</li>
          @endforeach
        </ul>
      </div>
      @endif

      <form action="javascript:void(0)" id="loginForm">
        @csrf
        <ul class="list-group mb-3">
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <label>Enter Email</label>
              <input type="text" name="email" placeholder="user@gmail.com">
            </div>
          </li>

          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <label>Enter Password</label>
              <input type="text" name="password" placeholder="user@gmail.com">
            </div>
          </li>

        </ul>
        <button class="w-30 btn btn-primary btn-sm" type="submit">Login</button>
      </form>

    </div>
  </div>
</div>