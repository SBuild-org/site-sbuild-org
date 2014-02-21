<#-- Define sime twitter card tags here -->

<#assign twitter_card="summary">

<#include "header.ftl">
	
	<#include "menu.ftl">
	
	<div class="row">
	  <div class="span8">
	    <div class="page-header">
		  <h1>${content.title}<#if content.subtitle??> <small>${content.subtitle}</small></#if></h1>
	    </div>

	    <p><em>${content.date?string("dd MMMM yyyy")}</em></p>

		<p>${content.body}</p>
      </div>
      <div class="span4">
	    <h1><small>Recent News</small></h1>
	    
	    		<#list published_posts as post>
		<#if (last_month)??>
			<#if post.date?string("MMMM yyyy") != last_month>
				</ul>
				<h3><small>${post.date?string("MMMM yyyy")}</small></h3>
				<ul>
			</#if>
		<#else>
			<h3><small>${post.date?string("MMMM yyyy")}</small></h3>
			<ul>
		</#if>
		
		<li>${post.date?string("dd")} - <a href="${post.uri}"><#escape x as x?xml>${post.title}</#escape></a></li>
		<#assign last_month = post.date?string("MMMM yyyy")>
		</#list>
	    
	    </ul><#-- This closes a conditionally opened ul -->
	    
	  </div>

	<hr>
	
<#include "footer.ftl">