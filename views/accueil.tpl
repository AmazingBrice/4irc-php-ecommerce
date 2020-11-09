{extends file="./base.tpl"}
{block name=page_title}Page d’accueil{/block}
{block name=main}
    <h1>Nos produits</h1>
    {foreach from=$products item=product}
        <div class="product">
                <p class="productName">{$product.name}</p>
                <p class="productSectionHeader">Description</p> 
                <p>&emsp;{$product.description}</p>
                <p class="productSectionHeader">Prix</p>
                <p>&emsp;{$product.price} €</p>
                <img src="public/images/productsImages/{$product.image}.jpg" alt="{$product.name}" class="productPicture">
        </div>
    {/foreach}
{/block}