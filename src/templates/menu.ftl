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
                    <input type="text" name="q" class="search-query" placeholder="Google Search" />
                    <input type="hidden" name="sitesearch" value="sbuild.org" />
            </form>
            <div class="nav-collapse collapse">
              <ul class="nav pull-right">
                <li class="dropdown"><a href="${config.path_doc_sbuild}">Documentation</a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="/doc/sbuild/${config.cursbuildversion}">SBuild ${config.cursbuildversion} Reference Manual</a></li>
                    <li><a href="http://sbuild.tototec.de/static/doc/sbuild/${config.cursbuildversion}/scaladoc/de.tototec.sbuild/#de.tototec.sbuild.package">SBuild ${config.cursbuildversion} Public API Reference (ScalaDoc)</a></li>
                  </ul>
                </li>
                <li><a href="${config.path_download}">Download</a></li>
                <li><a href="/plugins.html">Plugins</a></li>
                <li><a href="/eclipse">Eclipse</a></li>
                <li><a href="/community.html">Community</a></li>
                <li><a href="/contact.html" title="Contact / Impressum">Contact</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="container">