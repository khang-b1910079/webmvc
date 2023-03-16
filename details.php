<?php
	include 'inc/header.php';
	//include'inc/slider.php';

?>

<style>
	.button_details form{
		float: left;
		margin: 0px 5px;
	}
</style>
<?php
$customer_id= Session::get('customer_id');
	if(!isset($_GET['proid'])||$_GET['proid']==NULL){
        echo "<script>window.location='404.php'</script>";
    }else{
        $id=$_GET['proid'];
    }
	if($_SERVER['REQUEST_METHOD'] =='POST'&& isset($_POST['compare'])){
		$productid=$_POST['productid'];
        $insertCompare = $product->insertCompare($productid,$customer_id);
	}
	if($_SERVER['REQUEST_METHOD'] =='POST'&& isset($_POST['wishlist'])){
		$productid=$_POST['productid'];
        $insertWishlist = $product->insertWishlist($productid,$customer_id);
	}
	if($_SERVER['REQUEST_METHOD'] =='POST'&& isset($_POST['submit'])){
		$quantity=$_POST['quantity'];
        $insertCart = $ct->add_to_cart($quantity,$id);
	}
	if(isset($_POST['binhluan_submit'])){
		$binhluan_insert=$cs->insert_binhluan();
	}
?>	
 <div class="main">
    <div class="content">
    	<div class="section group">
			<?php
				$get_product_details=$product->get_details($id);
				if($get_product_details){
					while($result_details=$get_product_details->fetch_assoc()){

					
				
			?>
				<div class="cont-desc span_1_of_2">				
					<div class="grid images_3_of_2">
						<img src="admin/uploads/<?php echo $result_details['image']?>" alt="" />
					</div>
				<div class="desc span_3_of_2">
					<h2><?php echo $result_details['productName']?></h2>
					<p><?php echo $fm->textShorten($result_details['product_desc'],100) ?></p>					
					<div class="price">
						<p>Price: <span><?php echo $fm->format_currency($result_details['price']).""."VND"?></span></p>
						<p>Category: <span><?php echo $result_details['catName']?></span></p>
						<p>Brand:<span><?php echo $result_details['brandName']?></span></p>
					</div>
				<div class="add-cart">
					<form action="" method="post">
						<input type="number" class="byfield" name="quantity" value="1" min="1"/>
						<input type="submit" class="buysubmit" name="submit" value="Buy Now"/>
					</form>	
					<?php
					if(isset($AddtoCart)){
						echo '<span style="color:red;font-size=18px;">Product Already added!!</span>';
					}		
					?>
						
				</div>
				<div class="add-cart">
					<div class="button_details">
					<form action="" method="POST">
						<!-- <a href="?wlist=<?php echo $result_details['productId'] ?>" class="buysubmit">Save to Wishlist</a> -->
						<!-- <a href="?compare=<?php echo $result_details['productId'] ?>" class="buysubmit">Compare Product</a> -->
						<input type="hidden" name="productid" value="<?php echo $result_details['productId'] ?>">
						
						<?php
							$login_check=Session::get('customer_login');
							if($login_check){
								echo '<input type="submit" class="buysubmit" name="compare" value="Compare Product"><br>';
							}else{
								echo '';
							}
						?>
						<?php
						if(isset($insertCompare)){
							echo $insertCompare;
						}
						?>
					</form>	
					<form action="" method="POST">
						<!-- <a href="?wlist=<?php echo $result_details['productId'] ?>" class="buysubmit">Save to Wishlist</a> -->
						<!-- <a href="?compare=<?php echo $result_details['productId'] ?>" class="buysubmit">Compare Product</a> -->
						<input type="hidden" name="productid" value="<?php echo $result_details['productId'] ?>">
						
						<?php
							$login_check=Session::get('customer_login');
							if($login_check){
								
								echo '<input type="submit" class="buysubmit" name="wishlist" value="Save to wishlist"><br>';
							}else{
								echo '';
							}
						?>
						<?php
						if(isset($insertWishlist)){
							echo $insertWishlist;
						}
						?>
					</form>	
					</div>
					<div class="clear">

					</div>
				</div>
			</div>
			<div class="product-desc">
			<h2>Product Details</h2>
			<p><?php echo $fm->textShorten($result_details['product_desc'],100) ?></p>					

	    </div>
				
	</div>
	<?php
					}
				}
	?>
				<div class="rightsidebar span_3_of_1">
					<h2>CATEGORIES</h2>
					<ul>
						<?php
						$getall_category=$cat->show_category_fontend();
						if($getall_category){
							while($result_allcat=$getall_category->fetch_assoc()){
						
						?>
				      	<li><a href="productbycat.php?catid=<?php echo $result_allcat['catId']?>"><?php echo $result_allcat['catName']?></a></li>
    				<?php
					}
				}
					?>
					</ul>
					
    	
 				</div>
 		</div>
		<div class="binhluan">
			<div class="row">
				<div class="col-md-8">
					<h5>Ý kiến sản phẩm</h5>
					<?php
						if(isset($binhluan_insert)){
							echo $binhluan_insert;
						}
					?>
					<form action="" method="post">
						<p><input type="hidden" value="<?php echo $id ?>" name="product_id_binhluan"></p>
						<p><input type="text" placeholder="Điền trên" class="form-control" name="tennguoibinhluan"></p>
						<p><textarea rows="5" name="binhluan" placeholder="Bình luận..." class="form-control"></textarea></p>
						<p><input type="submit" name="binhluan_submit" class="btn btn-success" value="Gửi bình luận"></p>
					</form>
					
				</div>
			</div>
			
		</div>
 	</div>
<?php
	include 'inc/footer.php';
?>
	
