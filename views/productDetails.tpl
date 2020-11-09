{extends file="./base.tpl"}
{block name=page_title}{$product.name}{/block}
{block name=main}
    <div class="product">
        <p class="productName">{$product.name}</p>
        <p class="productSectionHeader">Description</p> 
        <p>&emsp;{$product.description}</p>
        <p class="productSectionHeader">Prix</p>
        <p>&emsp;{$product.price} €</p>
        <img src="public/images/productsImages/{$product.image}.jpg" alt="{$product.name}" class="productPicture">
    </div>
{/block}