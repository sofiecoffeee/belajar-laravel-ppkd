<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Kopi PPKDJ Jakarta Pusat</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
    <style>
        body {
            background-color: #f5f6f8;
            font-family: Arial, Helvetica, sans-serif;
        }

        .category-btn {
            background-color: white;
            color: #7A9E5B;
            border: 1px solid #7A9E5B;
        }

        .category-btn.active {
            background-color: #7A9E5B;
            color: white;
        }

        .category-btn:hover {
            background-color: #7A9E5B;
            color: white;
            border-color: #7A9E5B;
        }

        .product-card {
            border: none;
            border-radius: 15px;
            transition: 0.2s;
            overflow: hidden;
        }

        .product-card:hover {
            transform: translateY(-4px);
            box-shadow: 0 80px 20px rgba (0, 0, 0, 0.10);
        }

        .product-image {
            height: 130px;
            display: flex;
            /* align-items: center; */
            justify-content: center;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: contain;
        }

        .product.item {
            cursor: pointer;
        }

        .price {
            color: #6f4e37;
            font-weight: bold;
        }

        .cart-box {
            position: sticky;
            top: 20px;
        }

        .cart-item {
            border-bottom: 1px solid #eee;
            cart-item: last-child;
            border-bottom: none;
        }

        .quantity-btn {
            width: 30px;
            height: 30px;
            padding: 0;
            border-radius: 50%;
        }

        .total-price {
            font-size: 25px;
            font-weight: bold;
            color: #6f4e37;
        }

        .payment-btn {
            border-radius: 10px;
        }
    </style>

</head>

<body>
    <div class="container-fluid">
        <main class="col-lg-12 p-5">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <div>
                    <h3 class="fw-bold mb-1">Point of Sales</h3>
                    <p class="text-muted">POS - Toko Kopi PPKD Jakarta Pusat</p>
                </div>
                <button class="btn btn-dark">Empty Cart</button>
            </div>
            <div class="row g-4">
                <!-- Card 1 -->
                <div class="col-md-4">
                    <div class="card shadow-sm border-0 p-4 h-100">
                        <div class="d-flex align-items-center">
                            <div class="me-3">
                                <div class="bg-primary text-white rounded p-3">
                                    🛒
                                </div>
                            </div>

                            <div>
                                <small class="text-muted">Today Transaction</small>
                                <h4 class="mb-0 fw-bold">10</h4>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Card 2 -->
                <div class="col-md-4">
                    <div class="card shadow-sm border-0 p-4 h-100">
                        <div class="d-flex align-items-center">
                            <div class="me-3">
                                <div class="bg-success text-white rounded p-3">
                                    💰
                                </div>
                            </div>

                            <div>
                                <small class="text-muted">Today Income</small>
                                <h4 class="mb-0 fw-bold">Rp. 500.000</h4>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Card 3 -->
                <div class="col-md-4">
                    <div class="card shadow-sm border-0 p-4 h-100">
                        <div class="d-flex align-items-center">
                            <div class="me-3">
                                <div class="bg-warning text-white rounded p-3">
                                    📦
                                </div>
                            </div>

                            <div>
                                <small class="text-muted">Total Product</small>
                                <h4 class="mb-0 fw-bold">25</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-4 mt-4">
                <div class="col-lg-8">
                    <div class="card shadow border-0">
                        <div class="card-body">
                            <div class="row mb-4">
                                <div class=col-md-7>
                                    <h5 class="fw-bold">Select Product</h5>
                                </div>
                                <div class="col-md-5">
                                    <input type="text" id="searchProduct" class="form-control"
                                        onkeyup="searchProduct()" placeholder="Search Product...">
                                </div>
                                <div class="mb-4">
                                    <button class="btn btn-sm me-1 category-btn" onclick="filterCategory('all', this)"
                                        data-category="all">
                                        Semua</button>
                                    @foreach ($categories as $category)
                                        <button class="btn btn-sm me-1 category-btn"
                                            onclick="filterCategory('{{ $category->id }}', this)"
                                            data-category="{{ $category->id }}">

                                            {{ $category->name ?? '' }}</button>
                                    @endforeach

                                </div>

                                <div class="row g-3 d-flex" id="productList">
                                    @foreach ($products as $product)
                                        <div class="col-md-4 col-sm-6 product-item"
                                            data-category="{{ $product->category_id }}" data-id="{{ $product->id }}"
                                            data-name="{{ $product->name }}" data-price="{{ $product->price }}"
                                            onclick="addToCart({{ $product->id }})">
                                            <div class="card product-card shadow h-100">
                                                <div class="product-image"><img
                                                        src="{{ asset('storage/' . $product->photo) }}" alt="">
                                                </div>
                                                <div class="card-body">
                                                    <span
                                                        class="badge bg-light text-dark mb-2">{{ $product->category->name }}</span>
                                                    <h6 class="fw-bold">{{ $product->name ?? '' }}</h6>
                                                    <span
                                                        class="price">{{ number_format($product->price, 0, ',', '.') }}</span>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card border-0 shadow cart-box">
                        <div class="card-body">
                            <div class="d-flex justify-content-between mb-3">
                                <div> <i class="bi bi-cart4" style="fw-bold"></i>Cart</div>
                                <span class="badge bg-dark" id="cartCount">0</span>
                            </div>
                            <div class="mb-3" id="cartItems">
                                <div class="text-center text-muted py-5">
                                    <i class="bi bi-cart4"></i>
                                    <p>Empty Cart</p>
                                </div>
                            </div>

                            {{-- subtotal --}}
                            <div class="d-flex justify-content-between mb-2">
                                <span>Sub Total</span>
                                <strong id="subtotal">Rp.0</strong>
                            </div>

                            <div class="d-flex justify-content-between mb-2">
                                <span>Pajak (11%)</span>
                                <strong id="tax">Rp.0</strong>
                            </div>

                            <div class="d-flex justify-content-between mb-2">
                                <span class="fw-bold total-price">Total</span>
                                <span class= "fw-bold total-price" id="total">Rp.0</span>
                            </div>

                            <button onclick="processPayment()" class="btn btn-success w-100 py-3">Payment</button>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    </main>
    </div>

    <script>
        function filterCategory(categoryId, button) {
            console.log('Category:', categoryId);
            console.log('Button:', button);
            // selectorAll = array
            const products = document.querySelectorAll('.product-item');
            products.forEach(function(product) {
                console.log(product);
                {
                    const categoryName = product.dataset.category;
                    // jika user click category bernama all, muncul category all
                    // jika user click category snack, dia bakal muncul yang snack doang
                    if (categoryId === 'all' || categoryName === String(categoryId)) {
                        product.style.display = "";
                    } else {
                        product.style.display = 'none';
                    }

                }
            });
            document.querySelectorAll('.category-btn').forEach(function(btn) {
                // ketika user pindah kursor
                btn.classList.remove('active');
            });
            // ketika user milih kategori
            button.classList.add('active');
        }

        let cart = [];

        function addToCart(productId) {

            const product = document.querySelector(`.product-item[data-id="${productId}"]`);
            if (!product) {
                alert('Product no found');
                return;
            }

            const productName = product.dataset.name;
            const productPrice = Number(product.dataset.price);

            const existingItem = cart.find(function(item) {
                return Number(item.id) === Number(productId);
            })

            if (existingItem) {
                existingItem.qty++;
            } else {
                cart.push({
                    id: productId,
                    name: productName,
                    price: productPrice,
                    qty: 1,
                })
            }

            displayCart();
            console.log(cart);
        }

        function displayCart() {
            const cartItems = document.getElementById('cartItems')

            //ini kalo cart nya kosong
            cartItems.innerHTML = "";
            if (cart.length === 0) {
                cartItems.innerHTML = `
                <div class="text-center text-muted py-5">
                    <i class="bi bi-cart4"></i>
                    <p>Empty Cart</p>
                </div>
                `;
            }

            //ini kalo cart nya ada isinya
            cart.forEach(function(item) {
                cartItems.innerHTML +=
                    `<div class="cart-item">
                    <div class="d-flex justify-content-between">
                        <div>
                            <strong>${item.name}</strong>
                            <div class="small text-muted">Rp ${formatRupiah(item.price)}</div>
                        </div>
                            <strong>Rp ${formatRupiah(item.price * item.qty)}</strong>
                        </div>
                        <div class="d-flex align-items-center mt-3">
                            <button onclick="decreaseItem(${item.id})" type="button" class="btn btn-outline-secondary quantity-btn">-</button> 
                            <span>${item.qty}</span>
                            <button onclick="increaseItem(${item.id})" type="button" class="btn btn-outline-secondary quantity-btn">+</button>
                            <button onclick="removeItem(${item.id})" type="button" class="btn btn-outline-danger ms-auto"><i class="bi bi-trash"></i></button> 
                        </div>
                    </div> `
            })

            calculateCart();
        }

        function removeItem(productId) {
            cart = cart.filter(function(item) {
                return Number(item.id) !== Number(productId);

            });

            displayCart();
        }

        function decreaseItem(productId) {
            const item = cart.find(function(item) {
                return Number(item.id) === Number(productId);
            });



            item.qty--;
            if (item.qty <= 0) {
                removeItem(productId);
                return;
            }

            displayCart();
        }

        function increaseItem(productId) {
            const item = cart.find(function(item) {
                return Number(item.id) === Number(productId);
            });

            item.qty++;
            displayCart();
        }

        function calculateCart() {
            let subtotal = 0;
            let itemCount = 0;

            cart.forEach(function(item) {
                subtotal += Number(item.price) * Number(item.qty);
                itemCount += Number(item.qty);

            });
            document.getElementById('cartCount').innerText = `${cart.length}`

            const tax = subtotal * 0.11;
            const total = subtotal + tax;
            document.getElementById('subtotal').innerText = `Rp ${formatRupiah(subtotal)}`
            document.getElementById('tax').innerText = `Rp ${formatRupiah(tax)}`
            document.getElementById('total').innerText = `Rp ${formatRupiah(total)}`


        }

        function formatRupiah(number) {
            return new Intl.NumberFormat('id-ID').format(number)
        }


        function searchProduct() {
            const search = document.getElementById('searchProduct').value.toLowerCase().trim();
            const products = document.querySelectorAll('.product-item');

            products.forEach(function(product) {
                const productName = product.dataset.name.toLowerCase();

                // jika product name di dalam tabel nilainya sama pada saat user input
                if (productName.includes(search)) {
                    product.style.display = "";
                } else {
                    product.style.display = "none";
                }
            })

        }

        async function processPayment() {
            if (cart.length === 0) {
                alert('cart is Empty')
                return;
            }

            try {
                const response = await fetch("{{ route('order.store') }}", {
                    method: "POST",
                    headers: {
                        'Content-Type': 'application/json',
                        'Accept': 'application/json',
                        'X-CSRF-TOKEN': document.querySelector(`meta[name="csrf-token"]`).getAttribute(
                            'content')
                    },
                    body: JSON.stringify({
                        items: cart.map(function(item) {
                            return {
                                id: item.id,
                                qty: item.qty
                            }
                        }),
                        payment_method: "cash",
                    })
                })

                const result = await response.json();
                cart = [];
                displayCart();
                location.reload();

            } catch (error) {
                console.log(error)
            }
        }

        displayCart();
    </script>
</body>

</html>
