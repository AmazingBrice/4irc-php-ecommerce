{extends file="./base.tpl"}
{block name=page_title}Page d’accueil{/block}
{block name=main}
    <h1>Nos produits</h1>
    <div class="card-deck">
        {foreach from=$products item=product}
            <div class="card">
                <a href="?action=displayProduct&id={$product.id}">
                    <img src="public/images/productsImages/{$product.image}.jpg" alt="{$product.name}" class="card-img-top">
                    <h5 class="card-header text-center">{$product.name}</h5>
                </a>
                <div class="card-body">
                    {$product.description}
                </div>
                <div class="card-footer text-right">
                    {$product.price} €
                </div>
            </div>
        {/foreach}
    </div>
{/block}