class DataSitus {
  String founder;
  String imageLink;
  String link;
  String title;
  String description;
  bool isFavorite;

  DataSitus({
    required this.founder,
    required this.imageLink,
    required this.link,
    required this.title,
    required this.description,
    required this.isFavorite
  });
}

var listSitus = [
  DataSitus(
    founder:'Quincy Larson',
    imageLink:
    "https://cdn.freecodecamp.org/platform/universal/fcc_meta_1920X1080-indigo.png",
    link: "https://www.freecodecamp.org/",
    title: "Freecodecamp",
    description: "FreeCodeCamp menyediakan kursus interaktif gratis tentang pengembangan web, pemrograman, dan teknologi terkait lainnya. Mereka menawarkan sertifikasi penuh untuk beberapa jalur pembelajaran.",
    isFavorite: false,
  ),
  DataSitus(
    founder:'Zach Sims, Ryan Bubinski',
    imageLink:
    "https://sm.pcmag.com/pcmag_uk/review/c/codecademy/codecademy_rps1.png",
    link: "https://www.codecademy.com/?__cf_chl_tk=2h3ncm0rYLu3PKBnAacSnWq4c3ovekAg89lhJ6fVX8U-1714209303-0.0.1.1-1557",
    title: "Codecademy",
    description: "Codecademy menyediakan kursus interaktif untuk berbagai bahasa pemrograman dan teknologi web, termasuk HTML, CSS, JavaScript, Python, dan banyak lagi.",
    isFavorite: false,
  ),
  DataSitus(
    founder:'Andrew Ng, Daphne Koller, Stanford University professors',
    imageLink:
    "https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/ef/46/19/ef46197f-ef81-7ef9-110b-a843ff8b80ae/AppIcon-0-1x_U007epad-0-0-0-0-0-0-0-85-220-0.png/1200x630wa.png",
    link: "https://www.coursera.org/",
    title: "Coursera",
    description: "Coursera menyediakan kursus online dari universitas dan lembaga top dunia, termasuk dalam bidang pemrograman dan teknologi.",
    isFavorite: false,
  ),
  DataSitus(
    founder:'Eren Bali',
    imageLink:
    "https://s.udemycdn.com/meta/default-meta-image-v2.png",
    link: "https://www.udemy.com/",
    title: "Udemy",
    description: "Udemy adalah platform belajar online yang menyediakan ribuan kursus berbayar dan gratis dalam berbagai topik, termasuk pemrograman.",
    isFavorite: false,
  ),
  DataSitus(
    founder:'Massachusetts Institute of Technology (MIT) and Harvard University',
    imageLink:
    "https://www.classcentral.com/report/wp-content/uploads/2022/03/edx-free-courses.png",
    link: "https://www.edx.org/",
    title: "edX",
    description: "edX adalah platform pembelajaran online yang menawarkan kursus dari universitas terkemuka di seluruh dunia, termasuk dalam bidang pemrograman dan teknologi.",
    isFavorite: false,
  ),
  DataSitus(
    founder:'Aaron Skonnard, Fritz Onion, Keith Brown',
    imageLink:
    "https://www.classcentral.com/report/wp-content/uploads/2021/04/pluralsight-top-courses.png",
    link: "https://www.pluralsight.com/",
    title: "Pluralsight",
    description: "Pluralsight adalah platform belajar teknologi yang menyediakan kursus video dalam berbagai topik, termasuk pengembangan perangkat lunak dan teknologi informasi.",
    isFavorite: false,
  ),
  DataSitus(
    founder:'Lynda Weinman, Bruce Heavin',
    imageLink:
    "https://miro.medium.com/v2/resize:fit:1200/1*tmD_elC_QhRU0Cag2cKoKA.jpeg",
    link: "https://www.linkedin.com/learning/",
    title: "LinkedIn Learning",
    description: "LinkedIn Learning adalah platform belajar online yang menawarkan kursus video dalam berbagai bidang, termasuk pemrograman dan pengembangan perangkat lunak.",
    isFavorite: false,
  ),
  DataSitus(
    founder:'Refsnes Data',
    imageLink:
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtCqp3QCdoG-_zvomLk9CD45g4nOFdLvc_Ano5MDjsrg&s",
    link: "https://www.w3schools.com/",
    title: "W3Schools",
    description: "W3Schools adalah sumber belajar online yang menyediakan tutorial interaktif, referensi, dan contoh kode dalam berbagai bahasa pemrograman dan teknologi web.",
    isFavorite: false,
  ),
  DataSitus(
    founder:'Mozilla Foundation',
    imageLink:
    "https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png",
    link: "https://developer.mozilla.org/en-US/",
    title: "MDN Web Docs",
    description: "MDN Web Docs adalah sumber belajar online yang menyediakan dokumentasi lengkap tentang teknologi web, termasuk HTML, CSS, dan JavaScript.",
    isFavorite: false,
  ),
];
