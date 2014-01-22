import de.tototec.sbuild._

@version("0.7.0.9000")
@classpath("scan:../jbake/org.sbuild.plugins.jbake;regex=org\\.sbuild\\.plugins\\.jbake-[0-9.]*\\.jar")
class SBuild(implicit _project: Project) {

  Target("phony:clean").evictCache exec {
    Path("target").deleteRecursive
  }

  import org.sbuild.plugins.jbake._
  Plugin[JBake] configure { _.copy(
    sourceDir = Path("src"),
    targetDir = Path("target"),
    jbakeVersion = JBakeVersion.Packaged("2.2.1-SNAPSHOT", "/home/lefou/work/tmp/jbake.git/dist/jbake-2.2.1-SNAPSHOT-bin.zip")
   ) }

}
