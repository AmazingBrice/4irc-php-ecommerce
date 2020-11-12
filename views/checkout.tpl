{extends file="./base.tpl"}
{block name=page_title}Ma commande{/block} <!-- A affecter dynamiquement via Smarty lors du routing-->
{block name=main}
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="//cdn.materialdesignicons.com/5.4.55/css/materialdesignicons.min.css  " rel="stylesheet">

<!--Section: Block Content-->
<section>

  <!--Right Total Column-->
  <div class="row">
    <div class="col-md-4 order-md-2 mb-4">
      <h4 class="d-flex justify-content-between align-items-center mb-3">
      <span class="text-muted">Ma commande</span>
      </h4>
      <ul class="list-group mb-3">
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h6 class="my-0">Produit 1</h6>
                <small class="text-muted">Description</small>
              </div>
              <span class="text-muted">$12</span>
            </li>
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h6 class="my-0">Produit 2</h6>
                <small class="text-muted">Description</small>
              </div>
              <span class="text-muted">$8</span>
            </li>
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h6 class="my-0">Produit 3</h6>
                <small class="text-muted">Description</small>
              </div>
              <span class="text-muted">$5</span>
            </li>
            <li class="list-group-item d-flex justify-content-between bg-light">
              <div class="text-success">
                <h6 class="my-0">Code de réduction</h6>
                <small>PROMO2020</small>
              </div>
              <span class="text-success">-$5</span>
            </li>
            <li class="list-group-item d-flex justify-content-between">
              <span>Total (USD)</span>
              <strong>$20</strong>
            </li>
          </ul>
          <form class="card p-2">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Promo code">
              <div class="input-group-append">
                <button type="submit" class="btn btn-success">Valider</button>
              </div>
            </div>
          </form>
    </div>

    <div class="col-md-8 order-md-1">


          <h4 class="mb-3">Adresse de livraison</h4>

          <div id="shipping-adress"

          <form class="needs-validation" novalidate="">

            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="firstName">First name</label>
                <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Valid first name is required.
                </div>
              </div>

              <div class="col-md-6 mb-3">
                <label for="lastName">Last name</label>
                <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Valid last name is required.
                </div>
              </div>
            </div>

            <div class="mb-3">
              <label for="email">Email</label>
              <input type="email" class="form-control" id="email" placeholder="mail@exemple.com">
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>

            <div class="mb-3">
              <label for="address">Addresse</label>
              <input type="text" class="form-control" id="address" required>
              <div class="invalid-feedback">
                Veuillez entrer votre adresse de livraison.
              </div>
            </div>

            <div class="mb-3">
              <label for="address2">Addresse 2 <span class="text-muted">(Optionnelle)</span></label>
              <input type="text" class="form-control" id="address2">
            </div>

            

            <div class="row">

              <div class="mb-3">
                <label for="address2">Ville / Commune</label>
                <input type="text" class="form-control" id="address2">
              </div>

              <div class="mb-3">
                <label for="zip">Code Postal</label>
                <input type="text" class="form-control" id="zip" placeholder="" required>
                <div class="invalid-feedback">
                  Zip code required.
                </div>
              </div>

              <div class="mb-3">
                <label for="country">Country</label>
                <select class="custom-select d-block w-100" id="country" required>
                  <option value="">Choisissez un pays </option>
                  <option>Allemagne</option>
                  <option>France</option>
                  <option>Japon</option>
                  <option>Norvège</option>
                </select>
                <div class="invalid-feedback">
                  Please select a valid country.
                </div>
              </div>
              
            </div>

          </div>

            <hr class="mb-4">
            <div class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" id="same-address">
              <label class="custom-control-label" for="same-address">Mon adresse de livraison est la même adresse que mon adresse de facturation.</label>
            </div>
            <div class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" id="save-info">
              <label class="custom-control-label" for="save-info">Enregistrer ces informations pour ma prochaine commande.</label>
            </div>
            <hr class="mb-4">


            <!-- Payment -->

            <h4 class="mb-3">Payment</h4>

          <div id="payment"

            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="cc-name">Name on card</label>
                <input type="text" aria-describedby="cardName" class="form-control" id="cc-name" placeholder="" required>
                  <small id="cardName" class="form-text text-muted">Titulaire indiqué sur la carte.</small>
                <div class="invalid-feedback">
                  Le nom du titulaire de la carte est requis.
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="cc-number">Credit card number</label>
                <input type="text" class="form-control" id="cc-number" placeholder="" required>
                <div class="invalid-feedback">
                  Credit card number is required
                </div>
              </div>
            </div>
            <div class="row">
              
              <div class="form-group col-sm-6 col-md-3">
                <label for="cc-expiration">Date d'expiration</label>
                <select class="form-control" id="cc-expiration" required>
                    <!--TO DO Insérer boucle for avec les valeurs MM/AA-->
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                </select>
                <div class="invalid-feedback">
                  Expiration date required
                </div>
              </div>
              <div class="form-group col-sm-6 col-md-3 mb-3">
                <label for="cc-expiration">CVV</label>
                <div class="row">
                  <input type="text" class="form-control" style="width: auto;" id="cc-cvv" required onfocusout="checkCVV()">
                  <i class="mdi mdi-information m-1"
                    aria-hidden="true">
                  </i>
                </div>
                <div class="invalid-feedback">
                  Security code required
                </div>
              </div>
            </div>
            <hr class="mb-4">
            <div class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" id="save-credit-card">
              <label class="custom-control-label" for="save-credit-card">Enregistrer cette carte pour ma prochaine commande.</label>
            </div>

          </div>
            <hr class="mb-4">
            <button class="btn btn-primary btn-lg btn-block" type="submit">Valider la commande</button>
          </form>
        </div>
  </div>

</section>

{/block}