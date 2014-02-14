<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title><#if (content.title)??><#escape x as x?xml>${content.title} - </#escape></#if>SBuild</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <#if content.summary??><meta name="description" content="${content.summary}">
    <#else><meta name="description" content="">
    </#if>
    <meta name="author" content="">
    <meta name="keywords" content="">

    <#if (content.twitter_card)?? || twitter_card??>
	<!-- TWitter card -->
	<#if (content.twitter_card)??><meta name="twitter:card" content="${content.twitter_card}">
	<#else><meta name="twitter:card" content="${twitter_card}"></#if>
	<#if (content.twitter_site)??><meta name="twitter:site" content="${content.twitter_site}"></#if>
	<#if (content.twitter_creator)??><meta name="twitter:creator" content="${content.twitter_creator}"></#if>
	<#if content.twitter_title??><meta name="twitter:title" content="${content.twitter_title}">
	<#else><meta name="twitter:title" content="${content.title}"></#if>
	<#if content.twitter_description??><meta name="twitter:description" content="${content.twitter_description}">
	<#else>
	  <#if content.summary??><meta name="twitter:description" content="${content.summary}">
	  <#else><meta name="twitter:description" content="SBuild - the magic-free yet powerful build tool.">
	  </#if>
	</#if>
	<#if content.twitter_image??><meta name="twitter:image" content="${content.twitter_image}"></#if>
	</#if>        

    <!-- Le styles -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/asciidoctor.css" rel="stylesheet">
    <link href="/css/base.css" rel="stylesheet">
    <link href="/css/font-awesome.min.css" rel="stylesheet">
    <link href="/css/bootstrap-responsive.min.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <!--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/assets/ico/apple-touch-icon-57-precomposed.png">-->
    <link rel="shortcut icon" href="favicon.ico">
  </head>
  <body>
    <div id="wrap">
   