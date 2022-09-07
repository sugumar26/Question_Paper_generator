-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 02:18 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` varchar(500) NOT NULL,
  `difficulty` enum('Remembering','Understanding','Applying','Analyzing','Evaluating','Creating') NOT NULL,
  `marks` int(10) NOT NULL,
  `unit` int(11) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `semester` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `year` enum('I','II','III','IV') NOT NULL,
  `code` varchar(10) NOT NULL,
  `co` enum('CO1','CO2','CO3','CO4','CO5','CO6') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `difficulty`, `marks`, `unit`, `subject`, `semester`, `year`, `code`, `co`) VALUES
(1, 'List any four common browsers.', 'Remembering', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(2, 'Define URI.', 'Remembering', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(3, 'State the use of web server logs and list the contents of a message\r\nlog', 'Understanding', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(4, 'List the different basic protocols used in Internet. ', 'Remembering', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(5, 'What do you mean by Relative URLs?', 'Remembering', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(6, 'Write the functions of a Web Server', 'Understanding', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(7, 'Explain the way in which a DNS server resolves addresses.', 'Evaluating', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(8, 'State the uses of Internet Protocol.', 'Understanding', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(9, 'Write short notes on basic Internet protocols.', 'Understanding', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(10, 'List and explain the three flavors of HTML. ', 'Remembering', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(11, 'State the function of DNS and the protocol used.', 'Applying', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(12, 'List and explain any two HTML elements.', 'Remembering', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(13, 'Create two rows of horizontal frames using HTML frames.', 'Creating', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(14, 'Write HTML code to display an image. ', 'Applying', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(15, 'How will you create a password field in a HTML form? ', 'Analyzing', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(16, 'Write HTML code to create the following table,\r\nW X\r\nY Z\r\n', 'Creating', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(17, 'Differentiate HTML and XHTML.', 'Analyzing', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(18, 'Explain canvas in HTML.', 'Evaluating', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(19, 'Choose the syntax to display the following statement\r\n“I am learning Web Programming”', 'Evaluating', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(20, 'Identify how a scripting language differs from HTML?', 'Analyzing', 2, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(21, 'Give the syntax of a CSS rule.', 'Understanding', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(22, 'Mention the need for cascading style sheets. ', 'Applying', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(23, 'Give example for inline style sheet', 'Understanding', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(24, 'How will you include CSS in a web site?', 'Analyzing', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(25, 'Give some advantages of using Cascading Style Sheets', 'Understanding', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(26, 'How external style sheet is useful in web page design?', 'Analyzing', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(27, 'Write short notes on text properties in CSS with suitable example.', 'Remembering', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(28, 'What is Normal Flow Box Layout in CSS?', 'Remembering', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(29, 'List the two forms of style rules with an example.', 'Remembering', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(30, 'What is meant by DHTML?', 'Remembering', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(31, 'List the ways of positioning an element within a browser window.', 'Remembering', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(32, 'What is a JavaScript statement? Give an example.', 'Remembering', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(33, 'Explain array creation in JavaScript with example.', 'Understanding', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(34, 'List the different methods defined in document and window object\r\nof JavaScript.', 'Analyzing', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(35, 'List and explain any two JavaScript built in objects.', 'Evaluating', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(36, 'State the types of JavaScript statements with examples.', 'Applying', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(37, 'Write the JavaScript to print “Good Day” using IF-ELSE condition.', 'Evaluating', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(38, 'Write code to return the full URL of a document.', 'Creating', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(39, 'Compile the limitations of CSS.', 'Creating', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(40, 'Apply CSS to a web page with the following requirements\r\n(i) Add a background image of a submarine.\r\n(ii) Set a color to the span elements (different color for each\r\nclass)', 'Applying', 2, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(41, 'Define host objects.', 'Remembering', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(42, 'List the types of event listeners in DOM2.', 'Remembering', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(43, 'Assess Event Bubbling and Event Capturing.', 'Evaluating', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(44, 'What is meant by intrinsic event handling?', 'Remembering', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(45, 'List and explain any four HTML intrinsic event attributes.', 'Understanding', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(46, 'Evaluate the various levels of DOM.', 'Evaluating', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(47, 'Examine the usage of DOM style property.', 'Analyzing', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(48, 'List some of the window object properties.', 'Analyzing', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(49, 'Compose any two mouse events.', 'Creating', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(50, 'Discuss any two keyboard events.', 'Creating', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(51, 'Differentiate Client Side Scripting from Server Side Scripting.', 'Analyzing', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(52, 'Write a short note on java servlet life cycle.', 'Applying', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(53, 'List the different life cycle methods of Java Servlets.', 'Remembering', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(54, 'What is a cookie?', 'Remembering', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(55, 'What is the purpose of cookies?', 'Remembering', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(56, 'Write the purpose of URL rewriting.', 'Understanding', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(57, 'How is session tracking achieved by URL rewriting?', 'Applying', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(58, 'State the use of ServletContext object. ', 'Understanding', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(59, 'Explain in brief the interaction between a web server and a servlet.', 'Understanding', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(60, 'Identify the difference between get request and post request type.', 'Applying', 2, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(61, 'Give the advantages of using JSP for server side programming', 'Understanding', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(62, 'Write two basic differences between JSP and servlet.', 'Analyzing', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(63, 'List the types of directives in JSP.', 'Remembering', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(64, 'Explain in brief about Java Scriplet.', 'Understanding', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(65, 'Display current date using Java Scriplet.', 'Creating', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(66, 'What is MVC paradigm?', 'Remembering', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(67, 'Write short notes on some implicit objects in JSP.', 'Applying', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(68, 'Identify the steps involved in JSP.', 'Applying', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(69, 'Assess the JSP elements?', 'Evaluating', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(70, 'Explain JSTL? ', 'Evaluating', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(71, 'What is the purpose of namespace? ', 'Remembering', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(72, 'What is meant by XML namespace?', 'Remembering', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(73, 'Define DTD.', 'Understanding', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(74, 'What is an XPATH?', 'Remembering', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(75, 'List the advantages of XPATH.', 'Applying', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(76, 'How is XML parsing done with SAX?', 'Analyzing', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(77, 'Compare DOM and SAX in XML processing.', 'Analyzing', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(78, 'What does XSLT mean?', 'Remembering', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(79, 'What is the purpose of XSLT?', 'Understanding', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(80, 'Discuss CDATA and PCDATA.', 'Creating', 2, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(81, 'Explain AJAX.', 'Evaluating', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(82, 'Identify the advantages of AJAX.', 'Applying', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(83, 'Analyze the disadvantages of AJAX. ', 'Analyzing', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(84, 'Identify the technologies used by AJAX', 'Applying', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(85, 'List all the features of AJAX.', 'Analyzing', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(86, 'Compare AJAX and JavaScript?', 'Evaluating', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(87, 'Analyze where AJAX cannot be used?', 'Analyzing', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(88, 'Create an AJAX object.\r\n', 'Creating', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(89, 'What is web service?', 'Remembering', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(90, 'Why do you want to describe a Web Service?', 'Remembering', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(91, 'Mention some of the disadvantages of Web Service.', 'Understanding', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(92, 'List some examples of web services.', 'Remembering', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(93, 'Define serialization.', 'Understanding', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(94, 'List the basic concepts behind JAX-RPC technology.', 'Remembering', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(95, 'What is UDDI?', 'Remembering', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(96, 'Explain the term XML Schema.', 'Understanding', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(97, 'What is the purpose of XML schema?', 'Remembering', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(98, 'Define the need for SOAP.', 'Understanding', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(99, 'State the significance of a WSDL document. Give some uses of\r\nWSDL.', 'Applying', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(100, 'Give an example of a web service registry and its function.', 'Creating', 2, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(101, 'Explain TCP/IP in detail.', 'Understanding', 8, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(102, 'Explain in detail the working of the TCP/IP Internet Protocols\r\n', 'Understanding', 8, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(103, 'Explain in detail the working of the HTTP Internet Protocols.', 'Understanding', 8, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(104, 'List and explain any four HTML elements in detail.', 'Remembering', 8, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(105, 'State the types of lists supported by HTML and explain them in\r\ndetail.', 'Remembering', 8, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(106, 'Explain the capabilities of web client and web server', 'Analyzing', 8, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(107, 'Write and explain HTTP request message format. ', 'Analyzing', 8, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(108, 'Explain the use of relative URL’s with an example', 'Applying', 8, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(109, 'Explain how tables can be inserted into a HTML document with\r\nan example.', 'Applying', 8, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(110, 'List any two differences between HTML respects to elements\r\nand XHTML with Also explain about the XH', 'Remembering', 8, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(111, 'Discuss on any four HTTP request methods. ', 'Remembering', 8, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(112, 'Explain in detail the functions of a web server', 'Applying', 8, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(113, 'Give the structure of HTTP request and response messages. ', 'Applying', 8, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(114, ' Give the HTTP request message structure and explain it in\r\ndetail.', 'Evaluating', 8, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(115, 'List and explain the steps involved in a web based client\r\nserver communication.', 'Evaluating', 8, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(116, 'Explain the most significant HTML elements in detail.', 'Evaluating', 8, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(117, 'Explain the way in which data can be presented in a tabular\r\nform using HTML.', 'Evaluating', 8, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(118, 'Discuss about JavaScript debugging', 'Analyzing', 8, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(119, ' Explain in detail CSS border and CSS outline. ', 'Analyzing', 8, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(120, ' Explain any eight CSS text properties.', 'Remembering', 8, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(121, 'Discuss JavaScript Array object in detail. ', 'Remembering', 8, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(122, 'List and explain in detail various selector strings', 'Understanding', 8, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(123, 'Explain the features of cascading style sheets.', 'Understanding', 8, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(124, 'Write a CSS which adds background images and indentation.', 'Understanding', 8, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(125, 'Explain external style sheet with an example.', 'Understanding', 8, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(126, 'Explain in detail the CSS Box model in detail', 'Applying', 8, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(127, 'List and explain the various positioning schemes in detail. ', 'Applying', 8, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(128, 'State and explain the types of statements in JavaScript.', 'Analyzing', 8, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(129, 'Explain how functions can be written in JavaScript with an\r\nexample.', 'Analyzing', 8, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(130, 'Explain the JavaScript array handling and array methods. ', 'Analyzing', 8, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(131, 'Explain the following JavaScript objects. \r\na. RegExp\r\nb. Math\r\n', 'Analyzing', 8, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(132, 'Write JavaScript to find sum of first ‘n’ even numbers and\r\ndisplay the result. Get the value of ‘n’', 'Creating', 8, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(133, 'Write JavaScript to find factorial of a given number. ', 'Creating', 8, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(134, 'Explain the way in which JavaScript handles arrays with\r\nexample', 'Evaluating', 8, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(135, 'Explain how local and global functions can be written using\r\nJavaScript.', 'Evaluating', 8, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(136, 'Explain about the document tree in detail.', 'Understanding', 8, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(137, 'Explain DOM event handling in detail.', 'Understanding', 8, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(138, 'List and explain the various types of document nodes. ', 'Understanding', 8, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(139, 'Explain in detail about event object and event listeners with\r\nan example.', 'Understanding', 8, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(140, 'Explain about architecture of servlet. ', 'Analyzing', 8, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(141, 'Explain the purpose of the following DOM method and\r\nproperties, \r\na. get Element By Id\r\nb. create Element\r\nc. create Text Node\r\nd. append child\r\ne. parent Node', 'Analyzing', 8, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(142, 'Write a code for creating cookies with name of person and secret code at the server, after getting these details from client using HTML form. How these details at the server\r\nside using HTTP servlet are displayed?', 'Analyzing', 8, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(143, 'Write a code to display the current and yesterday’s gold rate\r\nusing session object.', 'Analyzing', 8, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(144, 'Write a client server JSP program to find simple interest and\r\ndisplay the result in the client', 'Creating', 8, 4, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(145, 'Write about the JSP tag libraries.', 'Creating', 8, 4, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(146, 'Explain the role of XML name spaces with examples.', 'Understanding', 8, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(147, 'Explain the features of XML path language.', 'Understanding', 8, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(148, 'Explain XPATH nodes in detail.', 'Evaluating', 8, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(149, 'Explain about the object that helps AJAX reload parts of a web page without reloading the whole page', 'Evaluating', 8, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(150, 'List and explain the XML syntax rules in detail.', 'Remembering', 8, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(151, 'Explain how a XML document can be displayed on a\r\nbrowser.', 'Remembering', 8, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(152, 'Explain in detail about XSL.', 'Understanding', 8, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(153, 'Explain about DOM based XML processing.', 'Understanding', 8, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(154, 'What is the significance of JavaBeans classes in the context\r\nof JSP? Discuss.', 'Evaluating', 8, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(155, 'Explain about MVC architecture in detail.', 'Evaluating', 8, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(156, 'Explain how XSLT transforms the document from one (Word)\r\ntype to other type (HTML)', 'Evaluating', 8, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(157, ' Describe the basic java bean classes and JSP tag libraries.', 'Evaluating', 8, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(158, 'Discuss the various aspects of JAX-RPC.', 'Analyzing', 8, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(159, 'Develop a Java Web Service that would do arithmetic\r\noperations.', 'Analyzing', 8, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(160, 'What do you mean by AJAX? Write the advantages of AJAX. ', 'Remembering', 8, 5, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(161, 'Write short notes on Event-oriented Parsing.', 'Remembering', 8, 5, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(162, 'Discuss AJAX architecture and compare it with DOM and\r\nSAX.', 'Remembering', 8, 5, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(163, 'What languages are used to represent data in web? Explain any\r\ntwo of them.', 'Remembering', 8, 5, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(164, 'Explain in detail the steps involved in writing a web service.', 'Understanding', 8, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(165, 'Explain the basic concepts of RPC.', 'Understanding', 8, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(166, 'Explain the JDBC database access in detail.', 'Evaluating', 8, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(167, 'Explain the SOAP elements in detail.', 'Evaluating', 8, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(168, 'Explain the elements of a SOAP message. ', 'Evaluating', 8, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(169, 'How do you store Java objects? Describe.', 'Evaluating', 8, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(170, 'Recall in detail about Internet and World Wide Web.', 'Remembering', 16, 1, 'Web Technology', '6', 'III', '18CS602', 'CO1'),
(171, 'Create a HTML document for a company home page.', 'Creating', 16, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(172, 'Explain the significance of XHTML with the help of a real time\r\napplication. Write necessary code snippets.', 'Evaluating', 16, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(173, 'How do you create frames? Why do we need them? Develop an\r\napplication to explain the same.', 'Analyzing', 16, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(174, 'Explain HTML forms in detail along with form elements, attributes\r\nand methods. Write an HTML document to provide a form that\r\ncollect name and telephone numbers.', 'Understanding', 16, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(175, 'Examine the basic XHTML syntax and semantics.', 'Analyzing', 16, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(176, 'Define HTML 5.0. List and explain some of the HTML 5.0 tags with\r\nexamples.', 'Remembering', 16, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(177, 'Develop an interactive web page for student registration using\r\nHTML form elements. ', 'Creating', 16, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(178, 'Briefly discuss the HTML frame and table tags', 'Creating', 16, 1, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(179, 'List and describe the CSS Border Style Properties in detail with\r\nillustration.', 'Remembering', 16, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(180, 'Apply CSS to a web page with the following requirements\r\n(i) Paint the background gray(2) \r\n(ii) Paint the sidebar yellow (2)\r\n(iii)Set the artist h1 to be only uppercase (2)\r\n(iv) Set the title h2 to be uppercase-first letter (2)\r\n(v) Set a line spacing between the lines (2)\r\n(vi) Set letter spacing between the letters in each span of type\r\ninstruction (3)', 'Applying', 16, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(181, 'Summarize about debugging in JavaScript.', 'Understanding', 16, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(182, 'What are the various JavaScript objects? Explain each with an\r\nexample. ', 'Remembering', 16, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(183, 'Show in detail about JavaScript variables and operators.', 'Remembering', 16, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(184, 'Write the registration form for the creation of email account with all\r\npossible validations using JavaScript.', 'Evaluating', 16, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(185, 'Discuss the various aspects of Normal Flow Box Layout in the\r\ncontext of CSS.', 'Creating', 16, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(186, 'Explain in detail about CSS3. Give the illustration for CSS3\r\nanimation.', 'Evaluating', 16, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(187, 'Explain in detail DOM event handling. Also explain with an\r\nexample of creating a context menu. [Not', 'Evaluating', 16, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(188, 'Discuss how do you use JavaScript for form validation?\r\nDevelop a complete application that would include\r\ninformation functions to validate the user data.', 'Creating', 16, 2, 'Web Technology', '6', 'III', '18CS602', 'CO2'),
(189, 'List the properties of mouse events associated with DOM2 with an\r\nexample.', 'Remembering', 16, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(190, 'What are the various levels of DOM? Explain each of them in detail.', 'Remembering', 16, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(191, 'Make use of some of the style object in DOM to modify the\r\nelements’ style.', 'Applying', 16, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(192, 'Write a servlet to illustrate the principle of Cookies and explain. ', 'Creating', 16, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(193, 'Explain the Servlet operation in detail with a sample Servlet\r\nprogram.', 'Applying', 16, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(194, 'What is a session? Explain how client state is maintained using\r\nsession and also explain about session tracking and session\r\nmanagement using an example. ', 'Remembering', 16, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(195, 'Explain the servlet life cycle with an example.', 'Understanding', 16, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(196, 'Write a Java code for getting the details of the items to be\r\npurchased from a client and to update the inventory of the shop\r\nafter selling. Also bill should be prepared for the client. Maintain\r\nthe transaction table also just by inserting these purchase item\r\ndetails at the shop use JDBC for transactions.', 'Analyzing', 16, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(197, 'Describe the process of generating dynamic content using servelts.\r\nBriefly explain the importance of Document Object Model.', 'Evaluating', 16, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(198, 'With a simple example illustrate how the elements of the HTML\r\ndocument tree structure can be accessed using JavaScript', 'Creating', 16, 3, 'Web Technology', '6', 'III', '18CS602', 'CO3'),
(199, 'Discuss the ways of storing and accessing information using\r\ncookies and handling associated issues.', 'Evaluating', 16, 3, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(200, 'Write a Java Servlet to display net salary of employee, use JDBC\r\nconnectivity to get employee detai', 'Creating', 16, 3, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(201, 'State and explain the information in a JSP document in detail.', 'Remembering', 16, 4, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(202, 'Identify the objects associated with JSP and highlight the features\r\nof each object. Explain the various JSP elements.', 'Applying', 16, 4, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(203, 'Explain in detail the creation, instantiation and usage of java beans objects.', 'Understanding', 16, 4, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(204, 'What is a JavaBeans component? How will you use the JSP\r\nlanguage elements for accessing Beans in your JSP pages?', 'Remembering', 16, 4, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(205, 'Discover a JSP code to access a table and records from a student\r\ndatabase to obtain the result of a student. ', 'Analyzing', 16, 4, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(206, 'Classify the implicit objects involved in JavaScript Expression\r\nLanguage.', 'Analyzing', 16, 4, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(207, 'Discover a XML document to store voter ID, voter name, address\r\nand date of birth details and validate the document with the help of DTD.', 'Analyzing', 16, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(208, 'Write XSLT code to display employee details in a Table form\r\nwhich is stored is XML.', 'Applying', 16, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(209, 'Explain in detail the XML schema, built in and user defined data\r\ntype detail.', 'Remembering', 16, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(210, 'Write a Servlet program to display the waiting list status, given the\r\nPNR number of a train. Create a JSP to display the information at\r\nthe client end.', 'Creating', 16, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(211, 'Get the students’ details like name, register number and mark using\r\nform. Generate DTD for this XML document.\r\nName Regno Mark\r\nXYZ 1000 90\r\nABC 1001 80\r\nRST 1002 89\r\nPQR 1003 87\r\nGenerate the collected information in the descending order of\r\nmarks using XSLT. Results should be displayed in the above\r\nformat. Write a source code and explain the same.', 'Creating', 16, 4, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(212, 'Discover about the development of a web application to illustrate\r\nthe basics of AJAX.', 'Analyzing', 16, 5, 'Web Technology', '6', 'III', '18CS602', 'CO4'),
(213, 'Explain about the XMLHttpRequest Object in detail', 'Understanding', 16, 5, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(214, 'Brief the Return Document Forms in AJAX.', 'Remembering', 16, 5, 'Web Technology', '6', 'III', '18CS602', 'CO5'),
(215, 'Explain why the callback function is written as an anonymous\r\nfunction in the request phase function', 'Analyzing', 16, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(216, 'Describe the significance and working of WSDL with an example.', 'Applying', 16, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(217, 'Describe the major elements of SOAP.', 'Remembering', 16, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(218, 'Explain the role of XML schema in building web services in detail.', 'Understanding', 16, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(219, 'Design a railway reservation system using UDDI and WSDL for the\r\nfollowing case study. Railway could register their services into an\r\nUDDI directory for checking the train rate and reservation. Travel\r\nagencies could then search the UDDI directory to find the railway\r\nreservation interface for ticket booking.', 'Creating', 16, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(220, 'Model a web service for calculator application.', 'Applying', 16, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(221, 'Explain JAX-RPC concept with suitable example', 'Evaluating', 16, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(222, 'Discuss the creation of a Java Web Service in detail with examples.', 'Creating', 16, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6'),
(223, 'Formulate the principles of WSDL, XML and SOAP and their\r\ninteraction between them in web service applications.', 'Creating', 16, 5, 'Web Technology', '6', 'III', '18CS602', 'CO6');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `ID` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`ID`, `username`, `password`) VALUES
(1, 'Priya', '2001'),
(2, 'Malini', '2002'),
(3, 'Priya', '2001'),
(4, 'Malini', '2002'),
(5, 'Nandha', '1611'),
(6, 'Nandha', '1611');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
