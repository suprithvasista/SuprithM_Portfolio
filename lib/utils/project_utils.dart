class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  final String? gitLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
    this.gitLink,
  });
}

// ###############
// HOBBY PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/Job_desc_resume_matcher.png',
    title: 'Custom Resume Maker',
    subtitle:
    'This is a comprehensive web applicatioin that helps user to build custom resumes or enhance the existing resumes as per job description.',
    webLink:
    'https://recursivejobmatching.streamlit.app/',
  ),
  ProjectUtils(
    image: 'assets/projects/Job_desc_resume_matcher.png',
    title: 'Custom Resume Maker 1',
    subtitle:
    'This is a comprehensive web applicatioin that helps user to build custom resumes or enhance the existing resumes as per job description.',
    webLink:
    'https://recursivejobmatching.streamlit.app/',
  ),
  ProjectUtils(
    image: 'assets/projects/Job_desc_resume_matcher.png',
    title: 'Custom Resume Maker 2',
    subtitle:
    'This is a comprehensive web applicatioin that helps user to build custom resumes or enhance the existing resumes as per job description.',
    webLink:
    'https://recursivejobmatching.streamlit.app/',
  ),
];

// ###############
// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/git_photo.png',
    title: 'Git hub projects',
    subtitle:
    'Git Projects.',
    gitLink:
    'https://github.com/suprithvasista',
  ),
  ProjectUtils(
    image: 'assets/projects/git_photo.png',
    title: 'Git hub projects',
    subtitle:
    'Git Projects 2.',
    gitLink:
    'https://github.com/suprithvasista',
  ),
  ProjectUtils(
    image: 'assets/projects/git_photo.png',
    title: 'Git hub projects',
    subtitle:
    'Git Projects 3.',
    gitLink:
    'https://github.com/suprithvasista',
  ),
];