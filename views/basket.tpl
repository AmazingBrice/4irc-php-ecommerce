{extends file="./base.tpl"}
{block name=page_title}My Cart{/block}
{block name=main}
<link rel="stylesheet" href="../public/css/basket.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="//cdn.materialdesignicons.com/5.4.55/css/materialdesignicons.min.css" rel="stylesheet">
<section>
   <!--Grid row-->
   <div class="row">
      <!--Grid column-->
      <div class="col-lg-8">
         <!-- Card -->
         <div class="card">
            <div class="card-body">
               <h5 class="mb-4">
                  <i class="mdi mdi-basket"
                     aria-hidden="true">
                  </i>Mon Panier
               </h5>
               {foreach from=$basket item=product}
               <!-- horizontal separation -->
               <hr class="mb-4">
               <!-- Item -->
               <div class="row mb-4">
                  <div class="col-md-5 col-lg-3 col-xl-3">
                     <div class="rounded mb-3 mb-md-0 hover hover-3 text-white">
                        <img src="public/images/productsImages/{$product.image}.jpg" alt="{$product.name}">
                        <div class="hover-overlay">
                           <a class="hover-3-content px-5 py-4" >
                              <span class="text-white hover-3-description small text-uppercase" href="htttp://www.google.com">Voir article</span>
                           </a>
                        </div>
                     </div>
                  </div>
                  <!-- Item details -->
                  <div class="col-md-7 col-lg-9 col-xl-9">
                     <div>
                           <div>
                              <div class="row w-100 mx-0 mb-2 d-flex justify-content-between">
                                 <h5>{$product.name}</h5>
                                 <button class="btn rounded-circle btn-light trash-btn" type="button"><i class="mdi mdi-delete"></i></button>
                              </div>
                              <p class="mb-3 text-muted text-uppercase small">{$product.description}</p>
                              <!-- TO DO -->
                              <div class="input-group mb-3 w-100">
                                 <div class="input-group-prepend">
                                    <span for="product-quantity" class="input-group-text">Quantité</span>
                                 </div>
                                 <div class="def-number-input number-input mb-0">
                                    <button type="button"
                                       class="btn btn-default"
                                       aria-label="minus"
                                       onclick="this.parentNode.querySelector('input[id=product-quantity]').stepDown()">
                                    <i class="mdi mdi-minus"
                                       aria-hidden="true">
                                    </i>
                                    </button>
                                    <input type="number" value="{$product.quantity}" min="0" aria-label="product-quantity" aria-describedby="">
                                    <button type="button"
                                       class="btn btn-default"
                                       aria-label="plus"
                                       onclick="this.parentNode.querySelector('input[id=product-quantity]').stepUp()">
                                    <i class="mdi mdi-plus"
                                       aria-hidden="true">
                                    </i>
                                    </button>
                                 </div>
                              </div>
                           </div>
                        <div class="row m-0 d-flex justify-content-end">
                           <p id="product-price"><span><strong>Prix d'un article : ${$product.price}</strong></span></p>
                        </div>
                     </div>
                  </div>
               </div>
               {/foreach}
            </div>
         </div>
      </div>
      <!--Grid column-->
      <div class="col-lg-4">
         <!-- Card -->
         <div class="card mb-3">
            <div class="card-body">
               <h5 class="mb-3">Montant total</h5>
               <ul class="list-group list-group-flush">
                  <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                     Montant
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
               <button type="button" class="btn btn-primary btn-block waves-effect waves-light text-uppercase">proceder au paiement</button>
            </div>
         </div>
      </div>
      <!--Grid column-->
   </div>
   <!--Grid row-->
</section>
<!--Section: Block Content-->
{/block}