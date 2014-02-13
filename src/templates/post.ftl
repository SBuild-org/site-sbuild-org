<#-- Define sime twitter card tags here -->
<#if content.twitter_card??><#else>
  <#assign twitter_card="summary">
</#if>

<#include "header.ftl">
	
	<#include "menu.ftl">
	
	<div class="page-header">
		<h1>${content.title}<#if content.subtitle??> <small>${content.subtitle}</small></#if></h1>
	</div>

	<p><em>${content.date?string("dd MMMM yyyy")}</em></p>

	<p>${content.body}</p>

	<hr>
	
<#include "footer.ftl">