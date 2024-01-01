-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2023 at 10:21 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_learning_system (4)`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNumber` varchar(100) DEFAULT NULL,
  `IC` varchar(100) DEFAULT NULL,
  `Occupation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `UserName`, `Email`, `Password`, `ContactNumber`, `IC`, `Occupation`) VALUES
(1, 'Leong', 'a@gmail.com', 'Leong0719@', '0123456789', '040719010119', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `CommentID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `CourseName` varchar(100) DEFAULT NULL,
  `Content` varchar(100) DEFAULT NULL,
  `PostDate` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`CommentID`, `UserID`, `UserName`, `CourseName`, `Content`, `PostDate`) VALUES
(7, 14, 'Leong', 'JAVA', 'Hello World', '2023-12-28 03:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `ContactID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `ContactNumber` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Message` varchar(100) DEFAULT NULL,
  `ReplyStatus` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ContactID`, `UserID`, `UserName`, `ContactNumber`, `Email`, `Message`, `ReplyStatus`) VALUES
(15, 14, 'Leong', '0123456789', 'leong@gmail.com', 'Hello World', 'Replied');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseID` int NOT NULL,
  `CourseImage` longblob,
  `CourseName` varchar(100) DEFAULT NULL,
  `CoursePrice` int DEFAULT NULL,
  `CategoryID` int DEFAULT NULL,
  `CategoryName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseID`, `CourseImage`, `CourseName`, `CoursePrice`, `CategoryID`, `CategoryName`) VALUES
(30, 0x636f757273652d696d6167652f48544d4c2e706e67, 'HTML', 1220, 18, 'Frontend'),
(31, 0x636f757273652d696d6167652f4353532e706e67, 'CSS', 1200, 18, 'Frontend'),
(32, 0x636f757273652d696d6167652f4a532e706e67, 'JavaScript', 1000, 18, 'Frontend'),
(33, 0x636f757273652d696d6167652f52656163742e706e67, 'React', 2000, 18, 'Frontend'),
(34, 0x636f757273652d696d6167652f416e67756c61722e706e67, 'Angular', 1500, 18, 'Frontend'),
(35, 0x636f757273652d696d6167652f5675652e706e67, 'Vue.js', 2500, 18, 'Frontend'),
(36, 0x636f757273652d696d6167652f4e6f64656a732e706e67, 'Node.js', 2900, 19, 'Backend'),
(37, 0x636f757273652d696d6167652f446a616e676f2e706e67, 'Django', 3200, 19, 'Backend'),
(38, 0x636f757273652d696d6167652f466c61736b2e706e67, 'Flask', 3000, 19, 'Backend'),
(39, 0x636f757273652d696d6167652f525542592e706e67, 'Ruby', 2800, 19, 'Backend'),
(40, 0x636f757273652d696d6167652f537072696e672e706e67, 'Spring', 2500, 19, 'Backend'),
(41, 0x636f757273652d696d6167652f5048502e706e67, 'PHP', 2700, 19, 'Backend'),
(42, 0x636f757273652d696d6167652f53776966742e706e67, 'Swift', 3100, 21, 'IOS Development'),
(43, 0x636f757273652d696d6167652f4f626a6563746976652d632e706e67, 'Objective-C', 3200, 21, 'IOS Development'),
(44, 0x636f757273652d696d6167652f4a6176612e706e67, 'JAVA', 3400, 20, 'Android Development'),
(45, 0x636f757273652d696d6167652f4b6f746c696e2e706e67, 'Koltin', 3400, 20, 'Android Development'),
(46, 0x636f757273652d696d6167652f466c75747465722e706e67, 'Flutter', 3250, 20, 'Android Development'),
(47, 0x636f757273652d696d6167652f432b2b2e706e67, 'C++', 3400, 22, 'Desktop Application Development'),
(48, 0x636f757273652d696d6167652f4a6176612e706e67, 'JAVA', 3400, 22, 'Desktop Application Development'),
(49, 0x636f757273652d696d6167652f432073686172702e706e67, 'C#', 3150, 22, 'Desktop Application Development'),
(50, 0x636f757273652d696d6167652f507974686f6e2e706e67, 'Python', 3130, 23, 'Data Science and Analytics'),
(51, 0x636f757273652d696d6167652f522e706e67, 'R', 2990, 23, 'Data Science and Analytics'),
(52, 0x636f757273652d696d6167652f53514c2e706e67, 'SQL', 2300, 23, 'Data Science and Analytics'),
(53, 0x636f757273652d696d6167652f432e706e67, 'C', 3450, 24, 'Embedded System Development'),
(54, 0x636f757273652d696d6167652f432b2b2e706e67, 'C++', 3400, 24, 'Embedded System Development'),
(55, 0x636f757273652d696d6167652f507974686f6e2e706e67, 'Python', 3130, 24, 'Embedded System Development'),
(56, 0x636f757273652d696d6167652f507974686f6e2e706e67, 'Python', 3130, 25, 'Artificial Intelligence and Machine Learning'),
(57, 0x636f757273652d696d6167652f556e6974792e706e67, 'Unity', 3400, 26, 'Game Development'),
(58, 0x636f757273652d696d6167652f556e7265616c20456e67696e652e706e67, 'Unreal Engine', 3410, 26, 'Game Development'),
(59, 0x636f757273652d696d6167652f432e706e67, 'C', 3450, 27, 'Cybersecurity and Encryption'),
(60, 0x636f757273652d696d6167652f432b2b2e706e67, 'C++', 3400, 27, 'Cybersecurity and Encryption'),
(61, 0x636f757273652d696d6167652f507974686f6e2e706e67, 'Python', 3130, 27, 'Cybersecurity and Encryption'),
(62, 0x636f757273652d696d6167652f426173682e706e67, 'Bash', 2990, 28, 'Automation and Scripting'),
(63, 0x636f757273652d696d6167652f506f7765725368656c6c2e706e67, 'PowerShell', 3110, 28, 'Automation and Scripting');

-- --------------------------------------------------------

--
-- Table structure for table `coursecategory`
--

CREATE TABLE `coursecategory` (
  `CategoryID` int NOT NULL,
  `CategoryName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `coursecategory`
--

INSERT INTO `coursecategory` (`CategoryID`, `CategoryName`) VALUES
(18, 'Frontend'),
(19, 'Backend'),
(20, 'Android Development'),
(21, 'IOS Development'),
(22, 'Desktop Application Development'),
(23, 'Data Science and Analytics'),
(24, 'Embedded System Development'),
(25, 'Artificial Intelligence and Machine Learning'),
(26, 'Game Development'),
(27, 'Cybersecurity and Encryption'),
(28, 'Automation and Scripting');

-- --------------------------------------------------------

--
-- Table structure for table `coursedetail`
--

CREATE TABLE `coursedetail` (
  `CourseID` int DEFAULT NULL,
  `CourseImage` longblob,
  `CourseName` varchar(100) DEFAULT NULL,
  `CoursePrice` varchar(100) DEFAULT NULL,
  `CourseDescription` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CategoryID` int DEFAULT NULL,
  `CategoryName` varchar(100) DEFAULT NULL,
  `LecturerID` int DEFAULT NULL,
  `LecturerName` varchar(100) DEFAULT NULL,
  `LecturerQualification` int DEFAULT NULL,
  `StudyDuration` int DEFAULT NULL,
  `LearningPlatform` varchar(100) DEFAULT NULL,
  `LearningResult` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CourseOutline` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `coursedetail`
--

INSERT INTO `coursedetail` (`CourseID`, `CourseImage`, `CourseName`, `CoursePrice`, `CourseDescription`, `CategoryID`, `CategoryName`, `LecturerID`, `LecturerName`, `LecturerQualification`, `StudyDuration`, `LearningPlatform`, `LearningResult`, `CourseOutline`) VALUES
(30, 0x636f757273652d696d6167652f48544d4c2e706e67, 'HTML', '1220', 'HTML Essentials is a beginner-level course designed to introduce you to the fundamental building blocks of web development. In this course, you\'ll learn the basics of HTML, including tags, elements, and attributes, to create structured web pages. Through hands-on exercises, you\'ll master the creation of headings, paragraphs, lists, links, images, and tables. By the end of the course, you\'ll have the skills to construct static web pages and gain a foundational understanding of HTML for further learning in web development.', 18, 'Frontend', 18, 'Lauren Garcia', 10, 1, 'Google Meet', 'Understand the basic structure of HTML documents.', 'This four-week course introduces the basics of HTML, commencing with an overview of web structure and HTML syntax. Weeks two and three delve deeper into advanced HTML elements like links, multimedia embedding, forms, tables, and semantic markup. The final week covers responsive design principles and introduces CSS for styling web pages. Each week includes practical exercises and assignments to reinforce learning. Geared towards beginners without prior HTML knowledge and serves as a solid foundation for those pursuing web development.'),
(31, 0x636f757273652d696d6167652f4353532e706e67, 'CSS', '1200', 'CSS Essentials is an introductory course focusing on Cascading Style Sheets (CSS), the language used to style and design web pages. This course provides a foundational understanding of CSS properties, selectors, and styling techniques. Participants will learn how to format text, manipulate layouts, apply colors, and create engaging designs. Through practical exercises and projects, students will gain the skills needed to enhance the visual appeal and presentation of web content.', 18, 'Frontend', 18, 'Lauren Garcia', 10, 1, 'Google Meet', 'Understand the fundamentals of CSS and its role in web design.', 'his six-week course starts with an introduction to CSS, covering its purpose, syntax, and basic concepts. Weeks two and three focus on the box model, layout techniques including floats, flexbox, and grid, and implementing responsive design with media queries. Week four explores advanced styling techniques, including CSS preprocessors, gradients, shadows, and cross-browser compatibility. Week five delves into animations, transitions, and transformations, while the final week emphasizes project-based learning, web page optimization, and best practices in CSS. Designed for beginners with a basic understanding of HTML, this course offers hands-on exercises and a final project for practical application.'),
(32, 0x636f757273652d696d6167652f4a532e706e67, 'JavaScript', '1000', 'Introduction to JavaScript is a beginner-friendly course that introduces participants to the dynamic world of programming using JavaScript. This course covers the core concepts of JavaScript, such as variables, data types, loops, conditionals, functions, and objects. Through hands-on coding exercises and projects, students will gain practical experience in writing JavaScript code, manipulating the Document Object Model (DOM), handling events, and creating interactive web applications.', 18, 'Frontend', 18, 'Lauren Garcia', 10, 1, 'Google Meet', 'Understand the fundamental concepts of JavaScript.', 'This eight-week course covers fundamental JavaScript concepts, starting with basic syntax, variables, and control flow, progressing to working with arrays, objects, and manipulating the Document Object Model (DOM). Students learn event handling, functions, scope, closures, and asynchronous programming using promises and callbacks. Each week combines theoretical learning with practical exercises, leading up to a final project, offering participants hands-on experience in creating dynamic and interactive web pages. Suitable for beginners with a foundational understanding of HTML and CSS.'),
(33, 0x636f757273652d696d6167652f52656163742e706e67, 'React', '2000', 'React Essentials is a comprehensive course designed for individuals aiming to delve into front-end web development using React.js. This course focuses on teaching the fundamentals of React, including components, state management, props, JSX syntax, and handling events. Participants will learn how to build interactive and efficient user interfaces by creating reusable components and leveraging React\'s powerful features. Through practical projects and exercises, students will gain hands-on experience in developing modern web applications with React.', 18, 'Frontend', 15, 'Michael Lee', 11, 1, 'Zoom ', 'Understand the core concepts of React and its ecosystem.', 'This ten-week React course covers fundamental concepts in component-based architecture, starting with JSX and component creation. Weeks two and three delve into state management and lifecycle methods, progressing to React Router and Context API for handling application routing and global state. In the following weeks, students explore hooks, asynchronous operations, and integrating APIs into React applications. The final weeks emphasize industry best practices, debugging strategies, and testing methodologies. Practical projects and hands-on exercises are integrated throughout the course to solidify understanding and application of React concepts. Aimed at individuals with prior knowledge of HTML, CSS, and JavaScript, this course primes participants to develop dynamic and scalable React applications.'),
(34, 0x636f757273652d696d6167652f416e67756c61722e706e67, 'Angular', '1500', 'Angular Fundamentals is an immersive course tailored for individuals interested in mastering front-end web development with Angular. This course delves into the core concepts of Angular, covering topics such as components, modules, services, data binding, routing, and forms. Participants will learn how to create robust, single-page applications (SPAs) using Angular\'s powerful framework. Through practical exercises and projects, students will gain hands-on experience in building dynamic and responsive web applications.', 18, 'Frontend', 15, 'Lauren Garcia', 10, 1, 'Zoom ', 'Develop interactive and responsive web applications using Angular.', 'This comprehensive eight-week course provides a deep understanding of Angular, a popular framework for building dynamic web applications. The course begins with an introduction to Angular architecture, components, modules, and data binding. Weeks two and three focus on services, dependency injection, and HTTP client for handling data. Participants learn about routing and navigation in Angular applications in the following weeks. Weeks six and seven cover forms, reactive programming, and state management. The final weeks emphasize best practices, testing, and deployment strategies for Angular applications. Practical exercises and a final project ensure hands-on application of concepts. Aimed at individuals familiar with HTML, CSS, and JavaScript, this course equips participants to develop robust and scalable applications using Angular.'),
(35, 0x636f757273652d696d6167652f5675652e706e67, 'Vue.js', '2500', 'Vue.js Essentials is a dynamic course designed to equip participants with the foundational knowledge required for front-end web development using Vue.js. This course covers the essential concepts of Vue.js, including components, directives, data binding, computed properties, and lifecycle hooks. Students will learn to build interactive and reactive web interfaces efficiently. Through hands-on projects and practical exercises, participants will gain the skills to create responsive and maintainable web applications using Vue.js.', 18, 'Frontend', 17, 'Elyza Zuberg', 10, 2, 'Zoom', 'Discover the power of Vue.js and unleash your potential to develop modern and scalable web applications!', '10 weeks (short course duration).'),
(36, 0x636f757273652d696d6167652f4e6f64656a732e706e67, 'Node.js', '2900', 'Node.js Fundamentals is a comprehensive course focusing on server-side JavaScript development using Node.js. This course introduces participants to Node.js, covering topics such as event-driven architecture, asynchronous programming, modules, file system operations, web servers, and the npm ecosystem. Students will learn to build scalable and efficient backend applications using JavaScript. Through hands-on exercises and projects, participants will gain practical experience in creating server-side applications with Node.js.', 19, 'Backend', 17, 'Elyza Zuberg', 10, 2, 'Zoom', 'Gain expertise in server-side JavaScript development and harness the power of Node.js to create high-performing backend applications!', '10 weeks (short course duration).'),
(37, 0x636f757273652d696d6167652f446a616e676f2e706e67, 'Django', '3200', 'Django Web Development is a comprehensive course designed to introduce participants to web development using Django, a high-level Python web framework. This course covers the fundamentals of Django, including models, views, templates, forms, routing, and authentication. Students will learn to build dynamic web applications following the MVC (Model-View-Controller) architecture. Through practical projects and hands-on exercises, participants will gain proficiency in developing robust and scalable web applications with Django.', 19, 'Backend', 17, 'Elyza Zuberg', 10, 2, 'Google Meet', 'Master Django and embark on your journey to becoming a proficient web developer capable of building feature-rich web applications!', '10 weeks (short course duration).'),
(38, 0x636f757273652d696d6167652f466c61736b2e706e67, 'Flask', '3000', 'Flask Web Development is a focused course designed to introduce participants to web development using Flask, a lightweight and versatile Python web framework. This course provides an in-depth understanding of Flask\'s core concepts, including routing, templates, forms, database integration, and RESTful APIs. Students will learn to create web applications following a micro-framework approach. Through hands-on projects and practical exercises, participants will gain the skills needed to build flexible and scalable web applications using Flask.', 19, 'Backend', 17, 'Elyza Zuberg', 10, 2, 'Google Meet', 'Unlock the potential of Flask and dive into building powerful and efficient web applications with this comprehensive course!', '10 weeks (short course duration).'),
(39, 0x636f757273652d696d6167652f525542592e706e67, 'Ruby', '2800', 'Ruby Programming Fundamentals is an introductory course designed to acquaint participants with the fundamentals of the Ruby programming language. This course covers essential concepts such as variables, data types, control structures, functions, object-oriented programming (OOP), and working with Ruby\'s core libraries. Through practical exercises and coding projects, students will gain a solid foundation in Ruby programming, enabling them to write efficient and expressive code.', 19, 'Backend', 17, 'Elyza Zuberg', 10, 2, 'Zoom', 'Explore the elegance and power of Ruby programming and kickstart your journey into the world of versatile and dynamic coding!', '13 weeks (short course duration).'),
(40, 0x636f757273652d696d6167652f537072696e672e706e67, 'Spring', '2500', 'Spring Framework Essentials is a comprehensive course designed to introduce participants to the Spring Framework for Java application development. This course covers the core features of Spring, including dependency injection, aspect-oriented programming (AOP), Spring MVC, data access with Spring JDBC and Spring Data, security, and RESTful web services with Spring Boot. Participants will gain hands-on experience in building robust and scalable Java applications using Spring through practical exercises and projects.', 19, 'Backend', 16, 'Marcus Luke', 10, 2, 'Zoom', 'Master the Spring Framework and elevate your Java application development skills to create enterprise-grade applications efficiently and effectively!', '10 weeks (short course duration).'),
(41, 0x636f757273652d696d6167652f5048502e706e67, 'PHP', '2700', 'PHP Web Development Essentials is an introductory course designed to equip participants with fundamental skills in server-side web development using PHP. This course covers essential PHP concepts such as variables, data types, control structures, functions, working with databases (MySQL, etc.), form handling, sessions, and authentication. Through practical projects and hands-on exercises, students will gain proficiency in creating dynamic and interactive web applications with PHP.', 19, 'Backend', 16, 'Marcus Luke', 10, 2, 'Google Meet', 'Explore the versatility of PHP and learn to build dynamic and powerful web applications using this popular server-side scripting language!', '12 weeks (short course duration).'),
(42, 0x636f757273652d696d6167652f53776966742e706e67, 'Swift', '3100', 'Swift Programming Fundamentals is an introductory course tailored to provide participants with a solid foundation in the Swift programming language. This course covers essential Swift concepts including variables, data types, control flow, functions, optionals, classes, and structures. Through practical coding exercises and projects, students will gain proficiency in Swift, enabling them to build iOS, macOS, watchOS, and tvOS applications.', 21, 'IOS Development', 16, 'Marcus Luke', 10, 2, 'Zoom', 'Embark on your journey into Swift programming and pave the way for creating engaging and innovative applications across Apple\'s platforms!', '10 weeks (short course duration).'),
(43, 0x636f757273652d696d6167652f4f626a6563746976652d632e706e67, 'Objective-C', '3200', 'Objective-C Programming Essentials is a foundational course tailored to provide participants with a comprehensive understanding of the Objective-C programming language. This course covers fundamental concepts such as classes, objects, methods, memory management, protocols, and inheritance. Through practical coding exercises and projects, students will gain proficiency in Objective-C, empowering them to develop applications for iOS, macOS, and other Apple platforms.', 21, 'IOS Development', 16, 'Marcus Luke', 10, 2, 'Zoom', 'Dive into Objective-C and unlock the ability to build powerful and innovative applications across Apple\'s ecosystem!', '10 weeks (short course duration).'),
(44, 0x636f757273652d696d6167652f4a6176612e706e67, 'JAVA', '3400', 'Java Programming Fundamentals is an introductory course designed to provide participants with a solid foundation in the Java programming language. This course covers essential Java concepts including variables, data types, control flow, methods, object-oriented programming (OOP) principles, inheritance, polymorphism, exception handling, and basic input/output operations. Through practical coding exercises and projects, students will gain proficiency in Java, enabling them to develop robust and scalable applications.', 20, 'Android Development', 16, 'Marcus Luke', 10, 2, 'Google Meet', 'Embark on your journey to become a proficient Java developer capable of building versatile applications across various domains!', '10 weeks (short course duration).'),
(45, 0x636f757273652d696d6167652f4b6f746c696e2e706e67, 'Koltin', '3400', 'Kotlin Programming Essentials is a comprehensive course designed to introduce participants to the Kotlin programming language. This course covers fundamental Kotlin concepts, including variables, data types, control flow, functions, classes, inheritance, extension functions, null safety, and collections. Through hands-on coding exercises and projects, students will gain practical experience in Kotlin, enabling them to develop modern and concise applications for Android, backend, and multi-platform development.', 20, 'Android Development', 18, 'Lauren Garcia', 10, 2, 'Zoom', 'Discover the versatility of Kotlin and elevate your programming skills to develop efficient and powerful applications across different platforms!', '10 weeks (short course duration).'),
(46, 0x636f757273652d696d6167652f466c75747465722e706e67, 'Flutter', '3250', 'Flutter App Development Essentials is a hands-on course focused on teaching participants the fundamentals of building mobile applications using the Flutter framework. This course covers topics including widgets, layouts, navigation, state management, asynchronous programming, and integrating APIs. Through practical projects and coding exercises, students will gain proficiency in creating cross-platform applications for iOS and Android using a single codebase.', 20, 'Android Development', 18, 'Lauren Garcia', 10, 2, 'Zoom', 'Embark on your journey into Flutter and learn to craft beautiful and efficient mobile applications that run seamlessly across different platforms!', '12 weeks (short course duration).'),
(47, 0x636f757273652d696d6167652f432b2b2e706e67, 'C++', '3400', 'C++ Programming Fundamentals is a comprehensive course designed to provide participants with a strong foundation in the C++ programming language. This course covers essential C++ concepts including variables, data types, control structures, functions, classes, inheritance, polymorphism, templates, and memory management. Through practical coding exercises and projects, students will gain proficiency in C++, enabling them to develop efficient and high-performance applications.', 22, 'Desktop Application Development', 18, 'Lauren Garcia', 10, 2, 'Zoom', 'Equip yourself with the skills to develop robust and scalable applications in various domains!', '12 weeks (short course duration).'),
(48, 0x636f757273652d696d6167652f4a6176612e706e67, 'JAVA', '3400', 'Java Programming Fundamentals is an introductory course designed to provide participants with a solid foundation in the Java programming language. This course covers essential Java concepts including variables, data types, control flow, methods, object-oriented programming (OOP) principles, inheritance, polymorphism, exception handling, and basic input/output operations. Through practical coding exercises and projects, students will gain proficiency in Java, enabling them to develop robust and scalable applications.', 22, 'Desktop Application Development', 18, 'Lauren Garcia', 10, 2, 'Zoom', 'Embark on your journey to become a proficient Java developer capable of building versatile applications across various domains!', '12 weeks (short course duration).'),
(49, 0x636f757273652d696d6167652f432073686172702e706e67, 'C#', '3150', 'C# Programming Essentials is a comprehensive course designed to introduce participants to the C# programming language. This course covers fundamental C# concepts including variables, data types, control structures, methods, classes, inheritance, interfaces, exception handling, and working with collections. Through practical coding exercises and projects, students will gain proficiency in C#, enabling them to develop desktop, web, and mobile applications using the .NET framework.', 22, 'Desktop Application Development', 16, 'Marcus Luke', 10, 2, 'Zoom', 'Dive into the world of C# programming and unlock the ability to build powerful and versatile applications across various platforms!', '12 weeks (short course duration).'),
(50, 0x636f757273652d696d6167652f507974686f6e2e706e67, 'Python', '3130', 'Python Programming Fundamentals is an introductory course designed to provide participants with a solid understanding of the Python programming language. This course covers essential Python concepts such as variables, data types, control structures, functions, object-oriented programming (OOP), file handling, and working with libraries/modules. Through hands-on coding exercises and projects, students will gain practical experience in Python, enabling them to develop applications in various domains, including web development, data science, automation, and more.', 23, 'Data Science and Analytics', 16, 'Marcus Luke', 10, 2, 'Zoom', 'Unlock the versatility of this powerful programming language for solving real-world problems and creating innovative applications!', '10 weeks (short course duration).'),
(51, 0x636f757273652d696d6167652f522e706e67, 'R', '2990', 'R Programming for Data Analysis is an introductory course designed to familiarize participants with the R programming language for statistical computing and data analysis. This course covers fundamental concepts such as data types, data manipulation, data visualization, statistical analysis, and working with R packages. Through practical exercises and real-world projects, students will gain hands-on experience in using R to analyze data, create visualizations, perform statistical tests, and gain insights from data sets.', 23, 'Data Science and Analytics', 17, 'Elyza Zuberg', 10, 2, 'Zoom', 'Explore the capabilities of R programming and leverage its tools to analyze data and draw meaningful conclusions for various applications in research, business, and beyond!', '11 weeks (short course duration).'),
(52, 0x636f757273652d696d6167652f53514c2e706e67, 'SQL', '2300', 'SQL Fundamentals is a foundational course focused on Structured Query Language (SQL), essential for managing and querying relational databases. This course covers fundamental SQL concepts including database design, querying data using SELECT statements, filtering, sorting, aggregating data, joins, subqueries, and database manipulation using INSERT, UPDATE, DELETE statements. Through practical exercises and hands-on projects, participants will gain proficiency in writing SQL queries and performing database operations.', 23, 'Data Science and Analytics', 16, 'Marcus Luke', 10, 2, 'Zoom', 'Master SQL and unlock the ability to work with databases, retrieve valuable information, and manipulate data efficiently for various applications in business, software development, and data analysis!', '10 weeks (short course duration).'),
(53, 0x636f757273652d696d6167652f432e706e67, 'C', '3450', 'C Programming Essentials is an introductory course aimed at providing participants with a solid foundation in the C programming language. This course covers essential C concepts, including variables, data types, control structures, functions, arrays, pointers, and memory management. Through practical coding exercises and projects, students will gain a strong understanding of C programming, enabling them to develop efficient and robust software applications.', 24, 'Embedded System Development', 17, 'Elyza Zuberg', 10, 2, 'Google Meet', 'Explore the fundamental principles of C programming and gain the skills to create powerful and efficient applications across various domains!', '11 weeks (short course duration).'),
(54, 0x636f757273652d696d6167652f432b2b2e706e67, 'C++', '3400', 'C++ Programming Fundamentals is a comprehensive course designed to provide participants with a strong foundation in the C++ programming language. This course covers essential C++ concepts including variables, data types, control structures, functions, classes, inheritance, polymorphism, templates, and memory management. Through practical coding exercises and projects, students will gain proficiency in C++, enabling them to develop efficient and high-performance applications.', 24, 'Embedded System Development', 16, 'Marcus Luke', 10, 2, 'Zoom', 'Explore the power of C++ and equip yourself with the skills to develop robust and scalable applications in various domains!', '12 weeks (short course duration).'),
(55, 0x636f757273652d696d6167652f507974686f6e2e706e67, 'Python', '3130', 'HTML Essentials is a beginner-level course designed to introduce you to the fundamental building blocks of web development. In this course, you\'ll learn the basics of HTML, including tags, elements, and attributes, to create structured web pages. Through hands-on exercises, you\'ll master the creation of headings, paragraphs, lists, links, images, and tables. By the end of the course, you\'ll have the skills to construct static web pages and gain a foundational understanding of HTML for further learning in web development.', 24, 'Embedded System Development', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 0x636f757273652d696d6167652f507974686f6e2e706e67, 'Python', '3130', 'HTML Essentials is a beginner-level course designed to introduce you to the fundamental building blocks of web development. In this course, you\'ll learn the basics of HTML, including tags, elements, and attributes, to create structured web pages. Through hands-on exercises, you\'ll master the creation of headings, paragraphs, lists, links, images, and tables. By the end of the course, you\'ll have the skills to construct static web pages and gain a foundational understanding of HTML for further learning in web development.', 25, 'Artificial Intelligence and Machine Learning', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 0x636f757273652d696d6167652f556e6974792e706e67, 'Unity', '3400', 'HTML Essentials is a beginner-level course designed to introduce you to the fundamental building blocks of web development. In this course, you\'ll learn the basics of HTML, including tags, elements, and attributes, to create structured web pages. Through hands-on exercises, you\'ll master the creation of headings, paragraphs, lists, links, images, and tables. By the end of the course, you\'ll have the skills to construct static web pages and gain a foundational understanding of HTML for further learning in web development.', 26, 'Game Development', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 0x636f757273652d696d6167652f556e7265616c20456e67696e652e706e67, 'Unreal Engine', '3410', 'HTML Essentials is a beginner-level course designed to introduce you to the fundamental building blocks of web development. In this course, you\'ll learn the basics of HTML, including tags, elements, and attributes, to create structured web pages. Through hands-on exercises, you\'ll master the creation of headings, paragraphs, lists, links, images, and tables. By the end of the course, you\'ll have the skills to construct static web pages and gain a foundational understanding of HTML for further learning in web development.', 26, 'Game Development', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 0x636f757273652d696d6167652f432e706e67, 'C', '3450', 'HTML Essentials is a beginner-level course designed to introduce you to the fundamental building blocks of web development. In this course, you\'ll learn the basics of HTML, including tags, elements, and attributes, to create structured web pages. Through hands-on exercises, you\'ll master the creation of headings, paragraphs, lists, links, images, and tables. By the end of the course, you\'ll have the skills to construct static web pages and gain a foundational understanding of HTML for further learning in web development.', 27, 'Cybersecurity and Encryption', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 0x636f757273652d696d6167652f432b2b2e706e67, 'C++', '3400', 'HTML Essentials is a beginner-level course designed to introduce you to the fundamental building blocks of web development. In this course, you\'ll learn the basics of HTML, including tags, elements, and attributes, to create structured web pages. Through hands-on exercises, you\'ll master the creation of headings, paragraphs, lists, links, images, and tables. By the end of the course, you\'ll have the skills to construct static web pages and gain a foundational understanding of HTML for further learning in web development.', 27, 'Cybersecurity and Encryption', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 0x636f757273652d696d6167652f507974686f6e2e706e67, 'Python', '3130', 'HTML Essentials is a beginner-level course designed to introduce you to the fundamental building blocks of web development. In this course, you\'ll learn the basics of HTML, including tags, elements, and attributes, to create structured web pages. Through hands-on exercises, you\'ll master the creation of headings, paragraphs, lists, links, images, and tables. By the end of the course, you\'ll have the skills to construct static web pages and gain a foundational understanding of HTML for further learning in web development.', 27, 'Cybersecurity and Encryption', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 0x636f757273652d696d6167652f426173682e706e67, 'Bash', '2990', 'HTML Essentials is a beginner-level course designed to introduce you to the fundamental building blocks of web development. In this course, you\'ll learn the basics of HTML, including tags, elements, and attributes, to create structured web pages. Through hands-on exercises, you\'ll master the creation of headings, paragraphs, lists, links, images, and tables. By the end of the course, you\'ll have the skills to construct static web pages and gain a foundational understanding of HTML for further learning in web development.', 28, 'Automation and Scripting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 0x636f757273652d696d6167652f506f7765725368656c6c2e706e67, 'PowerShell', '3110', 'HTML Essentials is a beginner-level course designed to introduce you to the fundamental building blocks of web development. In this course, you\'ll learn the basics of HTML, including tags, elements, and attributes, to create structured web pages. Through hands-on exercises, you\'ll master the creation of headings, paragraphs, lists, links, images, and tables. By the end of the course, you\'ll have the skills to construct static web pages and gain a foundational understanding of HTML for further learning in web development.', 28, 'Automation and Scripting', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `ReplyID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `ContactNumber` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Message` varchar(100) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `ReplyMessage` varchar(100) DEFAULT NULL,
  `ReplyDate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`ReplyID`, `UserID`, `UserName`, `ContactNumber`, `Email`, `Message`, `Title`, `ReplyMessage`, `ReplyDate`) VALUES
(12, 14, 'Leong', '0123456789', 'leong@gmail.com', 'Hello World', 'Hello', 'Hello World', '2023-12-28 03:07:40'),
(13, 14, 'Leong', '0123456789', 'leong@gmail.com', 'Hello World', 'Hi', 'Good Day', '2023-12-28 03:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `LecturerID` int NOT NULL,
  `LecturerImage` longblob,
  `LecturerName` varchar(100) DEFAULT NULL,
  `LecturerQualification` int DEFAULT NULL,
  `CourseID` int DEFAULT NULL,
  `CourseName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`LecturerID`, `LecturerImage`, `LecturerName`, `LecturerQualification`, `CourseID`, `CourseName`) VALUES
(9, 0x6c656374757265722d696d6167652f4c656374757265722e6a7067, 'James Smith', 10, NULL, NULL),
(10, 0x6c656374757265722d696d6167652f4c65637475726572312e6a7067, 'Emily Johnson', 7, NULL, NULL),
(11, 0x6c656374757265722d696d6167652f4c656374757265722e6a7067, 'David Brown', 13, NULL, NULL),
(12, 0x6c656374757265722d696d6167652f4c656374757265722e6a7067, 'Samantha Clark', 9, NULL, NULL),
(13, 0x6c656374757265722d696d6167652f4c656374757265722e6a7067, 'Andrew Wilson', 14, NULL, NULL),
(14, 0x6c656374757265722d696d6167652f4c65637475726572312e6a7067, 'Jessica Martinez', 15, NULL, NULL),
(15, 0x6c656374757265722d696d6167652f4c65637475726572312e6a7067, 'Michael Lee', 11, 34, 'Angular'),
(16, 0x6c656374757265722d696d6167652f4c656374757265722e6a7067, 'Jennifer Davis', 6, NULL, NULL),
(17, 0x6c656374757265722d696d6167652f4c656374757265722e6a7067, 'Christopher Taylor', 16, NULL, NULL),
(18, 0x6c656374757265722d696d6167652f4c65637475726572312e6a7067, 'Lauren Garcia', 10, 31, 'CSS');

-- --------------------------------------------------------

--
-- Table structure for table `lecturerdetail`
--

CREATE TABLE `lecturerdetail` (
  `LecturerID` int DEFAULT NULL,
  `LecturerName` varchar(100) DEFAULT NULL,
  `Professional` varchar(100) DEFAULT NULL,
  `CourseID` int DEFAULT NULL,
  `CourseName` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Github` varchar(100) DEFAULT NULL,
  `Twitter` varchar(100) DEFAULT NULL,
  `Instagram` varchar(100) DEFAULT NULL,
  `Facebook` varchar(100) DEFAULT NULL,
  `LecturerQualification` int DEFAULT NULL,
  `LecturerDescription` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `LecturerEmail` varchar(100) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `Introduction` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lecturerdetail`
--

INSERT INTO `lecturerdetail` (`LecturerID`, `LecturerName`, `Professional`, `CourseID`, `CourseName`, `Country`, `Github`, `Twitter`, `Instagram`, `Facebook`, `LecturerQualification`, `LecturerDescription`, `LecturerEmail`, `Phone`, `Introduction`) VALUES
(9, 'James Smith', 'Cyber Security', NULL, NULL, 'United State', 'https://github.com/JAMESSMITH', 'https://twitter.com/JAMESSMITH', 'https://instagram.com/JAMESSMITH', 'https://facebook.com/JAMESSMITH', 10, 'James is an experienced cybersecurity specialist with a knack for simplifying complex IT concepts.', 'jamessmith@gmail.com', '+15551234567', 'Hello, I\'m James! I have over a decade of experience in IT, specializing in cybersecurity. My goal is to help my students understand complex concepts in a simple manner. Let\'s explore the world of technology together!'),
(10, 'Emily Johnson', 'Software Developer', NULL, NULL, 'Canada', 'https://github.com/EMILY', 'https://twitter.com/EMILY', 'https://instagram.com/EMILY', 'https://facebook.com/EMILY', 7, 'Emily is a coding enthusiast who loves guiding students through the world of programming and software development.', 'emily@gmail.com', ' +1 (555) 987-6543', 'Hi there, I\'m Emily! With a passion for programming and software development, I aim to guide my students through the exciting realm of coding. Let\'s write some incredible code!'),
(11, 'David Brown', 'Network Architecture', NULL, NULL, 'United Kingdom', 'https://github.com/DAVIDBROWN', 'https://twitter.com/DAVIDBROWN', 'https://instagram.com/DAVIDBROWN', 'https://facebook.com/DAVIDBROWN', 13, 'David\'s expertise lies in network architecture; he enjoys unraveling the intricacies of networks for his students.', 'davidbrown@gmail.com', '+442012345678', 'Greetings! I\'m David, an IT professional specializing in network architecture. I love unraveling the mysteries of networks and teaching others how to build robust systems.'),
(12, 'Samantha Clark', 'Database Manager', NULL, NULL, 'Australia', 'https://github.com/SAMANTHA', 'https://twitter.com/SAMANTHA', 'https://instagram.com/SAMANTHA', 'https://facebook.com/SAMANTHA', 9, 'Samantha specializes in database management and data analysis, passionate about uncovering insights from data.', 'samantha@gmail.com', '+15551234567', 'Hey, I\'m Samantha! My expertise lies in database management and data analysis. Let\'s dive into the world of data together and uncover its hidden insights!'),
(13, 'Andrew Wilson', 'IT Infrastructure', NULL, NULL, 'New Zealand', 'https://github.com/ANDREW', 'https://twitter.com/ANDREW', 'https://instagram.com/ANDREW', 'https://facebook.com/ANDREW', 14, 'Andrew focuses on cloud computing and IT infrastructure, guiding students through the landscape of cloud technologies.', 'andrew@gmail.com', ' +64 9 8765 4321', 'G\'day, I\'m Andrew! I specialize in cloud computing and IT infrastructure. I\'m here to guide you through the vast landscape of cloud technologies.'),
(14, 'Jessica Martinez', 'Cyber Security', NULL, NULL, 'Spain', 'https://github.com/JESSICA', 'https://twitter.com/JESSICA', 'https://instagram.com/JESSICA', 'https://facebook.com/JESSICA', 15, 'Jessica is passionate about cybersecurity and ethical hacking, eager to explore this field\'s challenges with her students.', 'jessica@gmail.com', '+34 91 234 5678', 'Hola! I\'m Jessica, passionate about cybersecurity and ethical hacking. Let\'s explore the fascinating world of cybersecurity and its challenges together!'),
(15, 'Michael Lee', ' IT Project Manager', 34, 'Angular', 'Singapore', 'https://github.com/MICHAEL', 'https://twitter.com/MICHAEL', 'https://instagram.com/MICHAEL', 'https://facebook.com/MICHAEL', 11, 'Michael specializes in IT project management, helping students navigate complexities in project execution.', 'michael@gmail.com', '+34 91 234 5678', 'Hi, I\'m Michael! I specialize in IT project management. Let\'s navigate the complexities of project execution and delivery in the IT world.'),
(16, 'Jennifer Davis', 'IT strategy and consultancy', NULL, NULL, 'Germany', 'https://github.com/JENNIFER', 'https://twitter.com/JENNIFER', 'https://instagram.com/JENNIFER', 'https://facebook.com/JENNIFER', 6, 'Jennifer is an expert in IT strategy and consultancy, aiding students in devising strategic IT plans.', 'jennifer@gmail.com', '+49 30 1234567', 'Guten Tag! I\'m Jennifer, an expert in IT strategy and consultancy. Let\'s devise strategic plans to tackle IT challenges together.'),
(17, 'Christopher Taylor', 'Software Engineering', NULL, NULL, 'France', 'https://github.com/CHRISTOPHER', 'https://twitter.com/CHRISTOPHER', 'https://instagram.com/CHRISTOPHER', 'https://facebook.com/CHRISTOPHER', 16, 'Christopher specializes in software engineering, guiding students in crafting efficient software solutions.', 'christopher@gmail.com', '+33 1 8765 4321', 'Bonjour! I\'m Christopher, specializing in software engineering. Let\'s embark on a journey to craft efficient and elegant software solutions!'),
(18, 'Lauren Garcia', 'Web Developer', 31, 'CSS', 'Mexico', 'https://github.com/LAUREN', 'https://twitter.com/LAUREN', 'https://instagram.com/LAUREN', 'https://facebook.com/LAUREN', 10, 'Lauren is passionate about web development and design, keen on creating stunning and functional websites with her students.', 'lauren@gmail.com', '+52 55 1234 5678', '¡Hola! I\'m Lauren, passionate about web development and design. Let\'s create stunning and functional websites together!');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `CartID` int DEFAULT NULL,
  `CourseID` int DEFAULT NULL,
  `CourseName` varchar(100) DEFAULT NULL,
  `CoursePrice` varchar(100) DEFAULT NULL,
  `OrderDate` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `UserID`, `CartID`, `CourseID`, `CourseName`, `CoursePrice`, `OrderDate`) VALUES
(15, 14, 19, 30, 'HTML', '1220', '2023-12-27'),
(16, 14, 20, 41, 'PHP', '2700', '2023-12-27'),
(17, 14, 21, 47, 'C++', '3400', '2023-12-27'),
(18, 14, 22, 30, 'HTML', '1220', '2023-12-28');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `QuizID` int NOT NULL,
  `QuizImage` longblob,
  `QuizName` varchar(100) DEFAULT NULL,
  `CategoryID` int DEFAULT NULL,
  `CategoryName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`QuizID`, `QuizImage`, `QuizName`, `CategoryID`, `CategoryName`) VALUES
(12, 0x7175697a2d696d6167652f48544d4c2e706e67, 'HTML', 7, 'Frontend'),
(13, 0x7175697a2d696d6167652f4353532e706e67, 'CSS', 7, 'Frontend'),
(14, 0x7175697a2d696d6167652f4a532e706e67, 'JavaScript', 7, 'Frontend'),
(15, 0x7175697a2d696d6167652f52656163742e706e67, 'React', 7, 'Frontend'),
(16, 0x7175697a2d696d6167652f416e67756c61722e706e67, 'Angular', 7, 'Frontend'),
(17, 0x7175697a2d696d6167652f5675652e706e67, 'Vue.js', 7, 'Frontend'),
(18, 0x7175697a2d696d6167652f4e6f64656a732e706e67, 'Node.js', 8, 'Backend'),
(19, 0x7175697a2d696d6167652f446a616e676f2e706e67, 'Django', 8, 'Backend'),
(20, 0x7175697a2d696d6167652f525542592e706e67, 'Ruby', 8, 'Backend'),
(21, 0x7175697a2d696d6167652f537072696e672e706e67, 'Spring ', 8, 'Backend'),
(22, 0x7175697a2d696d6167652f5048502e706e67, 'PHP', 8, 'Backend');

-- --------------------------------------------------------

--
-- Table structure for table `quizcategory`
--

CREATE TABLE `quizcategory` (
  `CategoryID` int NOT NULL,
  `CategoryName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `quizcategory`
--

INSERT INTO `quizcategory` (`CategoryID`, `CategoryName`) VALUES
(7, 'Frontend'),
(8, 'Backend');

-- --------------------------------------------------------

--
-- Table structure for table `quizquestion`
--

CREATE TABLE `quizquestion` (
  `QuizID` int DEFAULT NULL,
  `QuestionID` int NOT NULL,
  `QuestionOne` varchar(100) DEFAULT NULL,
  `OptOne1` varchar(100) DEFAULT NULL,
  `OptOne2` varchar(100) DEFAULT NULL,
  `OptOne3` varchar(100) DEFAULT NULL,
  `AnsOne` varchar(100) DEFAULT NULL,
  `QuestionTwo` varchar(100) DEFAULT NULL,
  `OptTwo1` varchar(100) DEFAULT NULL,
  `OptTwo2` varchar(100) DEFAULT NULL,
  `OptTwo3` varchar(100) DEFAULT NULL,
  `AnsTwo` varchar(100) DEFAULT NULL,
  `QuestionThree` varchar(100) DEFAULT NULL,
  `OptThree1` varchar(100) DEFAULT NULL,
  `OptThree2` varchar(100) DEFAULT NULL,
  `OptThree3` varchar(100) DEFAULT NULL,
  `AnsThree` varchar(100) DEFAULT NULL,
  `QuestionFour` varchar(100) DEFAULT NULL,
  `OptFour1` varchar(100) DEFAULT NULL,
  `OptFour2` varchar(100) DEFAULT NULL,
  `OptFour3` varchar(100) DEFAULT NULL,
  `AnsFour` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `quizquestion`
--

INSERT INTO `quizquestion` (`QuizID`, `QuestionID`, `QuestionOne`, `OptOne1`, `OptOne2`, `OptOne3`, `AnsOne`, `QuestionTwo`, `OptTwo1`, `OptTwo2`, `OptTwo3`, `AnsTwo`, `QuestionThree`, `OptThree1`, `OptThree2`, `OptThree3`, `AnsThree`, `QuestionFour`, `OptFour1`, `OptFour2`, `OptFour3`, `AnsFour`) VALUES
(12, 2, 'What does HTML stand for?', 'Hyperlinks and Text Manipulation Language', 'High Tech Markup Language\r\n', 'Home Tool Markup Language', 'Hyper Text Markup Language', 'What is HTML used for?', 'Defining the appearance and style of websites', 'Controlling website interactions and user input', 'Implementing server-side logic for websites', 'Structuring and marking up web page content', 'What are HTML elements made up of?', 'Tags and mathematical formulas', 'Links and tables', 'Styles and functionalities', 'Tags and attributes', 'Which tag is used to define an unordered list in HTML?', '<ol>', '<li>', '<dl>', ' <ul>'),
(13, 3, 'What does the \"C\" in CSS stand for?', 'Computer', 'Creative', 'Colorful', 'Cascading', 'Which CSS property is used to change the text color of an element?', 'font-color', 'text-color', 'text-style', 'color', 'Which unit of measurement in CSS is relative to the font size of the root element?', 'Pixels (px)', 'Points (pt)', 'Percentage (%)', 'Em', 'How can you link an external CSS file to an HTML document?', 'Using the <style> tag', 'Using the <css> tag', 'Using the <script> tag', 'Using the link tag with the rel attribute set to \"stylesheet\"'),
(14, 4, 'Which of the following is not a JavaScript data type?', 'String', 'Boolean', 'Number', 'Character', 'What keyword is used to declare a variable in JavaScript?', 'int', 'string', 'variable', 'var', 'What does DOM stand for in the context of JavaScript?', 'Data Object Mode', 'Document Oriented Markup', 'Display Object Management', 'Document Object Model', 'Which function is used to print something in the console in JavaScript?', 'print()', 'display()', 'log()', 'console.log()'),
(15, 5, 'What is React?', 'A programming language', 'An operating system', 'A database management system', 'A JavaScript library for building user interfaces', 'Which method is used to initialize state in a React component?', 'setState()', 'initializeState()', 'getInitialState()', 'constructor()', 'What is JSX in React?', 'JavaScript Extension', 'JavaScript Execution', 'JavaScript Expressions', 'JavaScript XML', 'What does a React component render?', 'HTML only', 'JavaScript only', 'JSX only', 'JSX and HTML'),
(16, 6, 'What is Angular?', 'A programming language', 'A JavaScript library for building user interfaces', 'A database management system', 'A TypeScript-based framework for building web applications', 'Which command is used to create a new Angular project using Angular CLI (Command Line Interface)?', 'create-angular', 'new-angular-project', 'angular-create', 'ng new', 'In Angular, what is used to handle user input and update the view?', 'Services', 'Directives', 'Modules', 'Components', 'Which decorator is used to define a component in Angular?', '@Directive', '@Module', '@Service', '@Component'),
(17, 7, 'What is Vue.js?', 'A programming language', 'A database management system', 'A TypeScript-based framework for building web applications', 'A JavaScript library for building user interfaces', 'Which directive is used to bind data to an HTML attribute in Vue.js?', 'v-model', 'v-on', 'v-show', 'v-bind', 'What is the Vue instance called in Vue.js?', 'Component', 'Object', 'VueInstance', 'ViewModel', 'Which lifecycle hook is called after a Vue instance has been destroyed?', 'beforeDestroy()', 'afterDestroy()', 'end()', 'destroyed()'),
(18, 8, 'Which engine is used by Node.js to execute JavaScript code?', 'SpiderMonkey', 'Chakra', 'Rhino', 'V8', 'Which package manager is commonly used with Node.js?', 'pip', 'composer', 'yarn', 'npm (Node Package Manager)', 'What is the primary use of Node.js?', 'Front-end development', 'Database management', 'Mobile app development', 'Back-end development', 'Which of the following is NOT a core module in Node.js?', ' fs (File System)', 'http (HTTP)', 'path (Path)', 'serve (Server)'),
(19, 9, 'What is Django?', 'A programming language', 'A JavaScript library', 'A database management system', 'A high-level Python web framework', 'Which programming language is primarily used in Django development?', 'JavaScript', 'Ruby', 'PHP', 'Python', 'What is the purpose of Django ORM?', 'Object-Request Module for handling HTTP requests', 'Object-Rendering Model for front-end design', 'Object-Resource Management for server-side processes', 'Object-Relational Mapping to simplify database interactions', 'Which command is used to create a new Django project?', 'initdjango', 'newproject', 'createdjango', 'startproject'),
(20, 10, 'What is Ruby?', 'A database management system', 'A front-end framework', 'A JavaScript library', 'A programming language', 'Which Ruby framework is used for web development?', 'RubyBridge', 'RubyWeb', 'RubyWebb', 'Ruby Rails', 'What is the file extension for Ruby files?', '.ru', '.ruby', '.ryb', '.rb', 'What is a Ruby gem?', 'A precious stone found in Ruby programming', 'A specific syntax feature in Ruby', 'A virtual environment for Ruby projects', 'A package or library in Ruby'),
(21, 11, 'What is Spring in the context of Java development?', 'A programming language', 'An integrated development environment (IDE)', 'A database management system', 'A lightweight Java framework for building enterprise-level applications', 'Which programming paradigm does the Spring Framework primarily support?', 'Functional Programming (FP)', 'Aspect-Oriented Programming (AOP)', 'Procedural Programming (PP)', 'Object-Oriented Programming (OOP)', 'Which module of the Spring Framework focuses on handling data access in Java applications?', 'Spring Web', 'Spring Core', 'Spring Security', 'Spring Data', 'Which Spring module provides comprehensive support for building RESTful web services in Java?', 'Spring AOP', 'Spring ORM', 'Spring Boot', 'Spring MVC'),
(22, 12, 'What does PHP stand for?', 'Personal Hypertext Processor', 'Preprocessed Hypertext Pages', 'Private Home Page', 'PHP: Hypertext Preprocessor', 'Which symbol is used to denote the start of a PHP code block?', '<?', '<script>', '<?=', '<?php', 'What is a session in PHP?', 'A client-side storage mechanism to store sensitive information', 'A method to define global variables in PHP scripts', 'An encryption technique used for securing PHP files', 'A server-side storage mechanism to persist user data across multiple requests', 'Which function is used to establish a connection to a MySQL database in PHP?', 'connect()', 'open_connection()', 'mysql_open()', 'mysqli_connect()');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `CartID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `CourseID` int DEFAULT NULL,
  `CourseName` varchar(100) DEFAULT NULL,
  `CategoryName` varchar(100) DEFAULT NULL,
  `CoursePrice` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userhistory`
--

CREATE TABLE `userhistory` (
  `OrderID` int DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  `InvoiceID` int NOT NULL,
  `CourseID` int DEFAULT NULL,
  `CourseName` varchar(100) DEFAULT NULL,
  `OrderDate` varchar(100) DEFAULT NULL,
  `UserImage` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE `userprofile` (
  `ProfileID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `CollegeName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `About` varchar(100) DEFAULT NULL,
  `UserImage` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userresetpassword`
--

CREATE TABLE `userresetpassword` (
  `ResetID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `NewPassword` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `ResetDate` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userresume`
--

CREATE TABLE `userresume` (
  `ResumeID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `Experience` varchar(100) DEFAULT NULL,
  `Education` varchar(100) DEFAULT NULL,
  `Skill` varchar(100) DEFAULT NULL,
  `Language_` varchar(100) DEFAULT NULL,
  `UserImage` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `PasswordHash` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `ContactNumber` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `UserName`, `PasswordHash`, `Email`, `ContactNumber`) VALUES
(14, 'Leong', 'Leong0719@', 'leong@gmail.com', '0123456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`CommentID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ContactID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `coursecategory`
--
ALTER TABLE `coursecategory`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `coursedetail`
--
ALTER TABLE `coursedetail`
  ADD KEY `LecturerID` (`LecturerID`),
  ADD KEY `CourseID` (`CourseID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`ReplyID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`LecturerID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `lecturerdetail`
--
ALTER TABLE `lecturerdetail`
  ADD KEY `LecturerID` (`LecturerID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`QuizID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `quizcategory`
--
ALTER TABLE `quizcategory`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `quizquestion`
--
ALTER TABLE `quizquestion`
  ADD PRIMARY KEY (`QuestionID`),
  ADD KEY `QuizID` (`QuizID`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`CartID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `userhistory`
--
ALTER TABLE `userhistory`
  ADD PRIMARY KEY (`InvoiceID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD PRIMARY KEY (`ProfileID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `userresetpassword`
--
ALTER TABLE `userresetpassword`
  ADD PRIMARY KEY (`ResetID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `userresume`
--
ALTER TABLE `userresume`
  ADD PRIMARY KEY (`ResumeID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `CommentID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `ContactID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `CourseID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `coursecategory`
--
ALTER TABLE `coursecategory`
  MODIFY `CategoryID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `ReplyID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `LecturerID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `QuizID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `quizcategory`
--
ALTER TABLE `quizcategory`
  MODIFY `CategoryID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quizquestion`
--
ALTER TABLE `quizquestion`
  MODIFY `QuestionID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  MODIFY `CartID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `userhistory`
--
ALTER TABLE `userhistory`
  MODIFY `InvoiceID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userprofile`
--
ALTER TABLE `userprofile`
  MODIFY `ProfileID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userresetpassword`
--
ALTER TABLE `userresetpassword`
  MODIFY `ResetID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `userresume`
--
ALTER TABLE `userresume`
  MODIFY `ResumeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `coursecategory` (`CategoryID`);

--
-- Constraints for table `coursedetail`
--
ALTER TABLE `coursedetail`
  ADD CONSTRAINT `coursedetail_ibfk_1` FOREIGN KEY (`LecturerID`) REFERENCES `lecturer` (`LecturerID`),
  ADD CONSTRAINT `coursedetail_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`),
  ADD CONSTRAINT `coursedetail_ibfk_3` FOREIGN KEY (`CategoryID`) REFERENCES `coursecategory` (`CategoryID`);

--
-- Constraints for table `email`
--
ALTER TABLE `email`
  ADD CONSTRAINT `email_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD CONSTRAINT `lecturer_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`);

--
-- Constraints for table `lecturerdetail`
--
ALTER TABLE `lecturerdetail`
  ADD CONSTRAINT `lecturerdetail_ibfk_1` FOREIGN KEY (`LecturerID`) REFERENCES `lecturer` (`LecturerID`),
  ADD CONSTRAINT `lecturerdetail_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`);

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `quizcategory` (`CategoryID`);

--
-- Constraints for table `quizquestion`
--
ALTER TABLE `quizquestion`
  ADD CONSTRAINT `quizquestion_ibfk_1` FOREIGN KEY (`QuizID`) REFERENCES `quiz` (`QuizID`);

--
-- Constraints for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD CONSTRAINT `shoppingcart_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `shoppingcart_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`);

--
-- Constraints for table `userhistory`
--
ALTER TABLE `userhistory`
  ADD CONSTRAINT `userhistory_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `userhistory_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `userhistory_ibfk_3` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`);

--
-- Constraints for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD CONSTRAINT `userprofile_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `userresetpassword`
--
ALTER TABLE `userresetpassword`
  ADD CONSTRAINT `userresetpassword_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `userresume`
--
ALTER TABLE `userresume`
  ADD CONSTRAINT `userresume_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
