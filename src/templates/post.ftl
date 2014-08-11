<#-- Define sime twitter card tags here -->

<#assign twitter_card="summary">

<#include "header.ftl">
	
	<#include "menu.ftl">
	
	<div class="row">
	  <div class="span8">
	    <div class="page-header">
		  <h1>${content.title}<#if content.subtitle??> <small>${content.subtitle}</small></#if></h1>
	    </div>

	    <p><em>${content.date?string("dd MMMM yyyy")} <#if content.author??>by ${content.author}</#if></em></p>

		<p>${content.body}</p>
		
		<#list published_posts as post>
		  <#if !(prevUrl??)>
            <#if curUrlFound??>
		      <#assign prevUrl = post.uri>
		    </#if>
		    <#if post.uri == content.uri>
		      <#if visitedUrl??><#assign nextUrl = visitedUrl></#if>
		      <#assign curUrlFound = "1">
		    </#if>
		    <#assign visitedUrl = post.uri>
		  </#if>
		</#list>
		
	    <ul class="pager">
		  <#if prevUrl??>
		    <li class="previous"><a href="/${prevUrl}">&larr; Older</a></li>
		  <#else>
		    <li class="previous disabled"><a href="#">&larr; Older</a></li>
		  </#if>
		    <li><a href="/news">List all news items</a></li>
		  <#if nextUrl??>
		    <li class="next"><a href="/${nextUrl}">Newer &rarr;</a></li>
		  <#else>
		    <li class="next disabled"><a href="#">Newer &rarr;</a></li>
		  </#if>
		</ul>
	    
	        <div id="disqus_thread"></div>
    <script type="text/javascript">
        /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
        var disqus_shortname = 'sbuild'; // required: replace example with your forum shortname

        /* * * DON'T EDIT BELOW THIS LINE * * */
        (function() {
            var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
            dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
            (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
        })();
    </script>
    <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
    <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
    
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
		
		<li>${post.date?string("dd")} - <a href="/${post.uri}"><#escape x as x?xml>${post.title}</#escape></a></li>
		<#assign last_month = post.date?string("MMMM yyyy")>
		</#list>
	    
	    </ul><#-- This closes a conditionally opened ul -->
	    
	  </div>

	<hr>
	
<#include "footer.ftl">
