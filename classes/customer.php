<?php

$filepath=realpath(dirname(__FILE__));
include_once ($filepath.'/../lib/database.php');
include_once  ($filepath.'/../helpers/format.php');

?>
<?php
    class customer
    {   
        private $db;
        private $fm;
        public function __construct()
        {
            $this->db =new Database();
            $this->fm =new Format();

        }
        public function insert_binhluan(){
            $product_id=$_POST['product_id_binhluan'];
            $tenbinhluan=$_POST['tennguoibinhluan'];
            $binhluan=$_POST['binhluan'];
            if($tenbinhluan==''||$binhluan==''){
                $alert = '<span class="error">file must not be empty</span>';
                return $alert;
            }else{
                $query = "INSERT INTO tbl_binhluan(tenbinhluan,binhluan,product_id) VALUES ('$tenbinhluan','$binhluan','$product_id')";
                $result =$this->db->insert($query);
                if($result){
                    $alert = "<span class='success'>insert comment Successfully</span>";
                        
                    return $alert;
                }else{
                    $alert = "<span class='error'>insert comment not Successfully</span>";
                    return $alert;
                }
            }
        }
        public function insert_customer($data){
            $name =mysqli_real_escape_string($this->db->link,$data['name']);
            $city =mysqli_real_escape_string($this->db->link,$data['city']);
            $zipcode =mysqli_real_escape_string($this->db->link,$data['zipcode']);
            $email =mysqli_real_escape_string($this->db->link,$data['email']);
            $address =mysqli_real_escape_string($this->db->link,$data['address']);
            $country =mysqli_real_escape_string($this->db->link,$data['country']);
            $phone =mysqli_real_escape_string($this->db->link,$data['phone']);
            $password =mysqli_real_escape_string($this->db->link,md5($data['password']));
            if($name==""||$city==""||$zipcode==""||$email==""||$address==""||$country==""||$phone==""||$password==""){
                $alert ="<span class='error'>Files must be not empty</span>" ;
                return $alert;
            }else{
                $check_email = "SELECT * from tbl_customer where email='$email' limit 1 ";
                $result_check = $this->db->select($check_email);
                if($result_check){
                    $alert = '<span class="error">Email already</span>';
                    return $alert;
                }else{
                    $query = "INSERT INTO tbl_customer(name,city,zipcode,email,address,country,phone,password) VALUES ('$name','$city','$zipcode','$email','$address','$country','$phone','$password')";
                    $result =$this->db->insert($query);
                    if($result){
                        $alert = "<span class='success'>insert customer Successfully</span>";
                        
                        return $alert;
                    }else{
                        $alert = "<span class='error'>insert customer not Successfully</span>";
                        return $alert;
                }
                }
            }
            
        }
        public function login_customer($data){
            $email =mysqli_real_escape_string($this->db->link,$data['email']);
            $password =mysqli_real_escape_string($this->db->link,md5($data['password']));

            if($email==""||$password==""){
                $alert ='<span class="error">Pass and Email must be not empty</span>';
                return $alert;
            }else{
                $check_login = "SELECT * from tbl_customer where email='$email' and password='$password'";
                $result_check = $this->db->select($check_login);
                if($result_check){
                    $value=$result_check->fetch_assoc();
                    Session::set('customer_login',true);
                    Session::set('customer_id',$value['id']);
                    Session::set('customer_name',$value['name']);
                    header('Location:order.php');
                }else{
                    $alert = "<span class='error'>Email and Pass does not match</span>";
                    return $alert;
                }
            }

        }
        public function show_customer($id){
            $query = "SELECT * from tbl_customer where id='$id'";
            $result = $this->db->select($query);
            return $result;
        }
        public function update_customer($data,$id){
            $name =mysqli_real_escape_string($this->db->link,$data['name']);
            
            $zipcode =mysqli_real_escape_string($this->db->link,$data['zipcode']);
            $email =mysqli_real_escape_string($this->db->link,$data['email']);
            $address =mysqli_real_escape_string($this->db->link,$data['address']);
            
            $phone =mysqli_real_escape_string($this->db->link,$data['phone']);
            
            if($name==""||$zipcode==""||$email==""||$address==""||$phone==""){
                $alert ="<span class='error'>Files must be not empty</span>" ;
                return $alert;
            }else{
                    $query = "UPDATE tbl_customer set name='$name',zipcode='$zipcode',email='$email',address='$address',phone='$phone' where id='$id'";
                    $result =$this->db->update($query);
                    if($result){
                        $alert = "<span class='success'>update customer Successfully</span>";
                        
                        return $alert;
                    }else{
                        $alert = "<span class='error'>update customer not Successfully</span>";
                        return $alert;
                    
                    }
                }
        }
    }
?>