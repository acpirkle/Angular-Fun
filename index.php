<!DOCTYPE html>
<html>
  <?php include('includes/header.php'); ?>
  <link rel="stylesheet" href="css/pswrd.css">
  <link rel="stylesheet" href="css/contact.css">
  <body>
    <nav class="navbar navbar-expand-lg bg-custom navbar-dark fixed-top">
      <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#collapseNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="collapseNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="#pswrd_background">Password Generator</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#contact_background">Contact Book</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#gallery_background">Photo Gallery</a>
          </li>
        </ul>
      </div>
    </nav>
    <section class="container parallax_background" id="pswrd_background">
      <div class="centerpasswordgen">
        <?php include('pages/password_generator.php'); ?>
      </div>
    </section>
    <section class="container parallax_background" id="contact_background">
      <div class="centercontents">
        <?php include('pages/contact_book.php'); ?>
      </div>
    </section>
    <section class="container parallax_background" id="gallery_background">
      <div class="centercontents">
      </div>
    </section>
    <?php include('includes/footer.php'); ?>
  </body>
</html>
