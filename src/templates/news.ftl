<#include "header.ftl">
	
	<#include "menu.ftl">
	
	<div class="page-header">
		<h1>${content.title}</h1>
	</div>
	
	<#list posts as post>
  		<#if (post.status == "published" && post.date??)>
  			<h2><a href="${post.uri}"><#escape x as x?xml>${post.title}</#escape></a></h2>
  			<p><em>${post.date?string("dd MMMM yyyy")}</em></p>
  			<p>${post.body}</p>
  		</#if>
  	</#list>
  	
  	
    
<#include "footer.ftl">