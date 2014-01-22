<#include "header.ftl">
	
	<#include "menu.ftl">

<div class="hero-unit">
	<h1>No more magic for your builds!</h1>

	<p class="lead">SBuild provides a magic less build configuration for
		reproducable builds.</p>
		
	<p class="lead">SBuild is a fast and reliable build system most suitable for
		projects targeting the JVM. SBuild itself and the buildfiles are
		written in Scala. But typical build system maintenance task require
		almost no special Scala knowledge.
	</p>
	<div class="row">
	<div class="span5 text-right">
	  <a class="btn btn-success btn-large" role="button" href="download/sbuild/0.7.1/sbuild-0.7.1-dist.zip"><strong>Download SBuild 0.7.1</strong></a>
	</div>
	<div class="span5 text-left">
      <a class="btn btn-large" role="button" href="documentation/current">Learn more</a>
    </div>
    </div>
    
</div>

  <div class="row">
    <div class="span8">
    <h2><small>Recent News</small></h2>
	<#list posts as post>
  		<#if (post.status == "published" && post.date??)>
  			<h3><a href="${post.uri}">${post.title}</a> <small>${post.date?string("dd MMMM yyyy")}</small></h3>
  			<p>${post.summary}</p>
  			<p><a href="${post.uri}">Read more...</a></p>
  		</#if>
  	</#list>
    </div>
  <div>
    
<!--
	<div class="page-header">
		<h1>SBuild - the magic free but powerful build tool</h1>
	</div>
-->

<#include "footer.ftl">