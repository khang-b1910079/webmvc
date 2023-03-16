<?php
	include 'inc/header.php';
	//include'inc/slider.php';

?>

<?php
   $login_check=Session::get('customer_login');
   if($login_check==false){
     header('Location:login.php');
   }
   $ct=new cart();
   if(isset($_GET['confirmid'])){
    $id=$_GET['confirmid'];
    $time=$_GET['time'];
    $price=$_GET['price'];
    $shifted_confirm=$ct->shifted_confirm($id,$time,$price);
 }
?>	
<style>
    .box_left{
        width: 100%;
        border: 1px solid #666;
        padding: 4px;

    }
    
    .submit_order{
        padding: 10px 70px;
        border: none;
        background: red;
        font-size: 25px;
        color: #fff;
        margin-bottom: 20px;
        border-radius: 5px;
        cursor: pointer;
    }
    .a_order{
        background: red;
        padding: 7px 20px;
        color: #fff;
        font-size: 21px;
    }
</style>
<form action="" method="post">
<div class="main">
    <div class="content">
    	<div class="section group">
            <div class="heading">
                <h3>Details Order</h3>
            </div>
            <div class="clear"></div>
            <div class="box_left">
            <div class="cartpage">
						<table class="tblone">
							<tr>
                                <th width="10%">Id</th>
								
								<th width="20%">Product Name</th>
								<th width="20%">Image</th>
								<th width="15%">Price</th>
								<th width="15%">Quantity</th>
								<th width="15%">Date</th>
								<th width="10%">Status</th>
							
							
							</tr>
							<?php
                            $customer_id= Session::get('customer_id'); 
							$get_cart_ordered=$ct->get_cart_ordered($customer_id);
							if($get_cart_ordered){
								$i=0;
								$qty=0;
                            
								while($result=$get_cart_ordered->fetch_assoc()){
									$i++;
							?>
	
							<tr>
                                <td><?php echo $i?></td>
								
								<td><?php echo $result['productName']?></td>
								<td><img src="admin/uploads/<?php echo $result['image']?>" alt=""></td>
								<td><?php echo $result['price'].' '.'VND'?></td>
								<td><?php echo $result['quantity'] ?></td>
								<td><?php echo $fm->formatDate($result['date_order']) ?></td>
                                <td>
                                    <?php
                                    if($result['status']==0){
                                        echo 'Pending';
                                    }elseif($result['status']==1){
                                    ?>
                                        <a href="?confirmid=<?php echo $customer_id?>&price=<?php echo $result['price'] ?>&time=<?php echo $result['date_order'] ?>">Shifted</a>
                                    <?php
                                    }else{
                                        echo 'Confirmed';
                                    }
                                    ?>
                                </td>
							</tr>
						<?php
                                }
                            }
                        ?>
						</table>
	
					</div>
                    <div class="shopping">
						<div class="shopleft">
							<a href="index.php"> <img src="images/shop.png" alt="" /></a>
						</div>
                    </div>
					
    		</div>  	

 		</div>
 	</div>
</div>
</form>
<?php
	include'inc/footer.php';
?>
	
