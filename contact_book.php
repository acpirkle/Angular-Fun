<html>
<?php include('includes/header.php'); ?>
<link rel="stylesheet" href="css/contact.css">
<body>
  <a href="password_generator.php" class="btn">Password Generator</a>
  <div data-ng-app="contacts" data-ng-controller="cntctbk" id="angulartraining">
    <header class="jumbotron col-12">
      <h3>Another Contact Book</h3>
    </header>
    <section class="row" id="contact_form">
        <form id="angulartestform" class="col-12" name="contactform" novalidate>
          <div class="form-row">
            <div class="form-group col-lg-4">
              <label for="angfname">Name</label>
              <input type="text" name="name" maxlength="75" data-ng-model="contact.name" id="angfname" class="form-control" required>
              <small data-ng-show="contactform.name.$touched && contactform.name.$invalid" class="form-text form-text-invalid">Name is Required.</small>
            </div>
            <div class="form-group col-lg-4">
              <label for="angmname">Phone</label>
              <input type="text" maxlength="14" name="phone" data-ng-model="contact.phone" data-mask="(000) 000-0000" id="angmname" class="form-control" required>
              <small data-ng-show="contactform.phone.$touched && contactform.phone.$invalid" class="form-text form-text-invalid">Phone is Required.</small>
            </div>
            <div class="form-group col-lg-4">
              <label for="angstate">State</label>
              <select data-ng-model="contact.state" name="state" class="form-control" id="angstate" data-ng-options="x.Name for x in states" required>
                </select>
              <small data-ng-show="contactform.state.$touched && contactform.state.$invalid" class="form-text form-text-invalid">State is Required.</small>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-12">
              <label for="angemail">Email</label>
              <input type="email" maxlength="100" name="email" data-ng-model="contact.email" id="angemail" class="form-control" required>
              <small data-ng-show="contactform.email.$touched && contactform.email.$invalid" class="form-text form-text-invalid">Email is Required.</small>
            </div>
          </div>
          <button type="submit" class="btn" data-ng-disabled="contactform.$invalid" data-ng-click="addcontact()">Add Contact</button>
        </form>
    </section>
    <br>
    <section class="row" id="contacts_table">
      <div class="row">
        <div class="col-lg-3">
          <input type="search" data-ng-model="cq.name" class="form-control" placeholder="search by name..." aria-label="search contacts">
        </div>
        <div class="col-lg-3">
          <input type="search" data-ng-model="cq.phone" class="form-control" placeholder="search by phone..." aria-label="search contacts">
        </div>
        <div class="col-lg-3">
          <input type="search" data-ng-model="cq.state" class="form-control" placeholder="search by state..." aria-label="search contacts">
        </div>
        <div class="col-lg-3">
          <input type="search" data-ng-model="cq.email" class="form-control" placeholder="search by email..." aria-label="search contacts">
        </div>
      </div>
      <div class="table-responsive">
        <table class="table">
          <thead class="thead-dark">
            <tr>
              <th colspan="4" class="table-title">
                <h3>Contacts</h3>
                <a class="btn btn-link" data-ng-init="toggle = false" data-ng-click="toggle = !toggle">
                <i class="fas fa-angle-down" data-ng-if="!toggle" ></i>
                <i class="fas fa-angle-up" data-ng-if="toggle" ></i>
              </a>
              </th>
            </tr>
            <tr>
              <th>Name</th>
              <th>Phone</th>
              <th>State</th>
              <th>Email</th>
            </tr>
          </thead>
          <tbody data-ng-if="toggle">
            <tr class="animateyoumf" ng-repeat="x in contacttable | filter:cq:strict">
              <td>{{x.name}}</td>
              <td>{{x.phone}}</td>
              <td>{{x.state}}</td>
              <td>{{x.email}}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </section>
  </div>
  <?php include('includes/footer.php'); ?>
</body>

</html>
