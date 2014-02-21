<#include "header.ftl">
	
	<#include "menu.ftl">
	
	<div class="row">
      <div class="span8">
      
      	<div class="page-header">
		<h1>${content.title}</h1>
	</div>
	
	<#list posts as post>
  		<#if (post.status == "published" && post.date??)>
  			<h3><a href="${post.uri}"><#escape x as x?xml>${post.title}</#escape></a></h3>
  			<p><em>${post.date?string("dd MMMM yyyy")} <#if post.author??>by ${post.author}</#if></em></p>
  			<#if post.summary??>
  			    <p>${post.summary}</p>
  			    <p><a href="${post.uri}">Read mode...</a></p>
  			  <#else>
    			<p>${post.body}</p>
  			</#if>
  		</#if>
  	</#list>
  	
      </div>
      <div class="span4">
      
      <h1><small>SBuild on Twitter</small></h1>
      
      <a class="twitter-timeline" href="https://twitter.com/SBuildOrg" data-widget-id="434257844087447552">Tweets von @SBuildOrg</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>

      
      
      </div>	
	</div>
  	
    
<#include "footer.ftl">