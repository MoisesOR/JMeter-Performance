# JMeter-Performance
Small template in JMeter to do performance test.

## Installation
- Install [Java](https://www.java.com/es/download/)
- Go to [JMeter Archive](https://archive.apache.org/dist/jmeter/binaries/) and download the last version.

## Installation for [Taurus](https://gettaurus.org/install/Installation/)
- Install the same like default installation.
- Install [Python](https://www.python.org/downloads/)
- Install [Visual Studio C++](https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=Community&rel=16)

## Plugins
### [JMeter Plugins Manager](https://jmeter-plugins.org/wiki/PluginsManager/)
The first plugin we must install for manage the rest of installed plugins.
### [Dummy Sample](https://jmeter-plugins.org/wiki/DummySampler/)
For check and create request to try others plugins without needed an API or whatever.
### [ElasticSearch Backend Listener](https://github.com/anthonygauthier/jmeter-elasticsearch-backend-listener)
Plugin to config and see the grafs in Elastic and Grafana.
### [Filter Results Tool](https://jmeter-plugins.org/wiki/FilterResultsTool/) and [Merge Results](https://jmeter-plugins.org/wiki/MergeResults/)
This both is needed to create a specific Results.csv to create your own report, *Filter Results Tool* works with command data not inside de JMeter GUI. 
*Filter Results Tool* works with *"cmdrunner-2.2"*, you can download from [Maven Repo](https://mvnrepository.com/artifact/kg.apc/cmdrunner/2.2) and copy to your **jmeter/version/lib** folder.
### Screenshot installed plugins
![imagen](https://user-images.githubusercontent.com/37635283/196411659-ca6315e9-24b4-4941-9739-b2417ee68f32.png)

## Taurus YAML
There are a example YAML to launch a JMeter script without GUI. If you want to run it launch in the CMD inside the root file:
> bzt launchTaurus.yaml

Automaticatly Taurus will install in your personal Folder (C:/Users/YourFolder) the next path and a JMeter version.
> C:/Users/YourFolder/.bzt/apache-jmeter/jmeterVersion

## Report creator
**ReportCreator.bat** create the report just tipying the follow parameters:
- **Title:** What title you want in the HTML. The default title is "Jmeter Report"
- **CSV Path:** You must set your results path, just accept CSV.
- **Folder Path:** Clean folder to contains the HTML and their configuration.
- **Granularity:** Set the granularity for graphs inside HTML, default is 1 minute.
### **IMPORTANT: You must have the JMeter version and bin in your Enviorment variables in the Path secction.**
![Sin título](https://user-images.githubusercontent.com/37635283/196415196-2c534f05-c770-4a73-801a-2fda6819c2da.png)

## Filter Results Tool
The fields to fill are this:
- **Input File:** CSV containing the test results data.
- **Output File:** CSV to fill with the new modified data.
- **Success Only:** 'Y' for success request only in the new CSV, 'N' for all requests.
- **Include labels:** Just the labels we want, they are searched with Regex and it must detect all the label name. It'll take all by default if the answer is null.
- **Exclude labels:** The same like "Include labels" but in the other way, the lavels we won't, they are searched with Regex and it must detect all the label name. It won't exclude any label by default if the answer is null.
- **Start offset:** Seconds to split the results at start.
- **End offset:** Seconds to split the results at the end.
![imagen](https://user-images.githubusercontent.com/37635283/196414292-c1ab8cf5-2293-467f-b69b-f3bc1a36027b.png)
