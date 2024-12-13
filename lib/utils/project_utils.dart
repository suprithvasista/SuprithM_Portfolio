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
    'This is a comprehensive web application that helps user to build custom resumes or enhance the existing resumes as per job description',
    fullcontent:
    'Introduction\n'
        '   As the world progresses with AI,'
        ' it has become more competitive to secure a job. One fundamental factor for getting an interview call is based on the resume match for the job role.'
        ' Leveraging AI, we have collaboratively created a web application that can be used to source data from job portals'
        ' and match the uploaded resume, providing feedback on what improvements can be made to better suit the profile for the job.\n'
        '\n '
        'Technologies\n'
        '   1. Python\n'
        '   2. Streamlit\n'
        '   3. MongoDB\n'
        '   4. Gemini API\n'
        '\n'
        'Implementation\n'
        '   1. The UI is built using Streamlit in Python, along with backend services and API calls.\n'
        '   2. MongoDB is used for user registration and login.\n'
        '   3. Job details are fetched from various job portals through API pipelines.\n '
        '   4. The job description can be compared against the uploaded resume, where custom prompts can be provided to analyze the resume against the job description, and the feedback can be downloaded as a PDF for offline use.\n'
        '\n'
        'Note\n'
        '   As the feedback is AI-generated, manual editing is required when updating the resume rather than blindly making changes.\n'
        '\n'
        'Future Work for RJM\n'
        '   1. We are currently working on building a custom model for matching resumes in the IT sector.\n'
        '   2. Anyone interested in contributing to the tool is welcome to connect.\n'
        '\n'
        'Conclusion\n'
        '   Feel free to try the tool and provide feedback.\n',
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
    'This is a Custom streamlit widget which allows the user to get the file metadata',
    fullcontent:
    'Introduction\n'
        '   Currently, in Streamlit, there is no way to get the file metadata using the default uploader.'
        ' This hinders application development for use cases leveraging file metadata for processing.\n'
        '       e.g., file attachment services that leverage the file path instead of the contents to attach the file for further processing.\n'
        '   This is one of the use cases where I had to find an alternative so that it did not affect my MVP timelines.'
        ' I came up with a custom widget that can be used by the community by integrating it into their code as per the use cases.\n'
        '\n '
        'Technologies\n'
        '   1. Python 3.12\n'
        '   2. Streamlit\n'
        '\n'
        'Note\n'
        '   Please make sure Python is properly configured with Tkinter.\n'
        '\n'
        'Implementation\n'
        '   1. The widget is built using Python.\n'
        '   2. The uploading of files is done through Tkinter, where we leverage the filedialog box to upload the files and extract the metadata.\n'
        '   3. Once the files are uploaded, they are displayed using a container, and if the user chooses to remove a chosen file, it can be done using the "X" close button,'
        ' and the session state will still be maintained.\n'
        '\n'
        'Future Work\n'
        '   1. Currently, the widget cannot be used along with st.forms. I am working on making it feasible with st.forms; this will be'
        ' the goal in upcoming releases.\n'
        '   2. Anyone interested in contributing to the tool/community, feel free to connect on any social media or via email.\n'
        '\n'
        'Conclusion\n'
        '   Feel free to try out the widget; any feedback will be appreciated.\n'
        '\n'
        'How to Use the Widget\n'
        '   This widget is deployed on the PyPI community; please feel free to check it out for more information.\n'
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
    'This library help users to consolidate/transpose XL sheets as per requirement',
    fullcontent:
    'Introduction\n'
        '   Currently, this library focuses on consolidating multiple Excel files into a single consolidated sheet.\n'
        '   This can be used across multiple use cases and avoids writing redundant code for Excel consolidation.\n'
        '\n '
        'Technologies\n'
        '   1. Python 3.13\n'
        '   2. Pandas\n'
        '\n'
        'Implementation\n'
        '   1. This library mainly focuses on Excel consolidation using Pandas, where an Excel file can be consolidated and transposed based on user requirements.\n'
        '   2. This functionality is implemented using Python, Pandas, OpenPyXL, and XlsxWriter, where we use complex logic for consolidation and data transposing based on user configuration. Furthermore, the data can also be used for reporting purposes.\n'
        '   3. Here, we mainly use OpenPyXL and XlsxWriter to read and write the Excel sheets, and errors are handled properly in case of any failures.\n'
        '\n'
        'Future Work\n'
        '   1. We are trying to incorporate database connectivity to append the consolidated data into target databases in upcoming releases,'
        ' along with some more cool features.\n'
        '   2. For any contributions to the codebase, please feel free to submit a pull request for the repository.\n'
        '\n'
        'Note\n'
        '   1. For users who want to use the utility without installing the library,'
        ' we have created an executable file along with configuration.properties, which are available in my Git repository.\n'
        '   2. Users can directly fork the repo, download the file, and start using it with no worries; this is available for both Windows and macOS.\n'
        '\n'
        'Conclusion\n'
        '   Feel free to use the consolidation utility; any feedback will be appreciated.\n'
        '\n'
        'How to Use the Widget\n'
        '   This widget is deployed in the PyPI community; please feel free to check it out for more information.\n'
        '           ** pip install Pandas-Consolidated-Loader **',
    pypiLink:
    'https://pypi.org/project/Pandas-Consolidated-Loader/',
    gitLink:
    'https://github.com/suprithvasista/ConsolidationLibrary/',
    displayFooter:'Available on',
  ),
  ProjectUtils(
    image: 'assets/projects/Porfolio_creator_enhancer.png',
    title: 'Portfolio Generator And Enhancer',
    subtitle:
    'Create and deploy stunning portfolios in one click! Powered by Gemini API, it enhances your projects for a dynamic, professional edge',
    fullcontent:
    'Introduction\n'
    '   This application, built with Streamlit, simplifies the creation, deployment, and management of Flutter-based web portfolios. It integrates AI to enhance project descriptions and offers seamless GitHub and Vercel deployment, customizable themes, and centralized profile management.\n'
    'Key Features\n'
        '   * Profile Management: Define and manage your portfolio details.\n'
        '   * AI-Powered Enhancement: Improve project details dynamically using Gemini-1.5 Pro.\n'
        '   * GitHub & Vercel Integration: Fork, modify, and deploy projects effortlessly.\n'
        '   * Customizable UI: Personalize colors, layouts, and navigation.\n'
        '   * Project Categories: Showcase work and hobby projects with rich details, images, and external links.\n'
        '   * Centralized Social Media Management: Validate and manage all profile links in one place.\n'
        '   * Scalability: Designed for individual and team use, simplifying collaborative processes.\n'
    'Tech Stack and Libraries Used\n'
        '   * Streamlit: Interactive and dynamic web application framework.\n'
        '   * Streamlit Option Menu: For seamless navigation across sections.\n'
        '   * BigQuery (GCP): Data warehousing and project tracking.\n'
        '   * BigQuery API: Fetch and display deployment details dynamically.\n'
        '   * GitHub API: Repository forking, file modification, and management.\n'
        '   * Vercel API: Direct deployment of projects from the application.\n'
        '   * Regex (re): URL validation for social media links.\n'
        '   * Base64: Image encoding for uploads.\n'
        '   * Python pathlib: File and directory management.\n'
        '   * AI Integration (Gemini-1.5 Pro): For enhancing content dynamically.\n'
        '   * SMTP Library: For custom OTP-based email authentication.\n'
    'Architecture\n'
        '   * Frontend: Built with Streamlit for an intuitive user experience.\n'
        '   * Backend Integrations: GitHub and Vercel APIs for deployment, BigQuery for data management, and AI for project enhancements.\n'
        '   * Session Management: Persistent session state for user inputs and actions.\n'
    'Benefits\n'
        'This app solves key challenges for developers by:\n'
          '   * Simplifying project deployment with GitHub and Vercel.\n'
          '   * Saving time and improving content quality with AI-powered enhancements.\n'
          '   * Consolidating profile and social media management.\n'
          '   * Enabling fully customizable portfolio layouts with minimal coding effort.\n',
    webLink:
    'https://portfolio-generator-enhancer.streamlit.app/',
    gitLink:
    'https://github.com/suprithvasista/Portfolio_Generator_Enhancer/',
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
    'A slowly changing dimension (SCD) is a dimension that stores data which is generally stable, may change over time',
    fullcontent:
    'Introduction\n'
        '   Slowly changing dimension (SCD) data load is generally used for data that requires historical data maintenance,'
        ' such as accounts, products, and collaterals, which change over a period of time.\n'
        '\n '
        'Technologies\n'
        '   1. Python\n'
        '   2. PySpark\n'
        '   3. Hive\n'
        '\n'
        'Major Contribution\n'
        '   One of the major contributions is the performance improvements across all SCD/SCD recovery jobs by redesigning the architecture of the data processing internally'
        ' happening in the engine, which reduced the single most time-consuming job from 2 hours and 45 minutes to an average of 16 minutes,'
        ' and brought down the SLA by 6 hours across all SCD jobs for all countries.\n'
        '\n'
        'Major Bug Fixed\n'
        '   One bug that surpassed all previous developers, causing data cartridge errors, was identified and fixed just a couple of months after joining the organization during my internship.'
        ' This bug had existed since the job was productionized.\n'
        '\n'
        'Major Enhancements\n'
        '   1. Added a mechanism to close records that are not part of the source load but are available in the target on an ad-hoc basis.\n'
        '   2. Enhanced the code with an exit code mechanism, ensuring that data is written only when there is a change'
        ' between the source and target, which in turn reduced the execution time of SCD by more than 2 hours.\n'
        '   3. Another enhancement was to write the data into a temporary table and swap it into the target table (Active-Passive Concept), which helped'
        ' reduce data unavailability in the table and minimized application query downtime.\n',
    verifierLink:
    'https://www.linkedin.com/in/devi-acharya-4923091a/',
    displayFooter:'Verified by',
  ),
  ProjectUtils(
    image: 'assets/projects/incremental.webp',
    title: 'Incremental/Incremental Recovery',
    subtitle:
    'Incremental/Incremental recovery is used to load only the changed elements into target',
    fullcontent:
    'Introduction\n'
        '  Incremental/Incremental recovery data load is generally used for non-snapshot loads,'
        '  such as ratings, etc.\n'
        '\n '
        'Technologies\n'
        '   1. Python\n'
        '   2. PySpark\n'
        '   3. Hive\n'
        '\n'
        'Major Contributions/Developments\n'
        '   1. Developed and implemented the Incremental recovery engine from scratch and deployed this data load into production for backdated recovery loads.\n'
        '   2. Developed a recursive job execution script for recovery loads based on user criteria.\n'
        '\n'
        'Major Bug Fixed\n'
        '   One of the bug fixes addressed the issue where data in the target table would get overwritten when there was zero data processed due to join issues, which erased '
        '   the target table data. This required copying data from a temporary table and re-executing after fixing the join table data. The issue was resolved by adding a count validation check before writing into the target.\n'
        '\n'
        'Major Enhancements\n'
        '   1. A mechanism for technical exclusion has been added. This configuration can be applied to columns where data comparison is not necessary to determine if a data change has occurred.\n'
        '   2. Enhanced the code with an exit code mechanism, ensuring that data is written only when there is a change\n'
        '      between the source and target, which in turn reduced the execution time of the incremental load by more than 45 minutes.\n'
        '   3. Another enhancement involved writing the data into a temporary table and swapping it into the target table (Active-Passive Concept), which helped\n'
        '      reduce data unavailability in the table and minimized application query downtime.\n',
    verifierLink:
    'https://www.linkedin.com/in/devi-acharya-4923091a/',
    displayFooter:'Verified by',
  ),
  ProjectUtils(
    image: 'assets/projects/Currency_converion.png',
    title: 'Currency/Measures Computation',
    subtitle:
    'This Framework is used calculate measures and cross currency conversion for reporting',
    fullcontent:
    'Introduction\n'
        '  This framework is designed to calculate cross-currency conversion and measure calculations over a period of time based on configuration.\n'
        '\n'
        'Technologies\n'
        '   1. Scala\n'
        '   2. Spark\n'
        '   3. Hive\n'
        '\n'
        'Major Contributions/Developments\n'
        '   1. Enhanced the framework by implementing a new feature to calculate one more generic currency conversion across all measure tables '
        ' based on user configurations.\n'
        '\n'
        'Major Bug Fixed\n'
        '   No bugs.\n'
        '\n'
        'Major Enhancements\n'
        '   1. Enhanced engine performance by handling cached data, which significantly reduced the run time by 45 minutes across all measure tables.\n',
    verifierLink:
    'https://www.linkedin.com/in/devi-acharya-4923091a/',
    displayFooter:'Verified by',
  ),
  ProjectUtils(
    image: 'assets/projects/ETL.jpeg',
    title: 'Oracle Data Integrator',
    subtitle:
    'ETL tool used to build pip lines for fact loads',
    fullcontent:
    'Introduction\n'
        '  The Oracle Data Integrator was used for data movement into fact tables.'
        ' We built mappings and generated scenarios based on definitions that can be used at runtime to load the data,'
        ' handling the development of complex ETL mappings.\n'
        '\n '
        'Technologies\n'
        '   1. Hive\n'
        '   2. KM (Knowledge Modules)\n'
        '   3. Oracle\n'
        '\n'
        'Major Contributions/Developments\n'
        '   1. Helped create a complex framework by writing an ODI procedure leveraging Jython and odisqlunload to create outbound files for downstream applications'
        ' to consume, based on simple user configurations in the config table.\n'
        '   2. Led the development of multiple complex ETL mapping design changes that were put into production.\n'
        '\n'
        'Major Bug Fixed\n'
        '   No bugs.\n'
        '\n'
        'Major Enhancements\n'
        '   1. Enhanced the execution script to capture errors in the ODI repository database and load them into an error table for easier debugging.\n'
        '   2. Created new models in topology by establishing new physical and logical schemas to access the database tables at different schema levels.\n'
        '   3. Completed a proof of concept (POC) for extracting metadata content from the database repository and was able to retrieve 70-80% of data through automated queries,'
        ' significantly reducing manual work.\n',
    verifierLink:
    'https://www.linkedin.com/in/devi-acharya-4923091a/',
    displayFooter:'Verified by',
  ),
  ProjectUtils(
    image: 'assets/projects/Data-Quality.jpg',
    title: 'PySpark Data Quality Framework',
    subtitle:
    'The Data quality framework ensures the data is clean before delivering any data to applications',
    fullcontent:
    'Introduction\n'
        '  The PySpark Data Quality framework mainly focuses on maintaining data standards based on several configured checks.'
        ' Some of the key checks implemented are duplicates, list of values, not null, and referential integrity.\n'
        '\n '
        'Technologies\n'
        '   1. Python\n'
        '   2. PySpark\n'
        '   3. Hive\n'
        '   4. HDFS\n'
        '\n'
        'Major Contributions/Developments\n'
        '   1. Assisted in migrating Data Quality checks from PL/SQL to Spark by developing the Data Quality framework using'
        ' PySpark, resulting in significant improvements in process time.\n'
        '   2. Implemented all four types of checks (Duplicates, LOV, NOT NULL, REF) necessary for data quality'
        ' to ensure there is no downtime in application queries or batch processes.\n'
        '   3. By implementing the new framework, the batch delivery time was minimized, with DQ batches averaging'
        ' 2 hour and 15 minutes to run on Spark compared to 30 hours in Oracle.\n'
        '\n'
        'Major Bug Fixed\n'
        '   No bugs.\n'
        '\n'
        'Major Enhancements\n'
        '   1. Enhanced the framework to support batch execution by creating a bash script that executes batch-level'
        ' data quality checks based on a configuration file, avoiding duplicate runs of checks by executing them'
        ' as part of a batch after each table or batch load. This change brought down the SLA by 35 minutes.\n',
    verifierLink:
    'https://www.linkedin.com/in/devi-acharya-4923091a/',
    displayFooter:'Verified by',
  ),
  ProjectUtils(
    image: 'assets/projects/ReconilationFramwork.png',
    title: 'Reconciliation Framework Engine',
    subtitle:
    'The ReconEngine is generally used to reconcile the data from two different data sources',
    fullcontent:
    'Introduction\n'
        '  The framework mainly focuses on reconciling data from two different databases based on the user-configured query in the UI.'
        ' Here, the data sources are Teradata and Hive, against which the definitions are'
        ' created and reconciled to find the differences at a particular grain, such as product or account type.'
        ' The framework supports multiple data sources like Teradata, Hive, BDSQL, etc., and also manual file loads.\n'
        '\n '
        'Technologies\n'
        '   1. Python\n'
        '   2. PySpark\n'
        '   3. Hive\n'
        '   4. Oracle\n'
        '   5. Teradata\n'
        '   6. HDFS\n'
        '\n'
        'Major Contributions/Developments\n'
        '   1. Helped create two reconciliation frameworks: attribute reconciliation and balance reconciliation from scratch.\n'
        '   2. The balance reconciliation framework was put into UAT for downstream applications to use the tool in regular reconciliation activities.\n'
        '\n'
        'Major Bug Fixed\n'
        '   No bugs.\n'
        '\n'
        'Major Enhancements\n'
        '   1. Enhanced the framework to support remediation loads in the same script by reading the query from a different view, which helped in completing the'
        ' reconciliation end-to-end.\n',
    verifierLink:
    'https://www.linkedin.com/in/devi-acharya-4923091a/',
    displayFooter:'Verified by',
  ),
  ProjectUtils(
    image: 'assets/projects/data-archival.jpg',
    title: 'Data Archival Framework',
    subtitle:
    'The archival framework is used to Truncate/Archive the back dated data',
    fullcontent:
    'Introduction\n'
        '  This framework was created in both Scala and PL/SQL. Scala is used for Hive-level truncation, while PL/SQL is used for Oracle-level truncation.'
        ' The framework uses a config table to read configurations, such as how many tables to truncate, how many dates of data to truncate, and'
        ' whether to archive and truncate. These configurations are provided by users when raising data model changes.\n'
        '\n '
        'Technologies\n'
        '   1. Scala\n'
        '   2. Hive\n'
        '   3. Oracle\n'
        '   4. HDFS\n'
        '\n'
        'Major Contributions/Developments\n'
        '   1. Helped create and implement two data archival frameworks.\n'
        '   2. This framework is used in higher environments to perform archival based on the scheduled Zena jobs.\n'
        '   3. We use HDFS to archive Hive tables and truncate the data, whereas in Oracle we use exchange partitioning to archive the data and truncate the data.'
        ' All history is maintained in the audit table for reference.\n'
        '\n'
        'Major Bug Fixed\n'
        '   No bugs.\n'
        '\n'
        'Major Enhancements\n'
        '   1. Enhanced the Spark engine to support archiving data at the year-level partitioning.\n',
    verifierLink:
    'https://www.linkedin.com/in/devi-acharya-4923091a/',
    displayFooter:'Verified by',
  ),
];