<!DOCTYPE html>
<html lang="en">
<%page args="bootstrap='4', remote=False, no_user=False, public=True, confidential=False, no_analytics=False, title='Michelaɴɢʟo'"/>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="${meta_description}">
    <meta name="author" content="Matteo Ferla et al. 2019">
    <meta property="og:title" content="${meta_title}">
    <meta property="og:description" content="${meta_description}">
    <meta property="og:image" content="${meta_image}">
    <meta property="og:url" content="${meta_url}">
    <link rel="icon" href="/flavicon.ico">
    %if not public:
        <meta name="robots" content="none">
    %endif

    <title>${title}</title>
    % if bootstrap == 'materials':
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.6/css/mdb.min.css" rel="stylesheet">
    % else:
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    % endif

    <!-- Custom styles for this scaffold -->
    <link href="/static/theme.css" rel="stylesheet">
    <!--<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-LRlmVvLKVApDVGuspQFnRQJjkv0P7/YFrw84YYQtmYG4nK8c+M+NlmYDCv0rKWpG" crossorigin="anonymous">-->
    <link rel="stylesheet" href="/static/ThirdParty/Font-Awesome-Pro/css/all.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="/static/ThirdParty/bootstrap-tourist/bootstrap-tourist.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-colorpicker/3.0.0-beta.3/css/bootstrap-colorpicker.css">
    <style>

.footer {
    position: absolute;
    bottom: 0;
    width: 100%;
    /* Set the fixed height of the footer here */
    height: 60px;
    line-height: 60px; /* Vertically center the text there */
    background-color: #f5f5f5;
}

html {
    position: relative;
    min-height: 100%;
    overflow-y:scroll;
}

body {
  /* Margin bottom by footer height */
    margin-bottom: 60px;
}

main {
    /* bg image*/
  /* Use "linear-gradient" to add a darken background effect to the image (photographer.jpg). This will make the text easier to read */
  background-image: linear-gradient(rgba(255, 255, 255, 0.9), rgba(255, 255, 255, 0.9)), url('/static/background_blur.png');

  /* Set a specific height */
  height: 50%;

  /* Position and center the image to scale nicely on all screens */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

pre {

    background:gainsboro;
    color: darkslategrey;
    font-family: monospace;
}

.custom-file-label:after {
    color: #fff;
    background-color: #1e7e34;
    border-color: #1c7430;
    pointer: cursor;
}

.popover{
    max-width: 90vw; /* Max Width of the popover (depending on the container!) */
}

.protein {
    width:100%;
    height: 0;
    padding-bottom: 100%;
}

.prolink {
	color: mediumseagreen;
}

.prolink:hover {
	color: seagreen;
	cursor: pointer;
	text-decoration: underline;
}

.confidential-ribbon{
  z-index: 1050;
  width: 200px;
  background: #e43;
  position: fixed;
  top: 25px;
  left: -50px;
  text-align: center;
  line-height: 50px;
  letter-spacing: 1px;
  color: #f0f0f0;
  transform: rotate(-45deg);
  -webkit-transform: rotate(-45deg);
  box-shadow: 0 0 3px rgba(0,0,0,.3);
}



    </style>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>



<body>
%if confidential:
    <div class="confidential-ribbon shadow" data-toggle="tooltip" title="This page is confidential. Namely, the URL to this page and its contents have been shared with a specific addressee as a privileged communication that is intended to be read only by the specific addressee. The latter party, unless otherwise specified, is not at liberty to disclose this page and information with a third party."><i class="far fa-user-secret"></i> Confidential</div>
%endif
<div class="position-absolute w-100 d-flex flex-column p-4" id="toaster">
</div>

<main role='main' class="container-fluid p-0 w-100 mx-0">
    ${ next.body() }
</main>

<footer class="footer">
      <div class="container-fluid">
          <div class="row" style="line-height: 1rem;">
              <div class="col-5 offset-lg-1 text-muted p-3">
                  <small><a href="https://www.schrodinger.com/" target="_blank">PyMOL <i class="far fa-external-link-square"></i></a> is a trademark of <a href="https://pymol.org/2/" target="_blank">Schr&ouml;dinger , LLC <i class="far fa-external-link-square"></i></a>. The authors are not affiliated or involved with PyMOL or Schr&ouml;dinger.
                      <br/>Data is not kept for commercial, see data <a href="docs/users">policy documentation</a>.</small></div>
              <div class="col-5 offset-lg-1 p-2">
                  <img src="/static/ox_full.svg" alt="University of Oxford" class="footer-logo">&nbsp;&nbsp;&nbsp;
                  <img src="/static/OxfordBRC-logo-2019.png" alt="BRC"   class="footer-logo">&nbsp;&nbsp;&nbsp;
                  <img src="/static/SGC_reverse_trans.png" alt="SGC"   class="footer-logo">
              </div>
          </div>

      </div>
    </footer>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
% if bootstrap == 'materials':
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.6/js/mdb.min.js"></script>
% endif
<script src="https://unpkg.com/ngl@2.0.0-dev.34/dist/ngl.js" type="text/javascript"></script>
% if not remote:
    <script type="text/javascript" src="/static/michelanglo.js"></script>
    <script type="text/javascript" src="/static/michelanglo_menu.js"></script>
% else:
    <script type="text/javascript" src="https://michelanglo.sgc.ox.ac.uk/michelanglo.js"></script>
    <script type="text/javascript" src="https://michelanglo.sgc.ox.ac.uk/michelanglo_menu.js"></script>
% endif
<script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-colorpicker/3.0.0-beta.3/js/bootstrap-colorpicker.min.js"></script>

<script src="/static/ThirdParty/bootstrap-tourist/bootstrap-tourist.js"></script>
<%block name="script"/>
% if not no_user:
    <%include file="../login/user_modal.mako"/>
% endif

<script type="text/javascript">
    $('[data-toggle="popover"]').popover();
    $('[data-toggle="tooltip"]').tooltip();
    $('#menu').on('shown.bs.popover', function () {
        $('.popover a').hover(function () {$('.popover-header').html($(this).attr('title'))});
    });
% if not no_user:
    <%include file="../login/user_icon_bar.js"/>
    <%include file="../login/user_modal.js"/>
    <%include file="toast.js"/>
    %if not user: ## unregistered and new visitor.
        if (! localStorage.getItem('cookiesAccepted')) {
            $('#toaster').append(`<%include file="toast.mako" args="toast_id='acceptCookies', toast_title='Cookies', toast_body='This site uses cookies to manage user authentication in order to allow users to keep track of pages users made and to control editing privileges.', toast_bg='bg-info', toast_autohide='false'"/>`);
            $('#acceptCookies').toast('show');
            $('#acceptCookies').on('hide.bs.toast',(event) => localStorage.setItem('cookiesAccepted',true));
        }
    %endif
    ${custom_messages|n}.forEach((v, i) => ops.addToast('custom_msg'+i, v.title, v.descr, v.bg));

$('#chat_send').click((event) => {
                    let msg = $('#chat_message').val();
                    $('#chat_modal').modal('hide');
                    if (msg) {$.ajax({url: "/msg",
                                data: {'text': msg,
                                       'page': window.location.pathname,
                                        'event': 'chat'
                                      },
                                method: 'POST'
                            })
                        .done((msg) => ops.addToast('userchatgood','Send','Thank you! The site admin will get back to you shortly.', 'bg-success'))
                        .fail(ops.addErrorToast)}
                    else {ops.addToast('emptymessage','Empty message','Ehhr. Somehow the message is empty.', 'bg-warning')}
                }) //click.

% endif
    $(document).on('show.bs.modal', '.modal', function () {
    var zIndex = 1040 + (10 * $('.modal:visible').length);
    $(this).css('z-index', zIndex);
    setTimeout(function() {
        $('.modal-backdrop').not('.modal-stack').css('z-index', zIndex - 1).addClass('modal-stack');
    }, 0);
});

</script>

% if not no_analytics:
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-66652240-5"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-66652240-5');
</script>
% endif


</body>
</html>
