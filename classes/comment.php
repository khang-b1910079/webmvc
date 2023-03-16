<?php
    $filepath=realpath(dirname(__FILE__));
    include_once ($filepath.'/../lib/database.php');
    include_once  ($filepath.'/../helpers/format.php');
?>
<?php
    class comment
    {   
        private $db;
        private $fm;
        public function __construct()
        {
            $this->db =new Database();
            $this->fm =new Format();

        }
        public function show_comment(){
            $query = "SELECT * FROM tbl_binhluan order by binhluan_id desc";
            $result =$this->db->select($query);
            return $result;
        }
        public function getbrandbyId($id){
            $query = "SELECT * FROM tbl_brand where brandId='$id'";
            $result =$this->db->select($query);
            return $result;
        }
        public function update_brand($brandName,$id){
            $brandName = $this ->fm->validation($brandName);
            $brandName =mysqli_real_escape_string($this->db->link,$brandName);
            $id =mysqli_real_escape_string($this->db->link,$id);

            if(empty($brandName) ){
                $alert ="<span class='success'>brand must be not empty</span>" ;
                return $alert;
            }else{
                $query = "UPDATE tbl_brand SET brandName = '$brandName' WHERE brandId='$id'";
                $result =$this->db->update($query);
                if($result){
                    $alert = "<span class='success'>update brand Successfully</span>";
                    return $alert;
                }else{
                    $alert = "<span class='success'>insert brand not Successfully</span>";
                    return $alert;
                }
            }
        }
        public function del_comment($binhluan_id){
            $query = "DELETE FROM tbl_binhluan where binhluan_id='$binhluan_id'";
            $result =$this->db->delete($query);
            if($result){
                $alert = "<span class='success'>delete comment Successfully</span>";
                return $alert;
            }else{
                $alert = "<span class='success'>delete comment not Successfully</span>";
                return $alert;
            }
        }
        
    }
?>