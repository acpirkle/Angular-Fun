<div data-ng-app="securityhelper" data-ng-controller="pswrdgen" id="pswrdgenerator_div" class="shadow">
  <header class="jumbotron col-12">
    <h3>Password Generator</h3>
  </header>
  <div id="passwordgen_module">
    <div class="row">
      <div class="col-12">
        <form id="pswdgenerator_form" name="pswdgenerator" method="post" novalidate>
          <div class="form-row">
            <div class="col-lg-1"></div>
            <div class="form-group col-lg-4">
              <label for="genNumWrds">Number of Words</label>
              <input type="number" name="numWords" id="genNumWrds" data-ng-model="genOpt.num" class="form-control" min="2" max="10" required>
              <small data-ng-show="pswdgenerator.numWords.$invalid" class="form-text form-text-invalid">Number of Words must be between 2 and 10</small>
            </div>
            <div class="form-group col-lg-4">
              <label for="genTypeSep">Type of Separator</label>
              <select class="form-control" data-ng-model="genOpt.type" required>
            <option value=" ">Whitepace</option>
            <option value="_">Underscore</option>
            <option value=".">Period</option>
            <option value="-">Hyphen</option>
            <option value=",">Comma</option>
          </select>
            </div>
            <div class="form-group col-lg-2">
              <button type="submit" class="btn" id="pswdgenbtn" data-ng-disabled="pswdgenerator.numWords.$invalid" data-ng-click="generate()">Generate Password</button>
            </div>
          </div>
        </form>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-2"></div>
        <div class="input-group col-12 col-lg-8" id="pswrd_suggested_div">
          <input class="form-control" id="password_suggested" value="{{password}}">
          <div class="input-group-append">
            <button type="button" id="cpypswrdbtn" class="btn" ngclipboard data-clipboard-target="#password_suggested" data-toggle="tooltip"><i class="fas fa-clipboard"></i></button>
          </div>
        </div>
    </div>
  </div>
  <br>
  <!-- <div class="row">
    <div class="col-md-4">
      <div class="input-group">
        <input type="text" ng-model="hexconvert" class="form-control">
        <div class="input-group-append">
          <button class="btn btn-outline-secondary" type="button" ng-click="hex(hexconvert | num)">Convert</button>
        </div>
      </div>
    </div>
    <p>Converted Number: {{returnedhex}}</p>
  </div> -->
</div>
