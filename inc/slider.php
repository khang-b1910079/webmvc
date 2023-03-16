<div class="header_bottom">
		<div class="header_bottom_left">
			<div class="section group">
				<?php
				$getLastestDell=$product->getLastestDell();
				if($getLastestDell){
					while($resultdell=$getLastestDell->fetch_assoc()){
				?>
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php"> <img src="admin/uploads/<?php echo $resultdell['image']?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>DELL</h2>
						<p><?php echo $resultdell['productName'] ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $resultdell['productId'] ?>">Add to cart</a></span></div>
				   </div>
			   </div>
			   <?php
					}
				}
			   ?>			
				<?php
				$getLastestHuawai=$product->getLastestHuawai();
				if($getLastestHuawai){
					while($resultHuawai=$getLastestHuawai->fetch_assoc()){
				?>
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php"> <img src="admin/uploads/<?php echo $resultHuawai['image']?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>Huawai</h2>
						<p><?php echo $resultHuawai['productName'] ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $resultHuawai['productId'] ?>">Add to cart</a></span></div>
				   </div>
			   </div>
			   <?php
					}
				}
			   ?>			
			</div>
			<div class="section group">
				<?php
				$getLastestOppo=$product->getLastestOppo();
				if($getLastestOppo){
					while($resultOppo=$getLastestOppo->fetch_assoc()){
				?>
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php"> <img src="admin/uploads/<?php echo $resultOppo['image']?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>Oppo</h2>
						<p><?php echo $resultOppo['productName'] ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $resultOppo['productId'] ?>">Add to cart</a></span></div>
				   </div>
			   </div>
			   <?php
					}
				}
			   ?>
			   <?php
				$getLastestSamsung=$product->getLastestSamsung();
				if($getLastestSamsung){
					while($resultSamsung=$getLastestSamsung->fetch_assoc()){
				?>
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php"> <img src="admin/uploads/<?php echo $resultSamsung['image']?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>Samsung</h2>
						<p><?php echo $resultSamsung['productName'] ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $resultSamsung['productId'] ?>">Add to cart</a></span></div>
				   </div>
			   </div>
			   <?php
					}
				}
			   ?>						
			</div>
		  <div class="clear"></div>
		</div>
			 <div class="header_bottom_right">
		   <!-- FlexSlider -->
             
			<section class="slider">
				  <div class="flexslider">
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
	      </section>
<!-- FlexSlider -->
	    </div>
	  <div class="clear"></div>
</div>	