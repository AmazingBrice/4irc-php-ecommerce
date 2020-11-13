{extends file="../base.tpl"}
{block name=page_title}Erreur{/block}
{block name=main}
  <div class="alert alert-danger alert-dismissible fade show m-5" role="alert">
    <h4 class="alert-heading">Erreur</h4>
    <p>{$errorMessage}</p>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
{/block}
