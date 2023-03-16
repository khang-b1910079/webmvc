<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/comment.php'; ?>
<?php 
    $commnet= new comment();
	if(isset($_GET['delid'])){
        $binhluan_id=$_GET['delid'];
		$delcomment = $commnet->del_comment($binhluan_id);
    }
?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Comment List</h2>
                <div class="block">
				<?php
                if(isset($delcomment)){
                    echo $delcomment;
                }
                ?>        
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>Serial No.</th>
							<th>Tên Bình luận</th>
							<th>Bình luận</th>
							<th>Action</th>
							
						</tr>
					</thead>
					<tbody>
					<?php 
						$show_comment = $commnet->show_comment();
						if($show_comment){
							$i=0;
							while($result = $show_comment->fetch_assoc()){
								$i++;
							
						
					?>
						<tr class="odd gradeX">
							<td><?php echo $i;?></td>
							<td><?php echo $result['tenbinhluan'];?></td>
                            <td><?php echo $result['binhluan'];?></td>
							<td><a onclick="return confirm('Are you want to delete?') " href="?delid=<?php echo $result['binhluan_id'];?>">Delete</a></td>
						</tr>
						<?php
							}
						}
						?>
					</tbody>
				</table>
               </div>
            </div>
        </div>
<script type="text/javascript">
	$(document).ready(function () {
	    setupLeftMenu();

	    $('.datatable').dataTable();
	    setSidebarHeight();
	});
</script>
<?php include 'inc/footer.php';?>

