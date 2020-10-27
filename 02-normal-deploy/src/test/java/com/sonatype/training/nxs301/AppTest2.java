package com.sonatype.training.nxs301;

import junit.framework.TestCase;

/**
 * Created by mworthington on 2/27/17.
 */
public class AppTest2 extends TestCase {
    public void testMain() throws Exception {
        fail("not implemented");
    }

    public void testMain2() throws Exception {
        App a = new App("hello");

        assertEquals("string should be hello", "hello", a.iString);
    }
}