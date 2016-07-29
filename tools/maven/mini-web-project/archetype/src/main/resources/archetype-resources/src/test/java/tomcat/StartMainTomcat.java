#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package}.tomcat;

import org.apache.catalina.startup.Embedded;

/**
 * The Class StartMainTomcat.
 *
 * @author l.xue.nong
 */
public class StartMainTomcat {

	/** The Constant PORT. */
	public static final int PORT = 8080;

	/** The Constant CONTEXT. */
	public static final String CONTEXT = "/${artifactId}";

	/**
	 * The main method.
	 *
	 * @param args the arguments
	 * @throws Exception the exception
	 */
	public static void main(String[] args) throws Exception {
		System.setProperty("catalina.base", System.getProperty("user.dir") + "/server");
		System.setProperty("log.sql.port", "8080");
		Embedded server = TomcatUtils.buildNormalServer(PORT, CONTEXT, "${artifactId}", "utf-8");
		server.start();
		System.out.println("Hit Enter in console to stop server");
		if (System.in.read() != 0) {
			server.stop();
			System.out.println("Server stopped");
		}
	}

}
