import 'package:mdsite/app/data/models/mdcontent.dart';

// list content
late List<MdContent> listContent;

// your domainname eg; https://example.com
String hostURL = const String.fromEnvironment('HOST');

// TODO : Basic SEO
const SEO_TITLE = 'Anuchit\'s technology blog';
const SEO_AUTHOR = 'Anuchit Chalothorn';
const SEO_DESCRIPTION =
    'Stay up to date with the latest news, tips, and trends in technology, software development, and mobile application development. Our web blog covers everything from coding best practices to app design, development, and deployment strategies. Join our community of tech enthusiasts today!';
const SEO_OG_IMAGE = 'https://blog.redlinesoft.net/assets/images/1182518.jpg';
const SEO_TWITTER_IMAGE =
    'https://blog.redlinesoft.net/assets/images/1182518.jpg';
