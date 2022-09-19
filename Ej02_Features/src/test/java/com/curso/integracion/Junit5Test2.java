package com.curso.integracion;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;

public class Junit5Test2 {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:").tags("~@skipme").parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }	
	
}
