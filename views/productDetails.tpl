{extends file="./base.tpl"}
{block name=page_title}{$product.name}{/block}
{block name=main}
    <h1>{$product.name}</h1>
    <h3 class="p-3">Description</h3> 
    {$product.description}
    <h3 class="p-3">Prix</h3>
    {$product.price} €
    <div class="p-3">
        <img src="public/images/productsImages/{$product.image}.jpg" alt="{$product.name}" class="img-thumbnail productPicture">
    </div>
{/block}