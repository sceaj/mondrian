package mondrian.server;

import java.net.URL;

import junit.framework.TestCase;
import mondrian.olap.MondrianServer.MondrianVersion;

/**
 * Test case for {@code MondrianServerRegistry}.
 */
public class MondrianServerRegistryTest extends TestCase {

    private String expectedVersion;
    private int expectedMajorVersion;
    private int expectedMinorVersion;

    protected void setUp() throws Exception {
        URL buildPropertiesURL = getClass().getClassLoader().getResource("../build.properties");
        System.out.println(buildPropertiesURL.toURI().getPath());
    }

    public void testGetVersion() {
    	MondrianVersion actualVersion = MondrianServerRegistry.INSTANCE.getOrLoadVersion();
    }

}

// End MondrianServerVersionTest.java
