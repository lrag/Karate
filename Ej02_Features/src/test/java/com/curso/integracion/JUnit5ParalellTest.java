package com.curso.integracion;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;

public class JUnit5ParalellTest {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:").tags("~@skipme").parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }	
	
}
