<!-- cart item area start -->
<div class="shopping-cart">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="location">
                    <ul>
                        <li><a href="index.html" title="go to homepage">Home<span>/</span></a>  </li>
                        <li><strong> Shopping cart</strong></li>
                    </ul>
                </div>
            </div>
        </div>
        <form action="/order" method="post">
            
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        
                            <table class="table-bordered table table-hover">
                                <thead>
                                    <tr>
                                        <th class="cart-item-img"></th>
                                        <th class="cart-product-name">Product Name</th>
                                        <th class="unit-price">Unit Price</th>
                                        <th class="quantity">Qty</th>
                                        <th class="subtotal">Subtotal</th>
                                        <th class="remove-icon"></th>
                                    </tr>
                                </thead>
                                <tbody class="text-center" id="order-table">



                                </tbody>
                            </table>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                </div>
                <div class="col-sm-4">
                </div>
                <div class="col-sm-4">
                    <div class="totals">
                        <h3>Sub Total <span class="order_subtotoal"></span></h3>
                        <input type="hidden" value="500" name="totals">
                      
                        <div class="shopping-button">

                            <button type="submit">checkout</button>

                             <button type="submit">Login before Checkout</button>
                             <a href="/login">Login Here</a>
                             
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- cart item area end -->