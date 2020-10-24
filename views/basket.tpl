{extends file="./base.tpl"}
{block name=page_title}My Cart{/block} <!-- A affecter dynamiquement via Smarty lors du routing-->
{block name=main}
<link rel="stylesheet" href="../public/css/basket.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="//cdn.materialdesignicons.com/5.4.55/css/materialdesignicons.min.css  " rel="stylesheet">

<!--Section: Block Content-->
<section>

  <!--Grid row-->
  <div class="row">
    <!--Grid column-->
    <div class="col-lg-8">
      <!-- Card -->
      <div class="card wish-list mb-3">
        <div class="card-body">
          <h5 class="mb-4">
            <i class="mdi mdi-basket"
            aria-hidden="true">
            </i>Mon Panier
          </h5>
          <!-- First Item -->
          <div class="row mb-4">
            <div class="col-md-5 col-lg-3 col-xl-3">
              <div class="rounded mb-3 mb-md-0 hover hover-3 text-white">
                <img 
                  src="./public/images/1.jpg" alt="Image 1">
                <div class="hover-overlay" href="#!">
                  <div class="hover-3-content px-5 py-4">
                    <a class="text-white hover-3-description small text-uppercase" href="#">Voir article</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- Item details -->
            <div class="col-md-7 col-lg-9 col-xl-9">
              <div>
                <div class="d-flex justify-content-between">
                  <div>
                    <h5>Raspberry Pi 4</h5>
                    <p class="mb-3 text-muted text-uppercase small">Raspberry Pi 4 Modèle B 4 Go ARM-Cortex-A72 4 x 1,50 GHz, 4 Go de RAM, WLAN-AC, Bluetooth 5, LAN, 4 x USB, 2 x Micro HDMI</p>
                  <!-- TO DO -->
                    <label for="product-number">Quantité</label>
                    <div class="def-number-input number-input mb-0 w-100 row">
                         <button type="button"
                          class="btn btn-default"
                          aria-label="minus"
                          onclick="this.parentNode.querySelector('input[id=product-number]').stepDown()">
                          <i class="mdi mdi-minus"
                            aria-hidden="true">
                          </i>
                        </button>
                        <input type="number" value="0" min="0" id="product-number">
                        <button type="button"
                          class="btn btn-default"
                          aria-label="plus"
                          onclick="this.parentNode.querySelector('input[id=product-number]').stepUp()">
                          <i class="mdi mdi-plus"
                            aria-hidden="true">
                          </i>
                        </button>
                    </div>
                  </div>
                </div>
               <!-- Actions button TO DO -->
                <div class="d-flex justify-content-between align-items-center mt-2">
                  <div>
                  <button type="button"
                          class="btn btn-danger"
                          aria-label="delete"
                          onclick="">
                          <i class="mdi mdi-delete"
                            aria-hidden="true">
                          </i>
                          Supprimer cet item
                        </button>
                        <button type="button"
                          class="btn btn-default"
                          aria-label="wishlist"
                          onclick="">
                          <i class="mdi mdi-heart"
                            aria-hidden="true">
                          </i>
                          Ajouter à la liste de souhaits
                        </button>
                  </div>
                  <p id="product-price"><span><strong>$58.44</strong></span></p>
                </div>
              </div>
            </div>
          </div>
          <!-- horizontal separation -->
          <hr class="mb-4">
          <!-- Second Item -->
          <div class="row mb-4">
            <div class="col-md-5 col-lg-3 col-xl-3">
              <div class="rounded mb-3 mb-md-0 hover hover-3 text-white">
                <img 
                  src="./public/images/2.jpg" alt="Image 2">
                <div class="hover-overlay" href="#!">
                  <div class="hover-3-content px-5 py-4">
                    <a class="text-white hover-3-description small text-uppercase" href="#">Voir article</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- Item details -->
            <div class="col-md-7 col-lg-9 col-xl-9">
              <div>
                <div class="d-flex justify-content-between">
                  <div>
                    <h5>Module 4 canaux 5V</h5>
                    <p class="mb-3 text-muted text-uppercase small">SeeKool 5V 4 canaux Module de Relais Module pour Arduino UNO R3 Mega 2560 1280 DSP Arm PIC AVR STM32 Raspberry Pi</p>
                  
                  <!-- TO DO -->
                        <label for="product-number">Quantité</label>
                        <div class="def-number-input number-input mb-0 w-100">
                         <button type="button"
                          class="btn btn-default"
                          aria-label="minus"
                          onclick="this.parentNode.querySelector('input[id=product-number]').stepDown()">
                          <i class="mdi mdi-minus"
                            aria-hidden="true">
                          </i>
                        </button>
                        <input type="number" value="0" min="0" id="product-number">
                        <button type="button"
                          class="btn btn-default"
                          aria-label="plus"
                          onclick="this.parentNode.querySelector('input[id=product-number]').stepUp()">
                          <i class="mdi mdi-plus"
                            aria-hidden="true">
                          </i>
                        </button>
                    </div>
                  </div>
                </div>
               <!-- Actions button TO DO -->
                <div class="d-flex justify-content-between align-items-center mt-2">
                  <div>
                  <button type="button"
                          class="btn btn-danger"
                          aria-label="delete"
                          onclick="">
                          <i class="mdi mdi-delete"
                            aria-hidden="true">
                          </i>
                          Supprimer cet item
                        </button>
                        <button type="button"
                          class="btn btn-default"
                          aria-label="wishlist"
                          onclick="">
                          <i class="mdi mdi-heart"
                            aria-hidden="true">
                          </i>
                          Ajouter à la liste de souhaits
                        </button>
                  </div>
                  <p id="product-price"><span><strong>$58.44</strong></span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Card -->
    </div>
    <!--Grid column-->
    <div class="col-lg-4">
      <!-- Card -->
      <div class="card mb-3">
        <div class="card-body">
          <h5 class="mb-3">Montant total</h5>
          <ul class="list-group list-group-flush">
            <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
              Temporary amount
              <span>$25.98</span>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center px-0">
              Frais de livraisons
              <span>Gratis</span>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
              <div>
                <strong>Le montant total à payer</strong>
                <strong>
                  <p class="mb-0">(TVA inclus)</p>
                </strong>
              </div>
              <span><strong>$53.98</strong></span>
            </li>
          </ul>
          <button type="button" class="btn btn-primary btn-block waves-effect waves-light text-uppercase">checkout</button>
        </div>
      </div>
      <!-- Card -->
      <!-- Add Discount Code -->
      <div>
        <button class="btn btn-primary" type="button" data-toggle="collapse" 
        data-target="#collapseAddCode" aria-expanded="false" aria-controls="collapseAddCode">
          Ajouter un code promotionnel
        </button>
        <div class="collapse" id="collapseAddCode">
          <div class="card card-body">
              Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
          </div>        
        </div>
      </div>
      <!-- Card -->
    </div>
    <!--Grid column-->
  </div>
  <!--Grid row-->
</section>
<!--Section: Block Content-->

<script src="./public/js/basket.js"></script>
{/block}