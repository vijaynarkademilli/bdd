import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

//@KarateOptions(tags = "@soap")
//@KarateOptions(tags = "@demo")
//@KarateOptions(tags = "@demo,@demo1")
//@KarateOptions(features = "classpath:Featurefiles/Karate01.feature")
//@KarateOptions(tags = "@demo1", features = "classpath:Featurefiles/Karate01.feature")

//@KarateOptions(tags = "@soap,@ddt")
//@KarateOptions(tags = "@soap",features="classpath:featurefiles/Karate01.feature")
class KarateRunnerTest {

    @Test
    public void testrunAll() {
        Results res = Runner.parallel(getClass(), 10);
        generateReport(res.getReportDir());
    }

    public static void generateReport(String resDir)
    {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(resDir), new String[] {"json"}, true);
        List<String> jsonPaths = new ArrayList(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"), "karateTraining");
        ReportBuilder rb = new ReportBuilder(jsonPaths, config);
        rb.generateReports();
    }

}












