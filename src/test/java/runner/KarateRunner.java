package runner;

import com.intuit.karate.junit5.Karate;


public class KarateRunner {
    @Karate.Test
    Karate runTest(){
        return Karate.run("src/test/java/features/get.feature").tags("@getTest");
    }
}

