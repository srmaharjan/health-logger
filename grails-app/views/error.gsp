<!DOCTYPE html>
<html>
<head>
    <title><g:if env="development">Grails Runtime Exception</g:if><g:else>Error</g:else></title>
    <meta name="layout" content="bootstrap">
</head>
<body>
<section class="content-header">
    <h1>
        Error page
    </h1>
</section>
<section class="content">

    <div class="error-page">
        <h2 class="headline"><i class="fa fa-warning text-red"></i></h2>
        <div class="error-content">
            <h3>Oops! Something went wrong.</h3>
            <p>
                We will work on fixing that right away.
                <g:if env="development">
                    <g:renderException exception="${exception}" />
                </g:if>
            </p>
        </div>
    </div><!-- /.error-page -->

</section>
</body>
</html>
