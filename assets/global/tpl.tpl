<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
  [[MetaX?&tpl=`metax-html5`]]
  
  <link rel="shortcut icon" href="assets/themekalisto-design/img/favicon/favicon.ico" type="image/x-icon">
  <link rel="apple-touch-icon" href="assets/themekalisto-design/img/favicon/apple-touch-icon.png">
  <link rel="apple-touch-icon" sizes="72x72" href="assets/themekalisto-design/img/favicon/apple-touch-icon-72.png">
  <link rel="apple-touch-icon" sizes="114x114" href="assets/themekalisto-design/img/favicon/apple-touch-icon-114.png">
  <link rel="apple-touch-icon" sizes="114x114" href="assets/themekalisto-design/img/favicon/apple-touch-icon-144.png">
  
  [[#1.tv.googleTag1]]
  
  [[#1.tv.MailChimp]]
</head>
<body id="top-index">
  [[#1.tv.googleTag2]]
  
[[*template:is=`1`:then=`
<div class="container-fluid bg-index" >
  <div class="container pt-4 pb-4">      
      <div class="align-middle">
        <div class="row text-centermb-2">
          <img src="assets/themekalisto-design/img/main-logo.png" alt="[[++site_name]]" class="img-fluid logo-index">
        </div>
        <div class="row text-center">
          <div class="col-xs-12 col-sm-6 col-md-6 mb-2">
            <button type="button" class="btn btn-lg style1" data-toggle="modal" data-target="#volonter">Стать волонтером</button>
          </div>
          <div class="col-xs-12 col-sm-6 col-md-6"><h4>Решаем проблему загрязнения воздуха в Челябинске.</h4></div>
        </div>
      </div>
  </div>
</div>
`]]

<!-- HEADER -->
<nav class="navbar sticky-top navbar-expand-sm navbar-dark bg-primary">
  <div class="container">
    <a href="/" class="navbar-brand">
      <img src="assets/themekalisto-design/img/logo_sm.png" alt="[[++site_name]]" class="d-inline-block align-top">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-center right-box-wrapper" id="navbarSupportedContent">
      [[pdoMenu?
        &parents=`0`
        &level=`1`
        &hereClass=`active`
        &tplOuter = `@INLINE <ul class="navbar-nav ml-auto p-2">[[+wrapper]]</ul>`
        &tpl=`@INLINE <li class="[[+classnames]] nav-item"><a href="[[+link]]" class="nav-link" title="[[+menutitle]]">[[+menutitle]]</a></li>`
      ]]
      <div class="header-icons d-none d-sm-block d-md-block d-lg-block">
        <div class="search-header">
          <a data-toggle="collapse" href="#collapseSearch" role="button" aria-expanded="false" aria-controls="collapseSearch"><i class="fa fa-search"></i></a>
        </div>
        <div class="phone-header mr-1">
          <a data-toggle="collapse" href="#collapsePhone" role="button" aria-expanded="false" aria-controls="collapsePhone"><i class="fas fa-phone-volume fa-lg"></i></a>
        </div>
      </div>
    </div>
  </div>
</nav>
<div class="row bg-gray justify-content-md-center">
  <div class="col-sm-3">
    <div class="collapse multi-collapse" id="collapsePhone">
      <div class="card card-body">
        <p><i class="fas fa-phone-volume fa-lg"></i> <strong>[[#1.tv.phone]]</strong></p>
      </div>
    </div>
  </div>
</div>
<div class="row bg-gray justify-content-md-center">
  <div class="col-sm-6">
    <div class="collapse multi-collapse" id="collapseSearch">
      <div class="card card-body">
        <form class="form-inline search">
          <div class="form-group w-100 mb-2 ">
            <input type="text" class="form-control search" id="inputSearch" placeholder="Найти">
            <button type="submit" class="search-submit mb-2"><i class="fa fa-search"></i></button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

[[$tpl.[[*template]]]]

<!-- FOOTER -->
<footer class="footer-area">
  <div class="footer">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-md-6">
          <nav>
            <ul class="social">
              [[#1.tv.facebookGroup:!empty=`<li><a href="[[#1.tv.facebookGroup]]" target="_blank"><i class="fab fa-facebook"></i></a></li>`]]
              [[#1.tv.twitter:!empty=`<li><a href="[[#1.tv.twitter]]" target="_blank"><i class="fab fa-twitter"></i></a></li>`]]
              [[#1.tv.instagram:!empty=`<li><a href="[[#1.tv.instagram]]" target="_blank"><i class="fab fa-instagram"></i></a></li>`]]
              [[#1.tv.youtube:!empty=`<li><a href="[[#1.tv.youtube]]" target="_blank"><i class="fab fa-youtube"></i></a></li>`]]
              [[#1.tv.vkontakte:!empty=`<li><a href="[[#1.tv.vkontakte]]" target="_blank"><i class="fab fa-vk"></i></a></li>`]]
              [[#1.tv.ok:!empty=`<li><a href="[[#1.tv.ok]]" target="_blank"><i class="fab fa-odnoklassniki"></i></a></li>`]]
              [[#1.tv.telegram:!empty=`<li><a href="[[#1.tv.telegram]]" target="_blank"><i class="fab fa-telegram-plane"></i></a></li>`]]
            </ul>
          </nav>
        </div>
        <div class="col-xs-12 col-md-3">
          <nav>
            <ul class="footer-content box-information">
              <li><i class="fa fa-envelope-o"></i> <a href="mailto:[[#1.tv.emailSait]]">[[#1.tv.emailSait]]</a></li>
              <li><i class="fa fa-phone"></i><span> <a href="tel:[[#1.tv.phone]]">[[#1.tv.phone]]</a></span></li>
            </ul>
          </nav>
        </div>
        <div class="col-xs-12 col-md-3">
          <p>© 2018 [[++site_name]]</p>
          <p><a href="assets/themekalisto-design/policy.pdf" target="_blank">Политика конфиденциальности</a></p>
          <p><img src="assets/themekalisto-design/img/pay-system.png" alt="Платежные сервисы" title="Платежные сервисы"></p>
        </div>
      </div>
    </div>
  </div>
</footer>
<a id="backtotop" href="#top-index" class="rounded-circle"><i class="fa fa-arrow-up"></i></a>

[[$modalVolonter]]

<link rel="stylesheet" href="assets/themekalisto-design/css/main1.min.css">
<script src="assets/themekalisto-design/js/scripts.min.js"></script>
<script src="assets/themekalisto-design/js/formAll.js"></script>
<script src="assets/themekalisto-design/js/bitrix/loader_1_fcojrk.js"></script>

<!-- Google Analytics counter -->
[[#1.tv.googleMetrika]]
<!-- end Google Analytics counter -->
<div hidden="true">
[[#1.tv.yandexMetrika]]
</div>

</body>
</html>
