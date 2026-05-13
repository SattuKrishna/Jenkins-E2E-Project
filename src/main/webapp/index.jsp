<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>NeoShop — Modern Colorful Store</title>

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{
    background:#0f172a;
    color:white;
    overflow-x:hidden;
}

/* Animated Background */

body::before{
    content:'';
    position:fixed;
    width:100%;
    height:100%;
    background:
    radial-gradient(circle at top left,#ff0080 0%,transparent 25%),
    radial-gradient(circle at bottom right,#00d4ff 0%,transparent 25%),
    radial-gradient(circle at center,#7c3aed 0%,transparent 30%);
    z-index:-1;
    opacity:0.35;
}

/* HEADER */

header{
    position:sticky;
    top:0;
    z-index:999;
    backdrop-filter:blur(15px);
    background:rgba(15,23,42,0.6);
    border-bottom:1px solid rgba(255,255,255,0.08);
}

.navbar{
    max-width:1300px;
    margin:auto;
    padding:18px 30px;
    display:flex;
    align-items:center;
    justify-content:space-between;
}

.logo{
    font-size:2rem;
    font-weight:700;
    background:linear-gradient(90deg,#00d4ff,#ff00aa);
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

.nav-links{
    display:flex;
    gap:25px;
}

.nav-links a{
    color:white;
    text-decoration:none;
    transition:0.3s;
    font-weight:500;
}

.nav-links a:hover{
    color:#00d4ff;
}

.icons{
    display:flex;
    gap:15px;
    font-size:1.2rem;
}

.icons i{
    cursor:pointer;
    transition:0.3s;
}

.icons i:hover{
    color:#ff00aa;
    transform:scale(1.2);
}

/* HERO */

.hero{
    min-height:90vh;
    display:flex;
    align-items:center;
    justify-content:center;
    text-align:center;
    padding:40px;
}

.hero-content{
    max-width:850px;
}

.hero h1{
    font-size:4rem;
    line-height:1.1;
    margin-bottom:20px;
    background:linear-gradient(90deg,#00d4ff,#ff00aa,#00ff88);
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

.hero p{
    color:#cbd5e1;
    font-size:1.2rem;
    margin-bottom:35px;
}

.hero-buttons{
    display:flex;
    justify-content:center;
    gap:20px;
    flex-wrap:wrap;
}

.btn{
    padding:15px 30px;
    border:none;
    border-radius:50px;
    font-size:1rem;
    cursor:pointer;
    transition:0.4s;
    font-weight:600;
}

.btn-primary{
    background:linear-gradient(90deg,#00d4ff,#7c3aed);
    color:white;
    box-shadow:0 10px 30px rgba(0,212,255,0.3);
}

.btn-primary:hover{
    transform:translateY(-5px);
}

.btn-secondary{
    background:transparent;
    border:2px solid #00d4ff;
    color:white;
}

.btn-secondary:hover{
    background:#00d4ff;
    color:#000;
}

/* FEATURES */

.section{
    padding:80px 20px;
}

.section-title{
    text-align:center;
    font-size:2.8rem;
    margin-bottom:60px;
}

.features{
    max-width:1300px;
    margin:auto;
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
    gap:30px;
}

.feature-card{
    background:rgba(255,255,255,0.08);
    backdrop-filter:blur(20px);
    border-radius:25px;
    padding:35px;
    text-align:center;
    transition:0.4s;
    border:1px solid rgba(255,255,255,0.08);
}

.feature-card:hover{
    transform:translateY(-12px);
    background:rgba(255,255,255,0.12);
}

.feature-card i{
    font-size:3rem;
    margin-bottom:20px;
    background:linear-gradient(90deg,#00d4ff,#ff00aa);
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

.feature-card h3{
    margin-bottom:15px;
}

/* PRODUCTS */

.products{
    max-width:1300px;
    margin:auto;
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
    gap:30px;
}

.product-card{
    background:rgba(255,255,255,0.08);
    border-radius:25px;
    overflow:hidden;
    transition:0.4s;
    position:relative;
    backdrop-filter:blur(20px);
}

.product-card:hover{
    transform:translateY(-10px) scale(1.02);
}

.product-card img{
    width:100%;
    height:250px;
    object-fit:cover;
}

.product-info{
    padding:25px;
}

.product-info h3{
    margin-bottom:10px;
}

.price{
    color:#00ff88;
    font-size:1.4rem;
    margin-bottom:15px;
    font-weight:700;
}

.product-btn{
    width:100%;
    padding:12px;
    border:none;
    border-radius:12px;
    background:linear-gradient(90deg,#ff00aa,#7c3aed);
    color:white;
    font-weight:600;
    cursor:pointer;
    transition:0.3s;
}

.product-btn:hover{
    opacity:0.8;
}

/* STATS */

.stats{
    max-width:1200px;
    margin:auto;
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
    gap:30px;
}

.stat-box{
    background:rgba(255,255,255,0.08);
    padding:40px;
    border-radius:25px;
    text-align:center;
}

.stat-box h2{
    font-size:3rem;
    color:#00d4ff;
}

/* NEWSLETTER */

.newsletter{
    max-width:900px;
    margin:auto;
    background:linear-gradient(90deg,#7c3aed,#00d4ff);
    padding:50px;
    border-radius:30px;
    text-align:center;
}

.newsletter h2{
    margin-bottom:20px;
    font-size:2.5rem;
}

.newsletter-form{
    margin-top:25px;
    display:flex;
    justify-content:center;
    gap:15px;
    flex-wrap:wrap;
}

.newsletter input{
    padding:15px 20px;
    border:none;
    border-radius:50px;
    width:320px;
    outline:none;
}

/* FOOTER */

footer{
    padding:40px;
    text-align:center;
    color:#94a3b8;
}

/* MOBILE */

@media(max-width:768px){

.hero h1{
    font-size:2.8rem;
}

.nav-links{
    display:none;
}

.section-title{
    font-size:2rem;
}

}
</style>
</head>

<body>

<!-- HEADER -->

<header>
    <div class="navbar">
        <div class="logo">NeoShop</div>

        <div class="nav-links">
            <a href="#">Home</a>
            <a href="#">Products</a>
            <a href="#">Trending</a>
            <a href="#">About</a>
            <a href="#">Contact</a>
        </div>

        <div class="icons">
            <i class="fa-solid fa-magnifying-glass"></i>
            <i class="fa-regular fa-heart"></i>
            <i class="fa-solid fa-cart-shopping"></i>
        </div>
    </div>
</header>

<!-- HERO -->

<section class="hero">
    <div class="hero-content">
        <h1>Future Shopping Experience</h1>

        <p>
            Discover premium gadgets, fashion, accessories and modern lifestyle products
            with stunning UI and colorful next-gen design.
        </p>

        <div class="hero-buttons">
            <button class="btn btn-primary">Shop Now</button>
            <button class="btn btn-secondary">Explore</button>
        </div>
    </div>
</section>

<!-- FEATURES -->

<section class="section">
    <h2 class="section-title">Why Choose Us</h2>

    <div class="features">

        <div class="feature-card">
            <i class="fa-solid fa-truck-fast"></i>
            <h3>Fast Delivery</h3>
            <p>Super fast and secure shipping worldwide.</p>
        </div>

        <div class="feature-card">
            <i class="fa-solid fa-shield-heart"></i>
            <h3>Secure Payment</h3>
            <p>100% trusted and encrypted payment system.</p>
        </div>

        <div class="feature-card">
            <i class="fa-solid fa-headphones"></i>
            <h3>24/7 Support</h3>
            <p>Always available customer support team.</p>
        </div>

        <div class="feature-card">
            <i class="fa-solid fa-star"></i>
            <h3>Premium Quality</h3>
            <p>Top-rated products with modern generation style.</p>
        </div>

    </div>
</section>

<!-- PRODUCTS -->

<section class="section">
    <h2 class="section-title">Trending Products</h2>

    <div class="products">

        <div class="product-card">
            <img src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?q=80&w=1200&auto=format&fit=crop" alt="phone">
            <div class="product-info">
                <h3>iPhone Ultra</h3>
                <div class="price">$999</div>
                <button class="product-btn">Add To Cart</button>
            </div>
        </div>

        <div class="product-card">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?q=80&w=1200&auto=format&fit=crop" alt="laptop">
            <div class="product-info">
                <h3>MacBook Pro</h3>
                <div class="price">$1499</div>
                <button class="product-btn">Add To Cart</button>
            </div>
        </div>

        <div class="product-card">
            <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1200&auto=format&fit=crop" alt="shoes">
            <div class="product-info">
                <h3>Sport Sneakers</h3>
                <div class="price">$199</div>
                <button class="product-btn">Add To Cart</button>
            </div>
        </div>

    </div>
</section>

<!-- STATS -->

<section class="section">
    <div class="stats">

        <div class="stat-box">
            <h2 id="users">0</h2>
            <p>Happy Users</p>
        </div>

        <div class="stat-box">
            <h2 id="orders">0</h2>
            <p>Orders Completed</p>
        </div>

        <div class="stat-box">
            <h2 id="products">0</h2>
            <p>Products</p>
        </div>

        <div class="stat-box">
            <h2 id="reviews">0</h2>
            <p>Positive Reviews</p>
        </div>

    </div>
</section>

<!-- NEWSLETTER -->

<section class="section">
    <div class="newsletter">
        <h2>Join Our Newsletter</h2>
        <p>Get latest offers and updates directly to your inbox.</p>

        <div class="newsletter-form">
            <input type="email" placeholder="Enter your email">
            <button class="btn btn-primary">Subscribe</button>
        </div>
    </div>
</section>

<!-- FOOTER -->

<footer>
    © 2026 NeoShop — Designed for Modern Generation
</footer>

<script>

/* Animated Counter */

function counter(id,target,speed){

    let element=document.getElementById(id);
    let count=0;

    let interval=setInterval(()=>{

        count += Math.ceil(target/100);

        if(count>=target){
            count=target;
            clearInterval(interval);
        }

        element.innerText=count+"+";

    },speed);
}

counter("users",12000,20);
counter("orders",8500,25);
counter("products",1500,30);
counter("reviews",9800,20);

/* Add to cart animation */

let buttons=document.querySelectorAll(".product-btn");

buttons.forEach(btn=>{

    btn.addEventListener("click",()=>{

        btn.innerHTML="Added ✓";
        btn.style.background="linear-gradient(90deg,#00ff88,#00d4ff)";

        setTimeout(()=>{
            btn.innerHTML="Add To Cart";
            btn.style.background="linear-gradient(90deg,#ff00aa,#7c3aed)";
        },1500);

    });

});

/* Smooth Scroll */

document.querySelectorAll('a').forEach(anchor=>{

    anchor.addEventListener('click',function(e){

        e.preventDefault();

    });

});

</script>

</body>
</html>
