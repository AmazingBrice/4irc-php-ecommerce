<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="public/css/style.css" />
    <title>{block name=page_title}Titre du site - {$smarty.block.child}{/block}</title>
</head>
<body>
    {include file="./includes/_header.tpl"}
    {block name=main}{/block}
    {include file="./includes/_footer.tpl"}
</body>
</html>