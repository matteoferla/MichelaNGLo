<%inherit file="layout_components/layout_w_card.mako"/>
<%block name="buttons">
            <%include file="layout_components/vertical_menu_buttons.mako" args='tour=False'/>
</%block>
<%block name="title">
            &mdash; Monitor
</%block>
<%block name="subtitle">
            These are the images that are tracked
</%block>

<%block name="main">
    %if status == 'monitoring' or status == 'generating':
    <div class="alert alert-success">
       <h4 class="alert-heading">Protected</h4>
       <p>Your <a href="/data/${page}">page</a> is marked as publication-ready/published, so these conditions are enforced.</p>
       <hr/>
        %if user and user.role == 'admin':
            <p>If you erroneously activated this feature press the following:
           <button type="button" class="btn btn-danger" onclick="alter_protection('deprotection')"><i class="far fa-lock-open"></i> Unprotect page</button></p>
        %else:
            <p>To request a change in status contact the admin with your request:
           <button class="btn btn-outline-secondary my-1" type="button" data-toggle="modal" data-target="#chat_modal"><i class="far fa-lock-open"></i> Unprotect page</button></p>
        %endif
    </div>
    %else:
    <div class="alert alert-warning">
       <h4 class="alert-heading">Unprotected</h4>
       <p>Your <a href="/data/${page}">page</a> is not protected.</p>
       <hr/>
        %if user and user.role == 'admin':
            <p>To activate this feature press the following:
           <button type="button" class="btn btn-success" onclick="alter_protection('protection')"><i class="far fa-lock"></i> Protect page</button></p>
        %else:
            <p>To request a change in status contact the admin with your request:
           <button class="btn btn-outline-secondary my-1" type="button" data-toggle="modal" data-target="#chat_modal"><i class="far fa-lock"></i> Protect page</button></p>
        %endif
    </div>
    %endif


    <%include file="docs/docs_protected.mako"/>

   <h2>Prolink monitoring</h2>
   %if status == 'monitoring':
       <p>The following images are monitored:</p>
       <div class="row">
           %for i in range(len(labels)):
               <div class="col-12 col-xl-3">
                   <div class="card mb-2">
                      <img class="card-img-top" src="/monitor/${page}?image=${i}" alt="${i}">
                      <div class="card-body">
                        <h5 class="card-title">Link &#8470; ${i+1}</h5>
                        <p class="card-text">${labels[i]}</p>
                      </div>
                    </div>
               </div>
           %endfor
       </div>
   %elif status == 'generating':
       <p>Generating data... Come back in a minute</p>
   %else:
      <p>This page is not protected.</p>
   %endif

</%block>


<%block name='scripts'>
    <script type="text/javascript">
        window.alter_protection = (mode) => {
            $.ajax({
                type: "POST",
                url: "/set",
                data: {item: mode,
                       page: "${page}"
                       }
            }).done(msg => ops.addToast('requested',mode, msg.status ,'bg-success'))
                .fail(ops.addErrorToast);
        };
    </script>
</%block>
