<%namespace file="../layout_components/labels.mako" name="info"/>
<%inherit file="../layout_components/layout_w_card.mako"/>

<%block name="buttons">
    <%include file="../layout_components/vertical_menu_buttons.mako" args='tour=False'/>
</%block>

<%block name="title">
    &mdash; VENUS
</%block>

<%block name="subtitle">
    Variant effect on structure
</%block>

<%block name="body">

    <%include file="subparts/docs_nav.mako"/>
        <%include file="subparts/docs_venus_nav.mako" args='topic="main"'/>
<h3>Aim</h3>
        <p>This <a href="/venus">tool</a>  has the aim of aiding structure-based exploration by using all the gathered information from
            different
            third-party databases that are pertinent to a given variant of interest, creating a sharable Michelaɴɢʟo
            page (see <a href="/docs/cite">Citation</a> for how to cite specific datasets).</p>
        <h3>Parts</h3>
        <p>
            The analysis runs in five steps.
            <ol>
                <li>The first simply gets the information of protein, such as the feature viewer,</li>
                <li>The second gives the effect of the mutation independent of the structural data,</li>
                <li>The third gives the location and neighbourhood of the residue,</li>
                <li>The fourth gives the change in energy potential resulting from the mutation,</li>
                <li>The fifth gives a crude change in energy potential resulting from the gnomAD mutations known in gomAD</li>
            </ol>

        <h3>Details</h3>
        <ol>
            <li>For a description of how VENUS chooses the model see <a href="/docs/venus_model">VENUS model</a></li>
            <li>For a description of the VENUS specific API routes and the redirect routes see <a href="/docs/venus_urls">VENUS URLs</a></li>
            <li>For an explanation of the free energy calculations see <a href="/docs/venus_energetics">VENUS energetics</a></li>
            </ol>

        <h3>Name</h3>
        <p>VENUS stands for <u>V</u>ariant <u>E</u>ffect o<u>N</u> <u>S</u>tructure —no, the U is not there.</p>



</%block>

<%block name='modals'>
</%block>
<%block name="script">
    <script type="text/javascript">
    </script>
</%block>

