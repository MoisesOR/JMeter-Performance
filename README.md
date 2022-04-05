# JMeter-Performance
Small template in JMeter to do performance test.

## Installation
- Install [Java](https://www.java.com/es/download/)
- Go to [JMeter Archive](https://archive.apache.org/dist/jmeter/binaries/) and download the last version.

## Installation for [Taurus](https://gettaurus.org/install/Installation/)
- Install the same like default installation.
- Install [Python](https://www.python.org/downloads/)
- Install [Visual Studio C++](https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=Community&rel=16)

## Report
**ReportCreator.bat** create the report just tipying the follow parameters:
- **Title**: What title you want in the HTML. The default title is "Jmeter Report"
- **CSV Path**: You must set your results path, just accept CSV.
- **Folder Path**: Clean folder to contains the HTML and their configuration.
- **Granularity**: Set the granularity for graphs inside HTML, default is 1 minute.
**IMPORTANT: You must have the JMeter version and bin in your Enviorment variables in the Path secction.**

## Plugins
### [Dummy Sample](https://jmeter-plugins.org/wiki/DummySampler/)
For check and create request to try others plugins without needed an API or whatever.
### [Filter Results Tool](https://jmeter-plugins.org/wiki/FilterResultsTool/) and [Merge Results](https://jmeter-plugins.org/wiki/MergeResults/)
This both is needed to create a specific Results.csv to create your own report, *Filter Results Tool* works with command data not inside de JMeter GUI. 
*Filter Results Tool* works with *cmdrunner-2.2*, you can download from [Maven Repo](https://mvnrepository.com/artifact/kg.apc/cmdrunner/2.2) and copy to your **jmeter/version/lib** folder.

## Taurus YAML
There are a example YAML to launch a JMeter script without GUI. If you want to run it launch in the CMD inside the root file:
> bzt launchTaurus.yaml
Automaticatly Taurus will install in your personal Folder (C:/Users/YourFolder) the next path and a JMeter version.
> C:/Users/YourFolder/.bzt/apache-jmeter/jmeterVersion
