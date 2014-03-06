	<!-- Fixed navbar -->
      <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
          <div class="container">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="brand" href="/">SBuild</a>
			<form class="navbar-form navbar-search pull-right" action="http://www.google.com/search">
                    <input type="text" name="q" class="search-query input-medium" placeholder="Google Search" />
                    <input type="hidden" name="sitesearch" value="sbuild.org" />
            </form>
            <div class="nav-collapse collapse">
              <ul class="nav pull-right">
                <li class="dropdown"><a href="/news">News</a>
                  <ul class="dropdown-menu" role="menu">
                    <#assign postcount = 0>
                    <#assign maxpostcount = 5>
                    <#list posts as post>
                      <#if post.status == "published" && postcount < maxpostcount>
                        <#assign postcount = postcount + 1>
                        <li><a href="${post.uri}"><#escape x as x?xml>${post.title}</#escape> <small class="muted">- ${post.date?string("dd MMMM yyyy")}</small></a></li>
                      </#if>
                    </#list>
                    <li><a href="/news">older News...</a><li>
                  </ul>
                </li>
                <li class="dropdown"><a href="${config.path_doc_sbuild}">Documentation</a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="/doc/sbuild/${config.cursbuildversion}"><i class="icon-book"></i> SBuild Reference Manual <span class="muted">${config.cursbuildversion}</span></a></li>
                    <li><a href="${config.url_uploads_sbuild}/${config.cursbuildversion}/scaladoc/de.tototec.sbuild/#de.tototec.sbuild.package"><i class="icon-file-text"></i> SBuild Core ScalaDoc <span class="muted">${config.cursbuildversion}</span></a></li>
                    <li><a href="/releases"><i class="icon-calendar"></i> Release History</a></li>
                    <li><a href="/faq"><i class="icon-question-sign"></i> FAQ</a></li>
                  </ul>
                </li>
                <li class="dropdown"><a href="${config.path_download}">Download</a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="${config.url_uploads_sbuild}/${config.cursbuildversion}/sbuild-${config.cursbuildversion}-dist.zip"><i class="icon-download-alt"></i> SBuild ${config.cursbuildversion} Distribution <small class="muted">- ${config.cursbuildversiondate}</small></a></li>
                  </ul>
                </li>
                <li><a href="/plugins.html">Plugins</a></li>
                <li><a href="/eclipse">Eclipse</a></li>
                <li class="dropdown">
                    <a href="/community.html">Get Involved / Contact</a>
                   <ul class="dropdown-menu" role="menu">
                    <li><a href="https://github.com/SBuild-org/sbuild"><i class="icon-github"></i> GitHub</a></li>
                    <li><a href="https://twitter.com/SBuildOrg"><i class="icon-twitter"></i> Twitter <small class="muted">@SBuildOrg</small></a></li>
                    <li><a href="http://webchat.freenode.net/?channels=%23sbuild" ><i class="icon-comments"></i> IRC <small class="muted">#sbuild</small></a></li>
                    <li><a href="https://groups.google.com/forum/#!forum/sbuild-dev"><i class="icon-envelope"></i> Developers <small class="muted">sbuild-dev</small></a></li>
                    <li><a href="https://groups.google.com/forum/#!forum/sbuild-user"><i class="icon-envelope"></i> User Forum <small class="muted">sbuild-user</small></a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="container">