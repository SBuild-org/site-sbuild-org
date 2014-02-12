<#include "header.ftl">
	
	<#include "menu.ftl">

    <div class="hero-unit">This page will be the new homepage for SBuild and is currently under development! Please visit also <a href="http://sbuild.tototec.de">sbuild.tototec.de</a>.</div>

<div class="hero-unit">
	<h1>No more magic for your builds!</h1>

    <p/>
	<p>SBuild provides a magic less build configuration for
		reproducible builds.</p>
		
	<p>SBuild is a fast and reliable build system most suitable for
		projects targeting the JVM. SBuild itself and the buildfiles are
		written in Scala. But typical build system maintenance task require
		almost no special Scala knowledge.
	</p>
	<div class="row">
	<div class="span5 text-right">
	  <a class="btn btn-success btn-large" role="button" href="http://sbuild.tototec.de/sbuild/attachments/download/87/sbuild-0.7.1-dist.zip"><strong>Download SBuild 0.7.1</strong></a>
	</div>
	<div class="span5 text-left">
      <a class="btn btn-large" role="button" href="doc/sbuild">Learn more</a>
    </div>
    </div>
    
</div>

  <div class="row">
    <div class="span8">
    <h2><small>Recent News</small></h2>
	<#list posts as post>
  		<#if (post.status == "published" && post.date??)>
  			<h3><a href="${post.uri}">${post.title}</a> <small>${post.date?string("dd MMMM yyyy")}</small></h3>
  			<#if post.summary??>
  			    <p>${post.summary}</p>
  			</#if>
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