<%--
  Created by IntelliJ IDEA.
  User: BekRakhman
  Date: 19.03.2023
  Time: 12:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<div class="container py-3">
    <header>
        <div class="d-flex flex-column flex-md-row align-items-center pb-3 mb-4 border-bottom">
            <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
                <span class="fs-4">BITLAB SHOP</span>
            </a>

            <nav class="d-inline-flex mt-2 mt-md-0 ms-md-auto">
                <a class="me-3 py-2 text-dark text-decoration-none" href="#">Top Sales</a>
                <a class="me-3 py-2 text-dark text-decoration-none" href="#">New Sales</a>
                <a class="me-3 py-2 text-dark text-decoration-none" href="#">By Category</a>
                <a class="py-2 text-dark text-decoration-none" href="#">Sign In</a>
            </nav>
        </div>

        <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
            <h1 class="display-4 fw-normal">Welcome to BITLAB SHOP</h1>
            <p class="fs-5 text-muted">Electronic devices with high quality and service</p>
        </div>
    </header>

    <main>
        <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
            <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm">
                    <div class="card-header py-3">
                        <h4 class="my-0 fw-normal">Macbook Pro 2020</h4>
                    </div>
                    <div class="card-body">
                        <h2 class="card-title pricing-card-title">$1499.99</h2>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>8 GB RAM</li>
                            <li>256 GB SSD</li>
                            <li>Intel Core i7</li>
                        </ul>
                        <button type="button" class="w-100 btn btn-lg btn-outline-primary">Buy Now</button>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm">
                    <div class="card-header py-3">
                        <h4 class="my-0 fw-normal">ASUS TUF GAMING</h4>
                    </div>
                    <div class="card-body">
                        <h2 class="card-title pricing-card-title">$999.99</h2>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>16 GB RAM</li>
                            <li>512 GB SSD</li>
                            <li>AMD Ryzen 5</li>
                        </ul>
                        <button type="button" class="w-100 btn btn-lg btn-primary">Buy Now</button>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm border-primary">
                    <div class="card-header py-3 text-bg-primary border-primary">
                        <h4 class="my-0 fw-normal">Apple Iphone 12 Pro</h4>
                    </div>
                    <div class="card-body">
                        <h2 class="card-title pricing-card-title">$1099.99</h2>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>6GB RAM</li>
                            <li>128 GB Memory</li>
                            <li>Super Retina XDR OLED Display</li>
                        </ul>
                        <button type="button" class="w-100 btn btn-lg btn-primary">Buy Now</button>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm">
                    <div class="card-header py-3">
                        <h4 class="my-0 fw-normal">XIAOMI Redmi Note 8</h4>
                    </div>
                    <div class="card-body">
                        <h2 class="card-title pricing-card-title">$199.99</h2>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>6 GB RAM</li>
                            <li>64 GB Memory</li>
                            <li>Android 9 Pie</li>
                        </ul>
                        <button type="button" class="w-100 btn btn-lg btn-outline-primary">Buy Now</button>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm">
                    <div class="card-header py-3">
                        <h4 class="my-0 fw-normal">XIAOMI Redmi Note 10</h4>
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">$299.99</h1>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>8 GB RAM</li>
                            <li>128 GB Memory</li>
                            <li>Android 11</li>
                        </ul>
                        <button type="button" class="w-100 btn btn-lg btn-primary">Buy Now</button>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm border-primary">
                    <div class="card-header py-3 text-bg-primary border-primary">
                        <h4 class="my-0 fw-normal">MSI Prestige 15</h4>
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">$1999.99</h1>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>Intel Core i7</li>
                            <li>1024 GB Memory</li>
                            <li>32 GB RAM</li>
                        </ul>
                        <button type="button" class="w-100 btn btn-lg btn-primary">Buy Now</button>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
