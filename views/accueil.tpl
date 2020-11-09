{extends file="./base.tpl"}
{block name=page_title}Page d’accueil{/block}
{block name=main}
    <h1>Nos produits</h1>
    <div class="productsContainer">
    {foreach from=$products item=product}
            <div class="product">
                <a href="?action=displayProduct&id={$product.id}">
                    <p class="productName">{$product.name}</p>
                </a>
                <p class="productSectionHeader">Description</p> 
                <p>&emsp;{$product.description}</p>
                <p class="productSectionHeader">Prix</p>
                <p>&emsp;{$product.price} €</p>
                <img src="public/images/productsImages/{$product.image}.jpg" alt="{$product.name}" class="productPicture">
            </div>
    {/foreach}
    </div>
{/block}