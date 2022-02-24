package tests;

import static org.junit.Assert.*;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import com.intuit.karate.FileUtils;
import com.intuit.karate.cucumber.CucumberRunner;
import com.intuit.karate.cucumber.KarateStats;
import com.intuit.karate.junit4.Karate;
import cucumber.api.CucumberOptions;
import net.masterthought.cucumber.ReportBuilder;


@CucumberOptions
(plugin = { "pretty", "html:target/cucumber-html-report","json:target/cucumber-json-report/cucumber-json.json","junit:target/cucumber-junit-report",},
        features = {"src/test/java/tests/Get.feature"})
public class TestRunner {

@Test
public void testParallel() {
String karateOutputPath = "target/cucumber-html-reports";
KarateStats stats = CucumberRunner.parallel(getClass(), 1, karateOutputPath);
//generateReport(karateOutputPath);
assertTrue("there are scenario failures", stats.getFailCount() == 0);
throw new RuntimeException();
}


}