import de.tototec.sbuild._

@version("0.7.0.9000")
@classpath("mvn:org.sbuild:org.sbuild.plugins.jbake:0.1.2")
// @classpath("../jbake/org.sbuild.plugins.jbake/target/org.sbuild.plugins.jbake-0.1.2.jar")
class SBuild(implicit _project: Project) {

  Target("phony:clean").evictCache exec {
    Path("target").deleteRecursive
  }

  import org.sbuild.plugins.jbake._
  Plugin[JBake] configure { _.copy(
    sourceDir = Path("src"),
    targetDir = Path("target"),
//    jbakeVersion = JBakeVersion.Packaged("2.2.1")
    jbakeVersion = JBakeVersion.Packaged("2.3.0-SNAPSHOT", "/home/lefou/work/tmp/jbake.git/dist/jbake-2.3.0-SNAPSHOT-bin.zip")
   ) }

    Target("phony:copy-heavy-assets") exec {
    Path("src/heavy-assets") copyTo Path("target")
  }

}
