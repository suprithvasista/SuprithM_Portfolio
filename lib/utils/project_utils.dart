class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String fullcontent;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  final String? gitLink;
  final String? pypiLink;
  final String? verifierLink;
  final String displayFooter;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.fullcontent,
    this.androidLink,
    this.iosLink,
    this.webLink,
    this.gitLink,
    this.pypiLink,
    this.verifierLink,
    required this.displayFooter,
  });
}

// ###############
// HOBBY PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/RJM.png',
    title: 'Recursive job matching',
    subtitle:
    'This is a comprehensive web application that helps user to build custom resumes or enhance the existing resumes as per job description.',
    fullcontent:
    'Introduction\n'
        '   As the world progresses with AI '
        '   It has become more competitive to crack a job, One fundamental thing to get an interview call is based on the resume match for the job role.\n '
        '   Leveraging Ai We have collaboratively created an web application that can be used to source the data from job portals '
        '   and match the uploaded resume and provide feedbacks on the resume of what improvements can be done to better suite the profile to the job.\n'
        '\n '
        'Technologies\n'
        '   1. Python\n'
        '   2. Streamlit\n'
        '   3. MongoDb\n'
        '   4. Gemini API\n'
        '\n'
        'Implementation\n'
        '   1. The Ui is built leveraging the streamlit python, along with backend services and API calls.\n'
        '   2. MongoDB database for user registration and login.\n'
        '   3. The job details are fetched from various job portals through API pipelines.\n '
        '   4. The Job description can be compared against the uploaded resume where custom prompts can be provided to analyse the resume against the job description and the feedback can be downloaded as PDF for offline usability.\n'
        '\n'
        'Note\n'
        '   As the feedback is AI generated manual editing is required while updating the resume rather then blindly making the changes.\n'
        '\n'
        'Future work for RJM\n'
        '   1. Currently trying to build a custom model for matching the resumes for IT sectors.\n'
        '   2. Anyone interested in contributing to the tool feel free to connect.\n'
        '\n'
        'Conclusion\n'
        '   Feel free to try the tool and provide feedbacks. \n ',

    webLink:
    'https://recursivejobmatching.streamlit.app/',
    gitLink:
    'https://github.com/suprithvasista/R_J_M/',
    displayFooter:'Available on',
  ),
  ProjectUtils(
    image: 'assets/projects/Uploader_button.png',
    title: 'Streamlit custom file path loader',
    subtitle:
    'This is a Custom streamlit widget which allows the user to get the file metadata.',
    fullcontent:
    'Introduction\n'
        '   Currently in streamlit there is no way we can get the file metadata using the default uploader.\n'
        '   Which hinders the applications development for uses cases leveraging file metadata for processing\n'
        '       eg: File attachment services which leverages the file path instead of the contents to attach the file for further processing.\n'
        '   This is one of the use case were i had to find an alternative so that it did not affect my mvp timelines\n'
        '   Came up with a custom widget which can be used by community by integrating this into there code as per the use cases.\n'
        '\n '
        'Technologies\n'
        '   1. Python 3.12\n'
        '   2. Streamlit\n'
        '\n'
        'Note\n'
        '   Please make sure python is properly configured with tkinter.\n'
        '\n'
        'Implementation\n'
        '   1. The widget is built using python.\n'
        '   2. The uploading of file is done trickily through the tk inter were we leverage the filedialog box to upload the files and extract the metadata.\n'
        '   3. And once after the upload the files are displayed using a container and if user choose to remove the chosen file it can be done using the "X" close button,'
        ' and the session state will still be maintained.\n'
        '\n'
        'Future work\n'
        '   1. Currently the widget cannot be used along with st.forms, working on it to make it even feasible with st.forms this will be'
        ' the goal in upcoming releases.\n'
        '   2. Anyone interested in contributing to the tool/community feel free to connect on any social media or mail.\n'
        '\n'
        'Conclusion\n'
        '   Feel free to try out the widget any feedbacks will be appreciated.\n'
        '\n'
        'How to use the widget\n'
        '   This widgets is deployed on pypi community please fell to check it out for more information.\n'
        '           ** pip install Streamlit-Filepath-Loader **',
    pypiLink:
    'https://pypi.org/project/Streamlit-Filepath-Loader/',
    gitLink:
    'https://github.com/suprithvasista/StreamLitCustomWidgetUploader',
    displayFooter:'Available on',
  ),
  ProjectUtils(
    image: 'assets/projects/Pandas_data_cons.png',
    title: 'Pandas consolidation library',
    subtitle:
    'This library help user to consolidate/transpose the multiple XL sheets as per user requirements',
    fullcontent:
    'Introduction\n'
        '   Currently this library focuses on consolidating the multiple xl into single consolidated sheet.\n'
        '   This can be used across multiple uses cases and avoid writing of redundant codes for xl consolidation.\n'
        '\n '
        'Technologies\n'
        '   1. Python 3.13\n'
        '   2. Pandas\n'
        '\n'
        'Implementation\n'
        '   1. This library is mainly focusing on xl consolidation using pandas were a xl can be consolidated and transposed as per user basis.\n'
        '   2. This functionality is implemented using python pandas/openpyxl/xlsxwriter were we use complex logic for consolidation and data transposing based on user configuration,further the data can also be used for some reporting purpose.\n'
        '   3. Here we mainly use openpyxl and xlsxwriter engine to read and write the excel sheet and also the errors are handled properly if in case of any failures.\n'
        '\n'
        'Future work\n'
        '   1. Trying to incorporate data base connectivity to append the consolidated data into the target databases for the upcoming releases'
        ' along with some more cool features\n'
        '   2. For any contribution for the code base pleas feel free to request a pull request for the repository.\n'
        '\n'
        'Note\n'
        '   1. For users who are just trying to use the utility without wanting to install the library,'
        ' we have a created executable file along with configuration.properties which are available on my git repository.\n'
        '   2. Users can directly fork the repo download the file and start using with no worries,this is available for both for windows and macos.\n'
        '\n'
        'Conclusion\n'
        '   Feel free to use the consolidation utility any feedbacks will be appreciated.\n'
        '\n'
        'How to use the widget\n'
        '   This widgets is deployed on pypi community please fell to check it out for more information.\n'
        '           ** pip install Streamlit-Filepath-Loader **',
    pypiLink:
    'https://pypi.org/project/Pandas-Consolidated-Loader/',
    gitLink:
    'https://github.com/suprithvasista/ConsolidationLibrary/',
    displayFooter:'Available on',
  ),
];

// ###############
// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/SCD.jpg',
    title: 'SCD and SCD Recovery',
    subtitle:
    'A slowly changing dimension (SCD) is a dimension that stores data which is generally stable, may change over time.',
    fullcontent:
    'Introduction\n'
        '   Slowly changing dimension data load is generally used for data that require historical data maintenance,'
        ' like account,product,collateral which change over a period of time  \n'
        '\n '
        'Technologies\n'
        '   1. Python\n'
        '   2. Pyspark\n'
        '   3. Hive\n'
        '\n'
        'Major Contribution\n'
        '   One of the major contribution is the performance improvements across all scd/scd recovery jobs by redesigning the architecture of the data processing internally'
        ' happening in the engine which brought down the single most time consuming job from (2 hours 45 minutes) to 16 minutes on an average'
        ' and brought down SLA by (6 hours) across all SCD jobs for all the countries.\n'
        '\n'
        'Major Bug Fixed\n'
        '   One bug which surpassed all the previous developer which was causing data cartridge error was identified and fixed just couple of months after joining the organization during my internship.'
        ' This bug was there since the job was productionized.\n'
        '\n'
        'Major Enhancements\n'
        '   1. Added a mechanism to close the records which are not part of source load but available in target on adhoc basis.\n'
        '   2. Enhanced the code with exit code mechanism which made sure the data is written only when there is data change'
        ' b/w source and target which in turn brought down the execution time of scd by more then (2hrs)\n'
        '   3. Another enhancement done was to write the data into temp and swap the data into target table (Active Passive Concept) which help'
        ' reduce the data unavailability in table which reduced the application query down time',
    verifierLink:
    'https://www.linkedin.com/in/devi-acharya-4923091a/',
    displayFooter:'Verified by',
  ),
  ProjectUtils(
    image: 'assets/projects/incremental.webp',
    title: 'Incremental/Incremental Recovery',
    subtitle:
    'Incremental/Incremental recovery load is used to load only the changed elements into target.',
    fullcontent:
    'Introduction\n'
        '  Incremental/Incremental recovery data load is generally used for non snap shot load,'
        '  like ratings etc\n'
        '\n '
        'Technologies\n'
        '   1. Python\n'
        '   2. Pyspark\n'
        '   3. Hive\n'
        '\n'
        'Major Contribution/Developments\n'
        '   1. Developed and implemented the Incremental recovery engine from scratch and deployed this data load into production for back dated recovery loads.\n'
        '   2. Developed a Recursive job execution script for recovery load based on user criteria.\n'
        '\n'
        'Major Bug Fixed\n'
        '   One of the bug fixes is, that data in target table used to get overwritten when there is Zero data processed due to join issues which used to erase '
        ' the target table data'
        ' which then required copying data from temp and re executing after fixing the join table data. Which was fixed by adding a count validation check before writing into target.\n'
        '\n'
        'Major Enhancements\n'
        '   1. A mechanism for technical exclusion has been added. This configuration can be applied to columns where data comparison is not necessary to determine if a data change has occurred.\n'
        '   2. Enhanced the code with exit code mechanism which made sure the data is written only when there is data change'
        ' b/w source and target which in turn brought down the execution time of incremental load by more then (45 minutes)\n'
        '   3. Another enhancement done was to write the data into temp and swap the data into target table (Active Passive Concept) which help'
        ' reduce the data unavailability in table which reduced the application query down time.\n',
    verifierLink:
    'https://www.linkedin.com/in/devi-acharya-4923091a/',
    displayFooter:'Verified by',
  ),
  ProjectUtils(
    image: 'assets/projects/Currency_converion.png',
    title: 'Currency/Measures Computation',
    subtitle:
    'This Frame work is used calculate measures and cross currency conversion for reporting.',
    fullcontent:
    'Introduction\n'
        '  This frame work is designed to calculate cross currency conversion and measure calculation over period of time based on configuration.\n'
        '\n '
        'Technologies\n'
        '   1. Scala\n'
        '   2. Spark\n'
        '   3. Hive\n'
        '\n'
        'Major Contribution/Developments\n'
        '   1. Enhanced the frame work and implementing the new feature to calculate one more generic currency conversion across all measure tables '
        'based on user configurations.\n'
        '\n'
        'Major Bug Fixed\n'
        '   No bugs.\n'
        '\n'
        'Major Enhancements\n'
        '   1. Enhanced the engine performance by handling the cache data which significantly brought down the run time by 45 minutes across all measure tables.',
    verifierLink:
    'https://www.linkedin.com/in/devi-acharya-4923091a/',
    displayFooter:'Verified by',
  ),
  ProjectUtils(
    image: 'assets/projects/ETL.jpeg',
    title: 'Oracle Data Integrator',
    subtitle:
    'This is the ETL tool which was used to build the pip lines for fact loads.',
    fullcontent:
    'Introduction\n'
        '  The oracle data integrator was used to data movement into fact tables.'
        '  We build mappings and generate the scenario upon the definition which can be used to at run time to load the data,'
        ' was handling the development of complex ETL mappings.\n'
        '\n '
        'Technologies\n'
        '   1. Hive\n'
        '   2. KM(Knowledge Modules)\n'
        '   3. Oracle\n'
        '\n'
        'Major Contribution/Developments\n'
        '   1. Helped create a complex frame work by writing a ODI procedure leveraging the Jython and odisqlunload for creating Outbound file for down stream applications'
        ' to consume, based on simple user configurations in config table.'
        '   2. Led development of multiple complex ETL mapping design changes which were put into production.\n'
        '\n'
        'Major Bug Fixed\n'
        '   No bugs.\n'
        '\n'
        'Major Enhancements\n'
        '   1. Enhanced the execution script to capture the error at ODI repository data base and load it into error table for easier debugging.\n'
        '   2. Created new Models in topology by creating a new physical and logical schema to access the database tables at different schema level.\n'
        '   3. Done a POC for extracting the Metadata content from the DB repo and was able to retrieve (40 - 50 %) of data through automated query which'
        ' reduced significant manual work\n',
    verifierLink:
    'https://www.linkedin.com/in/devi-acharya-4923091a/',
    displayFooter:'Verified by',
  ),
  ProjectUtils(
    image: 'assets/projects/Data-Quality.jpg',
    title: 'Data Quality Framework PySpark Engine',
    subtitle:
    'The Data quality frame work ensures the data is clean before delivering any data to applications',
    fullcontent:
    'Introduction\n'
        '  The pyspark data quality frame work mainly focuses on maintaining the data standard based on several checks configured.'
        '   Some of the key checks implemented are duplicate,list of values,not null,referential integrity.\n'
        '\n '
        'Technologies\n'
        '   1. Python\n'
        '   2. Pyspark\n'
        '   3. Hive\n'
        '   4. HDFS\n'
        '\n'
        'Major Contribution/Developments\n'
        '   1. Helped migrating the Data Quality checks from PLSQL to Spark by developing the data quality Framework using'
        ' PySpark gaining significant improvement in process time.\n'
        '   2. Implemented all the Four type of check(Duplicates,LOV,NOT NULL,REF) which is necessary for data quality'
        ' so that there is no down time in application queries/Batch.\n'
        '   3. By implementing the new framework it brought the batch delivery time to minimal as the DQ batches on an average'
        ' is taking 1hr 15 minutes to run on spark compared to 15 hours in oracle.\n'
        '\n'
        'Major Bug Fixed\n'
        '   No bugs.\n'
        '\n'
        'Major Enhancements\n'
        '   1. Enhanced the framework to support batch execution by creating a bash script which executes the batch'
        ' level data quality checks based on the configuration file which avoid the duplicate run of checks as it will '
        'be executed as part of a batch after each table/batch load. Which in turn brought down the SLA by 35 minutes.\n',
    verifierLink:
    'https://www.linkedin.com/in/devi-acharya-4923091a/',
    displayFooter:'Verified by',
  ),
  ProjectUtils(
    image: 'assets/projects/ReconilationFramwork.png',
    title: 'Reconciliation Framework Engine',
    subtitle:
    'The ReconEngine is generally used to reconcile same data from two different data sources',
    fullcontent:
    'Introduction\n'
        '  The frame work mainly focus on reconciling the data from two different databases based on the user configured query in the UI.'
        ' Here the data sources are REDW and UDL (Universal Data Lake) mainly against which the definitions are '
        ' created and reconciled to find the difference at a particular grain either product or account type etc.'
        ' The frame work supports multiple data sources like teradata,hive Bdsql etc  and also manual file load.\n'
        '\n '
        'Technologies\n'
        '   1. Python\n'
        '   2. Pyspark\n'
        '   3. Hive\n'
        '   4. Oracle\n'
        '   5. Teradata\n'
        '   6. HDFS\n'
        '\n'
        'Major Contribution/Developments\n'
        '   1. Helped creating two reconciliation frameworks attribute and balance reconciliation from scratch.\n'
        '   2. Out of which the balance reconciliation framework was put into UAT for downstream application to use the tool in regular recon activity.\n'
        '\n'
        'Major Bug Fixed\n'
        '   No bugs.\n'
        '\n'
        'Major Enhancements\n'
        '   1. Enhanced the frame work to support remediation load in the same script by reading the query from a different view which helped in completion of'
        ' reconciliation end to end.\n',
    verifierLink:
    'https://www.linkedin.com/in/devi-acharya-4923091a/',
    displayFooter:'Verified by',
  ),
  ProjectUtils(
    image: 'assets/projects/data-archival.jpg',
    title: 'Data Archival Framework',
    subtitle:
    'The archival frame is used to Truncate/Archive the back dated old data.',
    fullcontent:
    'Introduction\n'
        '  This Framework was created both in scala and plsql.Scala for hive level truncation and plsql for oracle level truncation.'
        '  Even this framework uses a config table to read the configuration as to how many table to truncate how many dates of data to truncate and '
        'whether to archive and truncate. This Configuration are given by users when raising data model changes.\n'
        '\n '
        'Technologies\n'
        '   1. Scala\n'
        '   2. Hive\n'
        '   3. Oracle\n'
        '   4. HDFS\n'
        '\n'
        'Major Contribution/Developments\n'
        '   1. Helped creating and implementing two data archival frame works.\n'
        '   2. This framework is used in Higher environment to perform archival based on the zena jobs scheduled.\n'
        '   3. We use HDFS to archive hive tables and truncate the data where as in oracle we use exchange partition to archive the data and truncate teh data '
        ',and all the history is maintained in the audit table for reference.\n'

        '\n'
        'Major Bug Fixed\n'
        '   No bugs.\n'
        '\n'
        'Major Enhancements\n'
        '   1. Enhanced the spark engine to support archiving the data at year level partitioning.\n',
    verifierLink:
    'https://www.linkedin.com/in/devi-acharya-4923091a/',
    displayFooter:'Verified by',
  ),
];