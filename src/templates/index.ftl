<#assign twitter_card="summary">

<#include "header.ftl">
	
	<#include "menu.ftl">

    <h1><small>
    This page will be the new homepage for SBuild and is currently under development! 
    <br/>Please visit also <a href="http://sbuild.tototec.de">sbuild.tototec.de</a>.
    </small></h1>

<div class="hero-unit">
	<h1>Get back in control of your build!</h1>

	<p/>
	<p>SBuild provides a magic-less build configuration for
		reproducible builds.</p>
		
	<p>SBuild is a fast and reliable build system most suitable for
		projects targeting the JVM. SBuild itself and the buildfiles are
		written in Scala. But typical build system maintenance tasks require
		almost no special Scala knowledge.
	</p>
	<div class="hidden-phone row">
		<div class="span5 text-right">
		  <a class="btn btn-success btn-large" role="button" href="${config.url_uploads_sbuild}/${config.cursbuildversion}/sbuild-${config.cursbuildversion}-dist.zip"><strong>Download SBuild ${config.cursbuildversion}</strong></a>
		</div>
		<div class="span5 text-left">
	      <a class="btn btn-large" role="button" href="doc/sbuild">Learn more</a>
	    </div>
    </div>
	<div class="visible-phone">
		  <a class="btn btn-success btn-large" role="button" href="${config.url_uploads_sbuild}/${config.cursbuildversion}/sbuild-${config.cursbuildversion}-dist.zip"><strong>Download SBuild ${config.cursbuildversion}</strong></a>
	      <a class="btn btn-large" role="button" href="doc/sbuild">Learn more</a>
    </div>
    
</div>

  <div class="row">
    <div class="span8">
      ${content.body}
    </div>
    <div class="span4">
    <h1><small>Recent News</small></h1>
    <#assign maxpostcount=5>
    <#assign postcount=0>
	<#list posts as post>
  		<#if (post.status == "published" && post.date?? && postcount < maxpostcount)>
  			<#assign postcount = postcount + 1>
  			<h3><a href="${post.uri}">${post.title}</a><br/><small>${post.date?string("dd MMMM yyyy")}</small></h3>
  			<#if post.summary??>
  			    <p>${post.summary}</p>
  			</#if>
  			<p><a href="${post.uri}">Read more...</a></p>
  		</#if>
  	</#list>
    <p><a href="/news">Read all News...</a></p>
    </div>
  <div>
    
<!--
	<div class="page-header">
		<h1>SBuild - the magic free but powerful build tool</h1>
	</div>
-->

<#include "footer.ftl">