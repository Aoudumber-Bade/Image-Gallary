<?php
    include("./connect.php");
    error_reporting(0);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Aoudumber Bade - CodeMakerrs">
    <link rel="stylesheet" href="./style.css">
    <title>Image Gallery</title>
</head>
<body>
    <section class="form-container">
    <h1>Uplodaing Your Images</h1>
        <form action="" method="post" enctype="multipart/form-data">
            <div class="inp">
                <fieldset>
                    <legend>Image Title</legend>
                    <input type="text" name="title" placeholder="Your image title..." required>
                </fieldset>
            </div>

            <div class="inp">
                <fieldset>
                    <legend>Choose Image Category</legend>
                    <select name="category" id="">
                        <option value="Animals">Animals</option>
                        <option value="Cars">Cars</option>
                        <option value="Coding">Coding</option>
                        <option value="Nature">Nature</option>
                        <option value="Books">Books</option>
                    </select>
                </fieldset>
            </div>

            <div class="inp">
                <fieldset>
                    <input type="file" name="image" class="file-upload" style="width:200px" required>
                </fieldset>
            </div>

            <div class="inp">
                <input type="submit" class="btn" name="upload" value="Upload Image">
            </div>
        </form>

    </section>

    <section class="gall-container">
        <h1>The Image Gallery</h1>
        <div class="cat-container">
            <a href="?category=Cars" class="btns" name="Cars">Cars</a>
            <a href="?category=Animals" class="btns" name="Animals">Animals</a>
            <a href="?category=Nature" class="btns" name="Nature">Nature</a>
            <a href="?category=Books" class="btns" name="Books">Books</a>
            <a href="?category=Coding" class="btns" name="Coding">Coding</a>
        </div>

        <div class="images">
            <?php 

                $sCategory = isset($_GET["category"]) ? $_GET["category"] : null;

                $query = "SELECT * FROM gallary WHERE category='$sCategory'";

                $data = mysqli_query($conn, $query);
                $total = mysqli_num_rows($data);
                
                if ($total != 0) {
                    while ($res = mysqli_fetch_assoc($data)) {
                        echo "<div class='img-box'>";
                        echo "<img src='$res[path]' class='imgs'>";
                        echo "<div class='content-box'><p class='title'>$res[title]</p></div>";
                        echo "</div>";
                    }
                } else {
                    echo "<p>There are No images available for the selected category.</p>";
                }
            ?>
        </div>
    </section>
</body>
</html>

<?php
    
    if(isset($_POST["upload"])){
        $title = $_POST["title"];
        $category = $_POST["category"];
        $image = $_FILES['image']['name'];
        $tempname = $_FILES['image']['tmp_name'];
        
        $folder = "./img/".$image;

        if(move_uploaded_file($tempname,$folder)){
            $query = "INSERT INTO gallary(title,category,path) VALUES('$title','$category','$folder')";
            $data = mysqli_query($conn,$query);
            
            if($data) {
                echo "<script>
                alert('Image Uploaded Successfully!!!');
            </script>";
            }else {
                echo "<script>
                alert('Image is not Uploaded!!!');
            </script>";
            }

        }
    }

?>