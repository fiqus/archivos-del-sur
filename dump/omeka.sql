-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 18-01-2022 a las 20:30:05
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `omeka`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_collections`
--

CREATE TABLE `omeka_collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `public` tinyint(4) NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `added` timestamp NOT NULL DEFAULT '2000-01-01 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '2000-01-01 00:00:00',
  `owner_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_elements`
--

CREATE TABLE `omeka_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `element_set_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_elements`
--

INSERT INTO `omeka_elements` (`id`, `element_set_id`, `order`, `name`, `description`, `comment`) VALUES
(1, 3, NULL, 'Text', 'Any textual data included in the document', NULL),
(2, 3, NULL, 'Interviewer', 'The person(s) performing the interview', NULL),
(3, 3, NULL, 'Interviewee', 'The person(s) being interviewed', NULL),
(4, 3, NULL, 'Location', 'The location of the interview', NULL),
(5, 3, NULL, 'Transcription', 'Any written text transcribed from a sound', NULL),
(6, 3, NULL, 'Local URL', 'The URL of the local directory containing all assets of the website', NULL),
(7, 3, NULL, 'Original Format', 'The type of object, such as painting, sculpture, paper, photo, and additional data', NULL),
(10, 3, NULL, 'Physical Dimensions', 'The actual physical size of the original image', NULL),
(11, 3, NULL, 'Duration', 'Length of time involved (seconds, minutes, hours, days, class periods, etc.)', NULL),
(12, 3, NULL, 'Compression', 'Type/rate of compression for moving image file (i.e. MPEG-4)', NULL),
(13, 3, NULL, 'Producer', 'Name (or names) of the person who produced the video', NULL),
(14, 3, NULL, 'Director', 'Name (or names) of the person who produced the video', NULL),
(15, 3, NULL, 'Bit Rate/Frequency', 'Rate at which bits are transferred (i.e. 96 kbit/s would be FM quality audio)', NULL),
(16, 3, NULL, 'Time Summary', 'A summary of an interview given for different time stamps throughout the interview', NULL),
(17, 3, NULL, 'Email Body', 'The main body of the email, including all replied and forwarded text and headers', NULL),
(18, 3, NULL, 'Subject Line', 'The content of the subject line of the email', NULL),
(19, 3, NULL, 'From', 'The name and email address of the person sending the email', NULL),
(20, 3, NULL, 'To', 'The name(s) and email address(es) of the person to whom the email was sent', NULL),
(21, 3, NULL, 'CC', 'The name(s) and email address(es) of the person to whom the email was carbon copied', NULL),
(22, 3, NULL, 'BCC', 'The name(s) and email address(es) of the person to whom the email was blind carbon copied', NULL),
(23, 3, NULL, 'Number of Attachments', 'The number of attachments to the email', NULL),
(24, 3, NULL, 'Standards', '', NULL),
(25, 3, NULL, 'Objectives', '', NULL),
(26, 3, NULL, 'Materials', '', NULL),
(27, 3, NULL, 'Lesson Plan Text', '', NULL),
(28, 3, NULL, 'URL', '', NULL),
(29, 3, NULL, 'Event Type', '', NULL),
(30, 3, NULL, 'Participants', 'Names of individuals or groups participating in the event', NULL),
(31, 3, NULL, 'Birth Date', '', NULL),
(32, 3, NULL, 'Birthplace', '', NULL),
(33, 3, NULL, 'Death Date', '', NULL),
(34, 3, NULL, 'Occupation', '', NULL),
(35, 3, NULL, 'Biographical Text', '', NULL),
(36, 3, NULL, 'Bibliography', '', NULL),
(37, 1, 8, 'Contributor', 'An entity responsible for making contributions to the resource', NULL),
(38, 1, 15, 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant', NULL),
(39, 1, 4, 'Creator', 'An entity primarily responsible for making the resource', NULL),
(40, 1, 7, 'Date', 'A point or period of time associated with an event in the lifecycle of the resource', NULL),
(41, 1, 3, 'Description', 'An account of the resource', NULL),
(42, 1, 11, 'Format', 'The file format, physical medium, or dimensions of the resource', NULL),
(43, 1, 14, 'Identifier', 'An unambiguous reference to the resource within a given context', NULL),
(44, 1, 12, 'Language', 'A language of the resource', NULL),
(45, 1, 6, 'Publisher', 'An entity responsible for making the resource available', NULL),
(46, 1, 10, 'Relation', 'A related resource', NULL),
(47, 1, 9, 'Rights', 'Information about rights held in and over the resource', NULL),
(48, 1, 5, 'Source', 'A related resource from which the described resource is derived', NULL),
(49, 1, 2, 'Subject', 'The topic of the resource', NULL),
(50, 1, 1, 'Title', 'A name given to the resource', NULL),
(51, 1, 13, 'Type', 'The nature or genre of the resource', NULL),
(52, 3, 1, 'Subtitle', 'A subtitle or alternate title for the entry.', ''),
(53, 3, 2, 'Lede', 'A brief introductory section that is intended to entice the reader to read the full entry.', ''),
(54, 3, 3, 'Story', 'The primary full-text for the entry.', ''),
(55, 3, 4, 'Sponsor', 'The name of a person or organization that has sponsored the research for this specific entry. Use HTML to create an active link.', ''),
(56, 3, 5, 'Factoid', 'One or more facts or pieces of information related to the entry, often presented as a list. Examples include architectural metadata, preservation status, FAQs, pieces of trivia, etc. Use HTML to create bullet lists and headings.', ''),
(57, 3, 6, 'Related Resources', 'The name of or link to a related resource, often used for citation information.', ''),
(58, 3, 7, 'Official Website', 'An official website related to the entry. Use HTML to create an active link.', ''),
(59, 3, 8, 'Street Address', 'A detailed street/mailing address for a physical location.', ''),
(60, 3, 9, 'Access Information', 'Information regarding physical access to a location, including restrictions (e.g. \"Private Property\"), walking directions (e.g. \"To reach the peak, take the trail on the left\"), or other useful details (e.g. \"Location is approximate\").', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_element_sets`
--

CREATE TABLE `omeka_element_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_element_sets`
--

INSERT INTO `omeka_element_sets` (`id`, `record_type`, `name`, `description`) VALUES
(1, NULL, 'Dublin Core', 'The Dublin Core metadata element set is common to all Omeka records, including items, files, and collections. For more information see, http://dublincore.org/documents/dces/.'),
(3, 'Item', 'Item Type Metadata', 'The item type metadata element set, consisting of all item type elements bundled with Omeka and all item type elements created by an administrator.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_element_texts`
--

CREATE TABLE `omeka_element_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `element_id` int(10) UNSIGNED NOT NULL,
  `html` tinyint(4) NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_element_texts`
--

INSERT INTO `omeka_element_texts` (`id`, `record_id`, `record_type`, `element_id`, `html`, `text`) VALUES
(16, 8, 'Item', 50, 0, 'Población Inés Pafian'),
(17, 8, 'Item', 39, 0, 'Archivos del Sur'),
(18, 8, 'Item', 54, 0, 'Población Inés Pafian – Traful Sud\r\n\r\nSe consignan datos correspondientes al Censo Francisco Sanjuan de 1946 y al Censo APN de 1965.\r\n\r\nEn 1946, luego de relevar el área, Francisco Sanjuán, oficial del ejército, elaboró un informe sobre las seccionales Traful y Traful Norte. A partir de los datos allí consignados, podemos conocer estadios de desarrollo económico y social, relaciones de parentesco de las poblaciones y diferentes matices regionales.\r\n\r\nSe extrae información del libro Esculpidos en el Tiempo, arqueología e historia de Traful y Cuyin Manzano – Jacqueline Guindon y Mario Jorge Silveira – educo – 2008.\r\n\r\nDe acuerdo a la información disponible en el Censo APN del año 1965, Inés Pafian nació en Traful, Provincia de Neuquén, el 25 de abril de 1908. La misma reside en la población junto a su familia desde 1908-10. Anteriormente Inés Pafian residía en la zona de Nahuel Huapi.\r\n\r\nLos padres de Inés Pafian fueron José Ángel Paichil y María Inés Pafian. Ambos señalados como los primeros habitantes de la llamada laguna Traful, luego de la campaña de apropiación militar de la Patagonia denominada “Conquista del Desierto”.\r\n\r\nEn el Censo APN se señala que Inés Pafian (viuda de Paichil) se casó en segundas nupcias con don Adolfo Calfueque, chileno de 65 años (1900). Los hijos e hijas registrados en dicho censo son: Germán (21 años), Bernardo (18 años), Hermelinda (38 años), Griselda (34 años), Dionila (31 años). Todos, menos Hermelinda, vivían en la población.\r\n\r\nTambién convivían la población las siguientes personas: Gerónimo Leiva (14), Domingo Calfueque (11), Raúl Garcés (12), Teoblado Garcés (9), Raquel Garcés (6), Sergio Garcés (3), Benilde Calfueque (7), Héctor Atilio Calfueque (3 meses).\r\n\r\nAdemás, Inés Pafian tenía tres hijas más llamadas María Irma (10 años), María Esther (5 años) y Marías Inés (7 años).\r\n\r\nLa población disponía de dos galpones, uno de 5mx6m y otro de 4mx4m, ambos en estado precario; un corral y 1500 metros de cercos. La casa era de 4m x 8m construida en dos plantas. La planta baja estaba conformada por tres dormitorios y la planta alta por dos dormitorios. Las paredes, pisos y techos eran de madera. Además, en la población había una casa de 5m x 6m con un dormitorio y una cocina en regular estado de conservación.\r\n\r\nHabía, además, una hectárea cultivada con pastos y hortalizas, árboles frutales que reunían 25 manzanos, 18 ciruelos, 1 peral y 5 guindos. Se registra que la familia tenía un carro de 1000 kg de carga y no disponía de embarcación. En cuanto a los animales, había 26 vacunos, 36 lanares y 17 yeguarizos. Estos eran propiedad de Adolfo Calfueque, y tenían boleto y marca propia.\r\n\r\nCon respecto a las ocupaciones de la población, Inés Pafian se dedicaba a quehaceres domésticos. Tenía autorización para poblar con el Permiso Precario de Ocupación y Pastaje (PPOP) n° 14 obtenido el 22 de abril de 1937, extendido por La Dirección General de Parques Nacionales. El resto de los integrantes, se dedicaba al cuidado de animales y a realizar trabajos fuera de la casa, las hijas como empleadas domésticas y los hijos en tareas rurales.'),
(19, 9, 'Item', 50, 0, 'Población Anselmo Chabol'),
(20, 9, 'Item', 39, 0, 'Archivos del Sur'),
(21, 9, 'Item', 54, 1, '<p><span style=\"font-weight:400;\">Don Atanasio Chabol se asienta en la base del cerro El Colorado, en una bahía natural que se llama Puerto Chabol. Cruzó la cordillera a principios de siglo junto a la familia Eggers que se asentó en La Estanzuela, población vecina. Mientras los Eggers compraron la propiedad, los Chabol no pudieron, quedaron ubicados en un terreno fiscal. </span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">Según el primer relevamiento realizado en 1936 por el peón de vigilancia de Parques Nacionales, José del Carmen Fuentes, los Chabol ocuparon el territorio a partir de 1922. La memoria oral relata una serie de idas y venidas hasta su asentamiento definitivo en el lote 61, distrito VI en la diagramación de la Colonia Agrícola Pastoril Nahuel Huapi de 1902. Está ubicado en el Perilago del Nahuel Huapi. </span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">En la 1° acta de Pastaje que firmó el hijo de Atanasio, don Anselmo Chabol, se asegura la tenencia de 1 yeguarizo, 27 vacunos y una hectárea de huerta. Parques Nacionales concedió el Permiso Precario de Ocupación y Pastaje n° 5 el 31 de marzo de 1937. A partir de entonces quedaron en condiciones de precariedad en relación a la tenencia de la tierra y, además, con limitaciones respecto de su uso. </span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">En 1938 se realiza la Ficha Personal de Poblador Fronterizo donde se asevera que don Anselmo Chabol nació en Osorno el 25 de abril de 1895, de profesión chacarero-jornalero. Sus padres se llamaban Atanasio Chabol y Rafaela Mansilla. Se casó con Elvira Martínez, hija de don Tomás Martínez. Fue catalogado como buen poblador, sin antecedentes y cumplidor de las ordenanzas de Parque Nacional.</span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">En abril de 1938 se solicita al Estado Mayor General del Ejército que determine la situación de todos los ciudadanos chilenos en la frontera. Don Anselmo fue evaluado de forma positiva, pese a ser chileno, por tener ya tres hijos argentinos: Delia, Rosa del Carmen y Pablo. </span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">En 1945 se realiza nuevamente la Ficha del Poblador Fronterizo donde se registra que la fecha de su nacimiento fue el 21 de abril de 1893. El dato importante es que don Anselmo está en la zona desde 1909, es decir que llegó a El Colorado con 16 años. Este dato coincide con el relato de su hijo Samuel Chabol. </span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">En 1955 don Anselmo solicitó introducir lanares a cambio de vacunos. Se autorizó 4 lanares por 1 vacuno.</span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">En 1965 se realizó un censo general de pobladores muy completo. Se registró que don Anselmo nació el 21 de abril de 1887 (curioso tres fechas de nacimiento en distintos censos), cruzó la cordillera en 1909 y que en 1915 vivió en El Machete donde conoció a su compañera Elvira Martínez. Trabajó en changas y explotaciones forestales. Trabajó muchos años en la estancia Quetrihue de la familia Lynch y con el turismo que visitaba el Parque Arrayanes en sus comienzos. </span></p>\n<p><span style=\"font-weight:400;\">Registro de bienes:</span></p>\n<ul><li style=\"font-weight:400;\"><span style=\"font-weight:400;\">Casa de madera de 6x9 de ciprés - 1 cocina y tres dormitorios – galpón 5x6- cerco palo a pique 400 mts- cerco varones 600 mts</span></li>\n<li style=\"font-weight:400;\"><span style=\"font-weight:400;\">27 vacunos - 30 lanares- 1 yeguarizo y 3 perros.</span></li>\n<li style=\"font-weight:400;\"><span style=\"font-weight:400;\">La marca es de su suegro Tomás Martínez y la señal no posee - martillo arriba oreja derecha</span></li>\n<li style=\"font-weight:400;\"><span style=\"font-weight:400;\">Huerta 1 ha hortalizas – 8 manzanos- 4 ciruelas- 3 guindos- 8 cerezos</span></li>\n<li style=\"font-weight:400;\"><span style=\"font-weight:400;\">1 bote madera a remo 5 mts y motor Archimedes 5 HP - Bueyes con carro 300kg</span></li>\n</ul><span style=\"font-weight:400;\">Las personas vivientes (no todas en la población) son sus hijos Pablo, Delia, Rosa, María, Juan, Elba, Samuel, Fresia, Porfiria, Silvia. Hijos de Delia: Azucena, Baltazar, Heraldo, Apolinario, Blanca, Aurelia. Hijos de Rosa: Albino, Elías, Marta y Roman.</span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">En 1967 se autorizó la construcción de una vivienda familiar debido al estado de la vivienda original, pero solo con una extracción de 25 metros cúbicos de ciprés.</span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">El 8 de octubre de 1970 fallece don Anselmo.</span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">Hoy (2021 ) viven en la población Silvia, Pila, Azucena y Heraldo. </span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">Después de la erupción del volcán Puyehue (2011) se logró el permiso de Parques Nacionales para realizar un camping agreste.</span><br /><br /> <br />Serie documental de UNLPam: Silvia y Pila Chabol'),
(22, 10, 'Item', 50, 0, 'Población Eggers'),
(23, 10, 'Item', 39, 0, 'Archivos del Sur'),
(24, 10, 'Item', 54, 1, '<p>Según el libro “A Cien años de la Colonia Agrícola Nahuel Huapi” de Ricardo “Yipi” Vallmitjana, los Eggers eran una familia numerosa que poseía en el sur de Chile importantes concesiones de tierra dedicadas a la ganadería. En el Censo Nacional Argentino de 1895 figura Conrado Eggers e Isora Pardo junto a sus once hijos como pobladores de la Vega Maipú en San Martín de los Andes. Conrado Eggers recorre el Nahuel Huapi y en 1899 se establece como encargado de las once mil hectáreas que gestionará el Dr Marcos Zorrila (ex Ministro de Agricultura de la Nación) ubicadas en península Huemul. La familia vivían en Puerto Savanah y para 1902 poseían 300 vacas y 500 ovejas.<br /><br />Tanto el padre Conrado como sus hijos se inscribieron en 1900 solicitando tierras como aspirantes a colonos de Nahuel Huapi. En aquellos años, Federico estaba asentado en Alto Bonito. Cuando en septiembre de 1902 se adjudicaron las fracciones de la Colonia Agrícola Nahuel Huapi por decreto que firmó el presidente Roca, les correspondieron el lote 73 a Conrado y el 74 a Armando Eggers. Estas parcelas fueron solicitadas expresamente con conocimiento del terreno ubicado al pie del cerro Millaqueo. Precisamente en el sitio donde Antonio Millaqueo tenía un par de ranchos.<br /><br />Conrado y Armando Eggers recibieron la posesión de sus lotes en abril de 1903 al igual que Arturo Eggers que le correspondió en otra sección. Debido a que los lotes vecinos adjudicados correspondían a escandinavos que no se presentaron, le dieron la oportunidad a los Eggers de cambiar el 74 por el 72.<br /><br />El caso de la familia Eggers es muy interesante ya que nos permite ver cómo determinados colonos pudieron comprar el lote y tener la propiedad tan ansiada por la mayoría de los fiscaleros. Mucho incidió el capital de trabajo de la familia Eggers y su amplia experiencia en el desarrollo agropecuario.<br /><br />Veamos como Vallmitjana detalla los lotes de los Eggers con sus adelantos, gracias al informe de la oficina de Tierras y Colonias efectuado en 1909 a lo cual le agrega antecedentes de distintas fuentes:<br /><br /><em>Lote Pastoril 72: Concesionario Armando Eggers. Mejoras en 1909: dos casas con cuatro piezas. 1000metros de cercos de madera – un arado – siembras 5 has de trigo, 4 has de avena, 1 ha de pasto. Ganados: 4 bueyes, 8 caballos, 100 vacas, 6 yeguarizos. El capital de explotación $ 4845. </em><br /><em>Lote pastoril 73: Concesionario Conrado Eggers- informe de 1907 donde se expresa: es antiguo poblador del lago y un buen colono, pues a pesar de lo poco aparente que es el lote para pastoreo y agricultura tiene hechos en éste trabajos de importancia: ha construido el mejor chalet de la Colonia. Un chalet de madera de altos y bajos compuesto de nueve piezas, un galpón para caballeriza, gallineros. Un jardín, varios cuadros cercados con madera de buena extensión con 6 has de sembrados de trigo, papas etc. Cien frutales de dos años de varias clases que parece que darán resultado pues están con mucha vida. Haciendas 200 vacas, 100 ovejas, 15 equinos y algunos porcinos.<br /></em><br />Conrado Eggers hizo uso en 1907 del art. 13 de la ley del 12 de octubre de 1884 que expresa: \"si el poseedor después de haber cumplido durante dos años las obligaciones de población establecidas en el art. 6 (adoptar ciudadanía argentina) quisiese obtener anticipadamente la propiedad del lote ocupado tendrá derecho a que se escriture abonando $500 por la tierra\". Es decir, de concesionario pasó a ser adquiriente y propietario por escritura ratificada por el Presidente de la Nación Figueroa Alcorta (expte 8.130E-1907). Simultáneamente Armando Eggers adquirió por parte de la Nación el lote 72. Motivaron la compra y escrituración de los bienes, que podrían adquirir gratuitamente, los rumores que corrían en la colonia sobre la ampliación de reserva de tierras con destino a Parque Nacional. Además, por estar sus asentamientos en un sitio aislado de la Colonia, prefirieron definir el futuro por escritura.<br /><br />Efectivamente, en 1908 el gobierno dispuso retirar de la oferta pública los lotes libres de la colonia Agrícola Nahuel Huapi para incorporarlos al Parque Nacional. Esta decisión gubernamental no afectó a los concesionarios, pero sí señaló las limitaciones futuras de la Colonia.<br />El establecimiento de Conrado Eggers se denominó La Estanzuela y a falta de caminos tenía acceso naval: Puerto Venus, nombre derivado del excelente velero que el ingeniero naval Otto Mühlempfordt construyó para Eggers.<br /><br />Por su parte, Armando tenía otro puerto: Puerto Tigre- topónimo originado en el sobrenombre de un joven obrero que falleció en el sitio. En Puerto Tigre funcionó un astillero donde Mühlempfordt construyó diversas naves, siendo muy recordada la lancha Correntoso que transportaba hasta 18 pasajeros- con visos de uso turístico. La lancha fue construida por pedido de Primo Capraro y cuando se botó en 1927, Capraro organizó un gran festejo al que asistieron casi un centenar de invitados que fueron agasajados con un asado amenizado por la banda de música del pueblo. Puerto Tigre era un punto de visita por el turismo de los años 20.<br /><br />La familia Eggers había instalado un molino harinero para elaborar el trigo que cosechaban y se movía con una caldera de vapor de 4Cv de potencia. Se contaba en La Estanzuela con una herrería muy completa y una carpintería de dos bancos de trabajo. En el hogar de Conrado Eggers podía consultarse una nutrida biblioteca que contenía un centenar de volúmenes de texto alemán. En 1922/23 la sucesión de Armando Eggers transfirió el lote Pastoril 73 a favor de una sociedad encabezada por Anastasio Nordezholdz.<br /><br />Varios de los pobladores que emigraron de Chile, encontraron trabajo con los Eggers, después hicieron posesión en lotes fiscales del perilago Nahuel Huapi como los Chabol y los Martin. En el censo de pobladores de 1935 que hace Parques nacionales para saber quiénes viven en su nuevo territorio censaron el lote 73 de la Sucesión Conrado Eggers.<br /><br />En ese momento vivían Frida 60 años, Erminia 58 años, Valdemar 55 años, Arturo 52 años, Selmar 50 años, Griselda 46 años, Julio 40 años y Aurora de 38 años. También vivían en la población Armando Eggers 27 años, Margarita Silva 17 años, Adam Eggers 18 años, Sra. Burgos 70 años.<br /><br />Hay una casa 8x4 con tablas y piso de ciprés – tejuela de ciprés – casa de 10 x 6 de block, techo tejuelas, casa 16 x 12 tablas y pisos de ciprés y un galpón de 7x 4.<br />Arturo Eggers tenía 150 vacunos, 12 yeguarizos, 30 lanares, 5 cabríos, 5 porcinos, 4 perros y 12 gallinas.<br />Frida Eggers tenía 50 vacunos, 12 yeguarizos, 120 lanares, 6 perros 20 gallinas y 3 pavos.<br />En la población había 140 manzanos, 3 cerezas y 3 guindos.<br />Se ordeñan en el tambo unas 30 vacas. Hay un bote a vela de 5,50 x 1,30 mts y bote a vela 6 x 1,60 mts.<br />Señala el informe que hay higiene y moral y sus habitantes gozan de buena salud.<br /><br /><br />Getulio Eggers</p>\n<p><strong>Entrevista a Lucas Melo</strong><br /></p>'),
(25, 11, 'Item', 50, 0, 'Población Lorenzo Martinez'),
(26, 11, 'Item', 39, 0, 'Archivos del Sur'),
(27, 11, 'Item', 54, 0, 'La visita del peón de vigilancia José del Carmen Fuentes  a don Lorenzo Martínez en el lote 48 llamado El Arbolito en 1936, lo encontró con dos hectáreas cultivadas, sin riego, con 47 vacunos y 27 lanares. Fuentes verificó que no tiene autorización (propiedad) y le levanta el acta para Permiso Precario de Ocupación y Pastaje.\r\nEn diciembre de 1936, con datos del censo realizado en 1934-35,  PN afirmó que don Lorenzo reside en la zona desde 1911, cruzando de niño la cordillera; bien conceptuado y sin antecedentes policiales. Por lo cual, en abril de 1937, se resolvió la concesión del permiso precario de ocupación y pastaje.\r\nEn julio de 1938, el agente de vigilancia Vedoya, realizó la ficha personal de la cual resultó que don Lorenzo había nacido el 20 de febrero de 1901 en Río Bueno, Chile. De profesión ganadero. Sus padres fueron José Tomás Martínez y María Inés Vejar. Estaba casado con Rosa Edilia Martínez. En 1938 sus hijos eran Edilia 6 años, Jorge 5 años, Irma 4 años y Lorenzo 2 años, todos argentinos.\r\nEn octubre de 1938 el Estado Mayor del Ejército consintió que se le otorgue el PPOP llevándose a cabo en noviembre con el número 48.\r\nEn 1942 don Lorenzo solicitó la introducción de cinco caballos a los ya asignados para trasladar a los turistas del hotel Correntoso en lancha a la población y de allí en caballo hasta el Dormilón. En febrero de 1943 se accedió al pedido con la condición de retirar hacienda, quedando el permiso del PPOP con 15 yeguarizos, 37 vacunos y 27 Ovinos.\r\nEn 1942 se realizó la ficha del poblador fronterizo donde se registran los nacimientos de Luis 7 años, Ana 3 años y Rubén Ramiro de 1 año. También se registró su residencia en Chile entre su nacimiento en 1901 y 1908 cuando cruzó la frontera.\r\nEn 1946 la Comisión Nacional de Zonas de Seguridad aprobó su permanencia por los 37 años de residencia y los siete hijos argentinos.\r\nEn 1949 don Lorenzo solicitó la introducción de 25 ovejas lo cual se autoriza con la condición de quitar un vacuno por 4 ovejas introducidas.\r\nDon Lorenzo no registró inconvenientes en los pagos de pastajes.\r\nEn el Censo de 1965 también fueron registrados los últimos hijos de don Lorenzo: Rosa Esther, María Teresa y Juan Carlos. Estos junto a Jorge y Lorenzo (h) viven en la población ahora llamada Sucesión Lorenzo Martínez. Se describe la casa de madera con techos, paredes y pisos de madera, de 6 x 6 con una cocina y dos dormitorios, un galpón de madera en mal estado de 10 x 5 y un galpón de 3 x 5 también en mal estado, 50 metros de cerco palo a pique y 400 metros de cerco tipo varón; 25 vacunos, 40 lanares, 2 yeguarizos y 3 perros; una hectárea cultivada con hortalizas diversas, 10 manzanos, 2 cerezos y 6 ciruelas.\r\nHoy han vuelto a la población varios de sus hijos y nietos. Juan Carlos Martínez administra un camping agreste.\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_exhibits`
--

CREATE TABLE `omeka_exhibits` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `credits` text COLLATE utf8_unicode_ci,
  `featured` tinyint(1) DEFAULT '0',
  `public` tinyint(1) DEFAULT '0',
  `theme` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_options` text COLLATE utf8_unicode_ci,
  `slug` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `added` timestamp NOT NULL DEFAULT '2000-01-01 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '2000-01-01 00:00:00',
  `owner_id` int(10) UNSIGNED DEFAULT NULL,
  `use_summary_page` tinyint(1) DEFAULT '1',
  `cover_image_file_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_exhibit_block_attachments`
--

CREATE TABLE `omeka_exhibit_block_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `block_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `order` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_exhibit_pages`
--

CREATE TABLE `omeka_exhibit_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `exhibit_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `order` smallint(5) UNSIGNED DEFAULT NULL,
  `added` timestamp NOT NULL DEFAULT '2000-01-01 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '2000-01-01 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_exhibit_page_blocks`
--

CREATE TABLE `omeka_exhibit_page_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `layout` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `order` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_files`
--

CREATE TABLE `omeka_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `has_derivative_image` tinyint(1) NOT NULL,
  `authentication` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_os` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` text COLLATE utf8_unicode_ci NOT NULL,
  `original_filename` text COLLATE utf8_unicode_ci NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added` timestamp NOT NULL DEFAULT '2000-01-01 00:00:00',
  `stored` tinyint(1) NOT NULL DEFAULT '0',
  `metadata` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_files`
--

INSERT INTO `omeka_files` (`id`, `item_id`, `order`, `size`, `has_derivative_image`, `authentication`, `mime_type`, `type_os`, `filename`, `original_filename`, `modified`, `added`, `stored`, `metadata`) VALUES
(8, 8, 3, 628613, 1, 'd6cf2991f9e37d8d11d8b4667f914049', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, little-endian, direntries=18, description=                               , manufacturer=SONY, model=DSC-W5, orientation=upper-left, xresolution=276, yresolution=284, resolutionunit=2, datetime=2007:01:30 1', 'ce57745886c7e158d00d6efafab8ccc6.jpeg', 'cac70e2ce5f5e451278699e16fbdc9ab.jpeg', '2022-01-18 17:19:52', '2022-01-18 17:19:39', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":960,\"resolution_y\":1280,\"compression_ratio\":0.17052218967013888},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"ce57745886c7e158d00d6efafab8ccc6.jpeg\",\"FileDateTime\":1642526378,\"FileSize\":628613,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF\"},\"COMPUTED\":{\"html\":\"width=\\\"960\\\" height=\\\"1280\\\"\",\"Height\":1280,\"Width\":960,\"IsColor\":1,\"ByteOrderMotorola\":0,\"ApertureFNumber\":\"f\\/2.8\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"ImageDescription\":\"                               \",\"Make\":\"SONY\",\"Model\":\"DSC-W5\",\"Orientation\":1,\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"DateTime\":\"2007:01:30 14:49:00\",\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":340,\"CustomRendered\":0,\"ExposureMode\":1,\"WhiteBalance\":1,\"SceneCaptureType\":0,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":2,\"UndefinedTag:0xC4A5\":\"PrintIM\\u00000300\\u0000\\u0000\\u0002\\u0000\\u0002\\u0000\\u0001\\u0000\\u0000\\u0000\\u0001\\u0001\\u0001\\u0000\\u0000\\u0000\"},\"THUMBNAIL\":{\"Compression\":6,\"Make\":\"SONY\",\"Model\":\"DSC-W5\",\"Orientation\":1,\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"DateTime\":\"2007:01:30 14:49:00\",\"JPEGInterchangeFormat\":2442,\"JPEGInterchangeFormatLength\":9169},\"EXIF\":{\"ExposureTime\":0.004,\"FNumber\":2.8,\"ExposureProgram\":1,\"ISOSpeedRatings\":400,\"ExifVersion\":220,\"DateTimeOriginal\":\"2007:01:30 14:49:00\",\"DateTimeDigitized\":\"2007:01:30 14:49:00\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":8,\"ExposureBiasValue\":0,\"MaxApertureValue\":3,\"MeteringMode\":3,\"LightSource\":10,\"Flash\":16,\"FocalLength\":7.9,\"MakerNote\":\"SONY DSC \",\"FlashPixVersion\":100,\"ColorSpace\":1,\"ExifImageWidth\":960,\"ExifImageLength\":1280,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\"}}}}'),
(9, 8, 2, 643326, 1, '8fd01495dc4d1180490c6d9cdb9f2e88', 'image/png', 'PNG image data, 719 x 602, 8-bit/color RGBA, non-interlaced', '350f3c497dee93c2ed97ca93aaa6e140.png', '07df06198e29186621701a607b6d5827.png', '2022-01-18 17:19:52', '2022-01-18 17:19:39', 1, '{\"mime_type\":\"image\\/png\",\"video\":{\"dataformat\":\"png\",\"lossless\":false,\"resolution_x\":719,\"resolution_y\":602,\"bits_per_sample\":32,\"compression_ratio\":0.371574353453255},\"comments\":{\"Creation Time\":[\"2021:01:24 12:12:54\"]},\"comments_html\":{\"Creation Time\":[\"2021:01:24 12:12:54\"]}}'),
(10, 8, 1, 366778, 1, '17e5f39390d315b3053e185b59ecf439', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 600x600, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=11], baseline, precision 8, 500x905, components 3', 'aad56bedcd83df5a61d122e737f7c12a.jpg', '687fb3db31887e55e6ab403563800a5b.jpg', '2022-01-18 17:19:52', '2022-01-18 17:19:39', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":500,\"resolution_y\":905,\"compression_ratio\":0.2701863720073665},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"aad56bedcd83df5a61d122e737f7c12a.jpg\",\"FileDateTime\":1642526378,\"FileSize\":366778,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, EXIF, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"500\\\" height=\\\"905\\\"\",\"Height\":905,\"Width\":500,\"IsColor\":1,\"ByteOrderMotorola\":1},\"IFD0\":{\"ACDComment\":\"Windows Photo Editor 10.0.10011.16384\",\"ImageDescription\":\"              \",\"Make\":\"                       \",\"Model\":\"Handy Scanner  \",\"XResolution\":600,\"YResolution\":600,\"ResolutionUnit\":2,\"Software\":\"paint.net 4.2.10\",\"DateTime\":\"2020:06:27 14:34:08\",\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":294},\"EXIF\":{\"ExifVersion\":220,\"DateTimeOriginal\":\"2014:03:29 20:17:26\",\"DateTimeDigitized\":\"2014:03:29 20:17:26\",\"MakerNote\":\"610\\u000145678901234567890123456789012345678901234567890123456789012\",\"SubSecTimeOriginal\":0,\"SubSecTimeDigitized\":0,\"ColorSpace\":1,\"ExifImageWidth\":5152,\"ExifImageLength\":7072,\"InteroperabilityOffset\":1636,\"UndefinedTag:0xEA1D\":0},\"INTEROP\":{\"InterOperabilityVersion\":\"0100\"}}}}'),
(11, 9, NULL, 1087511, 1, '9b0b4bc993c03402762b37a6e938a521', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, aspect ratio, density 1x1, segment length 16, progressive, precision 8, 2592x1728, components 3', 'f4d310143997c1418e5e360f65bade82.jpeg', 'dc87f5ac19a0123e14fa35c4f525020f.jpeg', '2022-01-18 17:26:43', '2022-01-18 17:26:43', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":2592,\"resolution_y\":1728,\"compression_ratio\":0.08093449633725804}}'),
(12, 9, NULL, 1550200, 1, '34a713f320c7bdfa1ee42a61e90cdeea', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, aspect ratio, density 1x1, segment length 16, progressive, precision 8, 5726x3815, components 3', 'da7e8b0b77b405a0903864d786dbffe5.jpg', '4e5dcccde7ed7bf763ee1cea619e74f4.jpg', '2022-01-18 17:26:45', '2022-01-18 17:26:43', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":5726,\"resolution_y\":3815,\"compression_ratio\":0.0236548714279458}}'),
(13, 9, NULL, 753450, 1, 'e569c6f03289734cfd98e0206283773f', 'image/png', 'PNG image data, 851 x 595, 8-bit/color RGBA, non-interlaced', '5668ec063ad5a8c68d1def9f84e52f61.png', '00369442aaab2359da6deb33e08e8d88.png', '2022-01-18 17:26:45', '2022-01-18 17:26:45', 1, '{\"mime_type\":\"image\\/png\",\"video\":{\"dataformat\":\"png\",\"lossless\":false,\"resolution_x\":851,\"resolution_y\":595,\"bits_per_sample\":32,\"compression_ratio\":0.3720042658661584},\"comments\":{\"Creation Time\":[\"2020:11:09 10:34:20\"]},\"comments_html\":{\"Creation Time\":[\"2020:11:09 10:34:20\"]}}'),
(14, 9, NULL, 474079, 1, '666f004a0ae370ea548394b2c0a3a9cb', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 199x199, segment length 16, baseline, precision 8, 1697x2209, components 3', '9e7f851e77c78be4ebb5b70bc91257ed.jpg', '4a73ffc1e65a930f21582020a4c08d13.jpg', '2022-01-18 17:26:46', '2022-01-18 17:26:45', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1697,\"resolution_y\":2209,\"compression_ratio\":0.042155272901459616}}'),
(15, 10, NULL, 395999, 1, 'f9f49838f58cde8e9f84779eb9d915d4', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 600x600, segment length 16, baseline, precision 8, 2798x2150, components 3', '7ae038f816731bfd1d675d30f3a0111d.jpg', 'bc374babc58a8dae65ee1a9d8ada5a3b.jpg', '2022-01-18 17:39:54', '2022-01-18 17:39:53', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":2798,\"resolution_y\":2150,\"compression_ratio\":0.021942528162419445}}'),
(16, 10, NULL, 330437, 1, 'fb36c3a4fb7ebd6a03dccfdf0295fcca', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 600x600, segment length 16, baseline, precision 8, 2774x2138, components 3', '3aca0b7cfd7433004d769d657bec2d1e.jpg', '45651160cbfecdee9e10989234c461eb.jpg', '2022-01-18 17:39:54', '2022-01-18 17:39:54', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":2774,\"resolution_y\":2138,\"compression_ratio\":0.01857176836269075}}'),
(17, 10, NULL, 117214, 1, '3a37b9a7f4e2c114c8ea5d096eada15b', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, aspect ratio, density 1x1, segment length 16, progressive, precision 8, 1280x1212, components 3', '747b323102e28ed6945e5c571a1279a5.jpg', '73ba68fff908098ec8310df1fcb0770e.jpg', '2022-01-18 17:39:54', '2022-01-18 17:39:54', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1280,\"resolution_y\":1212,\"compression_ratio\":0.025185213833883387}}'),
(18, 10, NULL, 576481, 1, 'fb3743bba9159f5347a42651663462b1', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, aspect ratio, density 1x1, segment length 16, baseline, precision 8, 889x1222, components 3', 'cc76e0af11ef70ab5aeec02e2a49a704.jpg', 'f658b389fdde2a13f705f0a989e16d03.jpg', '2022-01-18 17:39:55', '2022-01-18 17:39:54', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":889,\"resolution_y\":1222,\"compression_ratio\":0.17688490657162126}}'),
(19, 11, NULL, 768016, 1, '07640e3be3620181c8534854c99754a9', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, aspect ratio, density 1x1, segment length 16, progressive, precision 8, 3648x2736, components 3', 'd8b5536148d5d02051cfcd758bd0c823.jpeg', '5679bb46c543cffd7c276c83cde72f01.jpeg', '2022-01-18 17:42:29', '2022-01-18 17:42:28', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":3648,\"resolution_y\":2736,\"compression_ratio\":0.025649451968126943}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_items`
--

CREATE TABLE `omeka_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_type_id` int(10) UNSIGNED DEFAULT NULL,
  `collection_id` int(10) UNSIGNED DEFAULT NULL,
  `featured` tinyint(4) NOT NULL,
  `public` tinyint(4) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added` timestamp NOT NULL DEFAULT '2000-01-01 00:00:00',
  `owner_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_items`
--

INSERT INTO `omeka_items` (`id`, `item_type_id`, `collection_id`, `featured`, `public`, `modified`, `added`, `owner_id`) VALUES
(8, 18, NULL, 0, 1, '2022-01-18 17:19:52', '2022-01-18 17:19:39', 1),
(9, 18, NULL, 1, 1, '2022-01-18 17:26:43', '2022-01-18 17:26:43', 1),
(10, 18, NULL, 0, 1, '2022-01-18 17:39:53', '2022-01-18 17:39:53', 1),
(11, 18, NULL, 0, 1, '2022-01-18 17:42:28', '2022-01-18 17:42:28', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_item_types`
--

CREATE TABLE `omeka_item_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_item_types`
--

INSERT INTO `omeka_item_types` (`id`, `name`, `description`) VALUES
(1, 'Text', 'A resource consisting primarily of words for reading. Examples include books, letters, dissertations, poems, newspapers, articles, archives of mailing lists. Note that facsimiles or images of texts are still of the genre Text.'),
(3, 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession. Examples include animations, movies, television programs, videos, zoetropes, or visual output from a simulation.'),
(4, 'Oral History', 'A resource containing historical information obtained in interviews with persons having firsthand knowledge.'),
(5, 'Sound', 'A resource primarily intended to be heard. Examples include a music playback file format, an audio compact disc, and recorded speech or sounds.'),
(6, 'Still Image', 'A static visual representation. Examples include paintings, drawings, graphic designs, plans and maps. Recommended best practice is to assign the type Text to images of textual materials.'),
(7, 'Website', 'A resource comprising of a web page or web pages and all related assets ( such as images, sound and video files, etc. ).'),
(8, 'Event', 'A non-persistent, time-based occurrence. Metadata for an event provides descriptive information that is the basis for discovery of the purpose, location, duration, and responsible agents associated with an event. Examples include an exhibition, webcast, conference, workshop, open day, performance, battle, trial, wedding, tea party, conflagration.'),
(9, 'Email', 'A resource containing textual messages and binary attachments sent electronically from one person to another or one person to many people.'),
(10, 'Lesson Plan', 'A resource that gives a detailed description of a course of instruction.'),
(11, 'Hyperlink', 'A link, or reference, to another resource on the Internet.'),
(12, 'Person', 'An individual.'),
(13, 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced. Examples include forms on Web pages, applets, multimedia learning objects, chat services, or virtual reality environments.'),
(14, 'Dataset', 'Data encoded in a defined structure. Examples include lists, tables, and databases. A dataset may be useful for direct machine processing.'),
(15, 'Physical Object', 'An inanimate, three-dimensional object or substance. Note that digital representations of, or surrogates for, these objects should use Moving Image, Still Image, Text or one of the other types.'),
(16, 'Service', 'A system that provides one or more functions. Examples include a photocopying service, a banking service, an authentication service, interlibrary loans, a Z39.50 or Web server.'),
(17, 'Software', 'A computer program in source or compiled form. Examples include a C source file, MS-Windows .exe executable, or Perl script.'),
(18, 'Curatescape Story', 'A narrative body of text being sent to Curatescape mobile applications or being displayed using Curatescape themes. Please use relevant Dublin Core fields for Title, Creator, and other key elements as needed.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_item_types_elements`
--

CREATE TABLE `omeka_item_types_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_type_id` int(10) UNSIGNED NOT NULL,
  `element_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_item_types_elements`
--

INSERT INTO `omeka_item_types_elements` (`id`, `item_type_id`, `element_id`, `order`) VALUES
(1, 1, 7, NULL),
(2, 1, 1, NULL),
(3, 6, 7, NULL),
(6, 6, 10, NULL),
(7, 3, 7, NULL),
(8, 3, 11, NULL),
(9, 3, 12, NULL),
(10, 3, 13, NULL),
(11, 3, 14, NULL),
(12, 3, 5, NULL),
(13, 5, 7, NULL),
(14, 5, 11, NULL),
(15, 5, 15, NULL),
(16, 5, 5, NULL),
(17, 4, 7, NULL),
(18, 4, 11, NULL),
(19, 4, 15, NULL),
(20, 4, 5, NULL),
(21, 4, 2, NULL),
(22, 4, 3, NULL),
(23, 4, 4, NULL),
(24, 4, 16, NULL),
(25, 9, 17, NULL),
(26, 9, 18, NULL),
(27, 9, 20, NULL),
(28, 9, 19, NULL),
(29, 9, 21, NULL),
(30, 9, 22, NULL),
(31, 9, 23, NULL),
(32, 10, 24, NULL),
(33, 10, 25, NULL),
(34, 10, 26, NULL),
(35, 10, 11, NULL),
(36, 10, 27, NULL),
(37, 7, 6, NULL),
(38, 11, 28, NULL),
(39, 8, 29, NULL),
(40, 8, 30, NULL),
(41, 8, 11, NULL),
(42, 12, 31, NULL),
(43, 12, 32, NULL),
(44, 12, 33, NULL),
(45, 12, 34, NULL),
(46, 12, 35, NULL),
(47, 12, 36, NULL),
(48, 18, 52, 1),
(49, 18, 53, 2),
(50, 18, 54, 3),
(51, 18, 55, 4),
(52, 18, 56, 5),
(53, 18, 57, 6),
(54, 18, 58, 7),
(55, 18, 59, 8),
(56, 18, 60, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_keys`
--

CREATE TABLE `omeka_keys` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varbinary(16) DEFAULT NULL,
  `accessed` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_locations`
--

CREATE TABLE `omeka_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `zoom_level` int(11) NOT NULL,
  `map_type` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `omeka_locations`
--

INSERT INTO `omeka_locations` (`id`, `item_id`, `latitude`, `longitude`, `zoom_level`, `map_type`, `address`) VALUES
(1, 1, 33.51162942617925, -84.990234375, 5, 'Leaflet', ''),
(2, 2, 39.000609692611334, -97.602479296875, 6, 'Leaflet', ''),
(3, 3, 39.98343393295324, -82.8369140625, 5, 'Leaflet', ''),
(4, 8, -40.62354585188522, -71.72012329101562, 12, 'Leaflet', ''),
(5, 9, -40.858707699332946, -71.66635036468506, 15, 'Leaflet', ''),
(6, 10, -40.99762576429642, -71.5707778930664, 13, 'Leaflet', ''),
(7, 11, -40.818331908597266, -71.70433044433594, 13, 'Leaflet', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_options`
--

CREATE TABLE `omeka_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_options`
--

INSERT INTO `omeka_options` (`id`, `name`, `value`) VALUES
(2, 'administrator_email', 'joaquinmansilla@fiqus.com'),
(3, 'copyright', ''),
(4, 'site_title', 'Archivos del Sur'),
(5, 'author', ''),
(6, 'description', 'hola mundo'),
(7, 'thumbnail_constraint', '200'),
(8, 'square_thumbnail_constraint', '200'),
(9, 'fullsize_constraint', '800'),
(10, 'per_page_admin', '10'),
(11, 'per_page_public', '10'),
(12, 'show_empty_elements', '0'),
(13, 'path_to_convert', '/usr/bin'),
(14, 'admin_theme', 'default'),
(16, 'file_extension_whitelist', 'aac,aif,aiff,asf,asx,avi,bmp,c,cc,class,css,divx,doc,docx,exe,gif,gz,gzip,h,ico,j2k,jp2,jpe,jpeg,jpg,m4a,m4v,mdb,mid,midi,mov,mp2,mp3,mp4,mpa,mpe,mpeg,mpg,mpp,odb,odc,odf,odg,odp,ods,odt,ogg,opus,pdf,png,pot,pps,ppt,pptx,qt,ra,ram,rtf,rtx,swf,tar,tif,tiff,txt,wav,wax,webm,wma,wmv,wmx,wri,xla,xls,xlsx,xlt,xlw,zip'),
(17, 'file_mime_type_whitelist', 'application/msword,application/ogg,application/pdf,application/rtf,application/vnd.ms-access,application/vnd.ms-excel,application/vnd.ms-powerpoint,application/vnd.ms-project,application/vnd.ms-write,application/vnd.oasis.opendocument.chart,application/vnd.oasis.opendocument.database,application/vnd.oasis.opendocument.formula,application/vnd.oasis.opendocument.graphics,application/vnd.oasis.opendocument.presentation,application/vnd.oasis.opendocument.spreadsheet,application/vnd.oasis.opendocument.text,application/x-ms-wmp,application/x-ogg,application/x-gzip,application/x-msdownload,application/x-shockwave-flash,application/x-tar,application/zip,audio/aac,audio/aiff,audio/mid,audio/midi,audio/mp3,audio/mp4,audio/mpeg,audio/mpeg3,audio/ogg,audio/wav,audio/wma,audio/x-aac,audio/x-aiff,audio/x-m4a,audio/x-midi,audio/x-mp3,audio/x-mp4,audio/x-mpeg,audio/x-mpeg3,audio/x-mpegaudio,audio/x-ms-wax,audio/x-realaudio,audio/x-wav,audio/x-wma,image/bmp,image/gif,image/icon,image/jpeg,image/pjpeg,image/png,image/tiff,image/x-icon,image/x-ms-bmp,text/css,text/plain,text/richtext,text/rtf,video/asf,video/avi,video/divx,video/mp4,video/mpeg,video/msvideo,video/ogg,video/quicktime,video/webm,video/x-m4v,video/x-ms-wmv,video/x-msvideo'),
(18, 'disable_default_file_validation', ''),
(20, 'display_system_info', '1'),
(21, 'html_purifier_is_enabled', '1'),
(22, 'html_purifier_allowed_html_elements', 'p,br,strong,em,span,div,ul,ol,li,a,h1,h2,h3,h4,h5,h6,address,pre,table,tr,td,blockquote,thead,tfoot,tbody,th,dl,dt,dd,q,small,strike,sup,sub,b,i,big,small,tt'),
(23, 'html_purifier_allowed_html_attributes', '*.style,*.class,a.href,a.title,a.target'),
(24, 'tag_delimiter', ','),
(25, 'public_navigation_main', '[{\"can_delete\":false,\"uid\":\"\\/items\\/browse\",\"label\":\"Browse Items\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":1,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"type\":\"Omeka_Navigation_Page_Mvc\",\"pages\":[],\"action\":\"browse\",\"controller\":\"items\",\"module\":null,\"params\":[],\"route\":\"default\",\"reset_params\":true,\"encodeUrl\":true,\"scheme\":null},{\"can_delete\":false,\"uid\":\"\\/collections\\/browse\",\"label\":\"Browse Collections\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":2,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"type\":\"Omeka_Navigation_Page_Mvc\",\"pages\":[],\"action\":\"browse\",\"controller\":\"collections\",\"module\":null,\"params\":[],\"route\":\"default\",\"reset_params\":true,\"encodeUrl\":true,\"scheme\":null}]'),
(26, 'search_record_types', 'a:3:{s:4:\"Item\";s:4:\"Item\";s:4:\"File\";s:4:\"File\";s:10:\"Collection\";s:10:\"Collection\";}'),
(27, 'api_enable', ''),
(28, 'api_per_page', '50'),
(29, 'show_element_set_headings', '1'),
(30, 'use_square_thumbnail', '1'),
(42, 'cah_enable_dashboard_stats', '1'),
(43, 'cah_enable_dashboard_resources', '1'),
(44, 'cah_enable_dashboard_components', '1'),
(45, 'cah_enable_item_file_tab_notes', '1'),
(46, 'cah_enable_item_file_toggle_dc', '1'),
(47, 'cah_enable_file_edit_links', '1'),
(48, 'cah_theme_options_accordion', '1'),
(49, 'cah_theme_options_batch_convert', '0'),
(50, 'cah_hide_add_input_where_unsupported', '1'),
(51, 'cah_hide_html_checkbox_where_unsupported', '1'),
(52, 'exhibit_builder_sort_browse', 'added'),
(88, 'srss_replace_default_rss', '1'),
(89, 'srss_facebook_link', ''),
(90, 'srss_twitter_user', ''),
(91, 'srss_youtube_user', ''),
(92, 'srss_ios_id', ''),
(93, 'srss_android_id', ''),
(94, 'srss_include_social_footer', '0'),
(95, 'srss_include_applink_footer', '0'),
(96, 'srss_include_read_more_link', '1'),
(97, 'srss_include_mediastats_footer', '1'),
(99, 'public_theme', 'curatescape'),
(117, 'omeka_version', '3.0.1'),
(138, 'omeka_update', 'a:2:{s:14:\"latest_version\";s:6:\"3.0.1\n\";s:12:\"last_updated\";i:1642526146;}'),
(139, 'geolocation_default_latitude', '-40.8'),
(140, 'geolocation_default_longitude', '-71.5'),
(141, 'geolocation_default_zoom_level', '9'),
(142, 'geolocation_item_map_width', ''),
(143, 'geolocation_item_map_height', ''),
(144, 'geolocation_per_page', '10'),
(145, 'geolocation_add_map_to_contribution_form', '0'),
(146, 'geolocation_link_to_nav', '0'),
(147, 'geolocation_default_radius', '10'),
(148, 'geolocation_use_metric_distances', '0'),
(149, 'geolocation_basemap', 'OpenStreetMap'),
(150, 'geolocation_auto_fit_browse', '0'),
(151, 'geolocation_mapbox_access_token', ''),
(152, 'geolocation_mapbox_map_id', ''),
(153, 'geolocation_cluster', '0'),
(154, 'geolocation_geocoder', 'nominatim'),
(155, 'theme_curatescape_options', 'a:75:{s:12:\"stealth_mode\";s:1:\"1\";s:13:\"contact_email\";s:16:\"holanda@test.com\";s:16:\"enable_app_links\";s:1:\"0\";s:10:\"ios_app_id\";s:0:\"\";s:14:\"android_app_id\";s:0:\"\";s:16:\"twitter_username\";s:27:\"https://twitter.com/MJoacoo\";s:16:\"youtube_username\";s:0:\"\";s:13:\"facebook_link\";s:27:\"https://twitter.com/MJoacoo\";s:18:\"pinterest_username\";s:0:\"\";s:18:\"instagram_username\";s:27:\"https://twitter.com/MJoacoo\";s:11:\"tumblr_link\";s:0:\"\";s:11:\"reddit_link\";s:0:\"\";s:12:\"sponsor_name\";s:0:\"\";s:5:\"about\";s:762:\"<span>En 1999 nació “Archivos del Sur”, una subcomisión de la Biblioteca Popular “Osvaldo Bayer” de Villa la Angostura, Neuquén. Nuestro propósito desde un comienzo fue recuperar y hacer visibles las memorias de los pobladores de la región del Nahuel Huapi. En estos años de trabajo, con amplio esfuerzo y colaboración, hemos conseguido conformar un amplio archivo fotográfico, documental y audiovisual que fuimos presentando en distintos formatos: libros, programas de radio, micro documentales. Es parte de esta línea de trabajo la que desde ahora daremos a conocer también a través de este medio. Esperamos que este espacio permita que todos podamos conocer, discutir y repensar las memorias históricas de la localidad y la región.</span>\";s:11:\"default_nav\";s:1:\"1\";s:15:\"quicklink_story\";s:1:\"1\";s:14:\"quicklink_tour\";s:1:\"1\";s:13:\"quicklink_map\";s:1:\"1\";s:22:\"homepage_map_placement\";s:6:\"middle\";s:20:\"homepage_tours_scope\";s:6:\"random\";s:16:\"random_or_recent\";s:6:\"recent\";s:23:\"homepage_featured_order\";s:8:\"modified\";s:13:\"homepage_tags\";s:1:\"1\";s:16:\"google_analytics\";s:0:\"\";s:7:\"typekit\";s:0:\"\";s:8:\"fontdeck\";s:0:\"\";s:13:\"fonts_dot_com\";s:0:\"\";s:12:\"google_fonts\";s:22:\"Playfair+Display:latin\";s:11:\"comments_id\";s:0:\"\";s:13:\"tour_comments\";s:1:\"0\";s:10:\"cc_license\";s:4:\"none\";s:10:\"cc_version\";s:1:\"4\";s:15:\"cc_jurisdiction\";s:4:\"intl\";s:10:\"link_color\";s:0:\"\";s:16:\"link_color_hover\";s:0:\"\";s:20:\"secondary_link_color\";s:0:\"\";s:26:\"secondary_link_color_hover\";s:0:\"\";s:19:\"header_footer_color\";s:0:\"\";s:29:\"secondary_header_footer_color\";s:0:\"\";s:12:\"marker_color\";s:0:\"\";s:21:\"featured_marker_color\";s:0:\"\";s:20:\"featured_marker_star\";s:1:\"0\";s:18:\"cluster_text_color\";s:0:\"\";s:19:\"cluster_small_color\";s:0:\"\";s:20:\"cluster_medium_color\";s:0:\"\";s:19:\"cluster_large_color\";s:0:\"\";s:10:\"clustering\";s:1:\"1\";s:15:\"tour_clustering\";s:1:\"0\";s:17:\"cluster_intensity\";s:2:\"15\";s:9:\"fitbounds\";s:1:\"0\";s:9:\"map_style\";s:14:\"STAMEN_TERRAIN\";s:16:\"logo_size_adjust\";s:1:\"0\";s:21:\"logo_background_color\";s:0:\"\";s:15:\"custom_meta_img\";N;s:14:\"apple_icon_144\";N;s:7:\"favicon\";N;s:19:\"item_label_singular\";s:0:\"\";s:17:\"item_label_plural\";s:0:\"\";s:19:\"tour_label_singular\";s:0:\"\";s:17:\"tour_label_plural\";s:0:\"\";s:11:\"tour_header\";s:0:\"\";s:9:\"tour_info\";s:0:\"\";s:10:\"custom_css\";s:0:\"\";s:18:\"custom_footer_html\";s:0:\"\";s:19:\"use_sitewide_search\";s:1:\"0\";s:19:\"default_tour_search\";s:1:\"1\";s:19:\"default_file_search\";s:1:\"0\";s:19:\"default_page_search\";s:1:\"0\";s:9:\"cta_title\";s:23:\"Contactate con nosotros\";s:8:\"cta_text\";s:76:\"Help us continue to fund in-depth research with your tax-deductible donation\";s:16:\"cta_button_label\";s:10:\"Donate Now\";s:14:\"cta_button_url\";s:5:\"/home\";s:21:\"cta_button_url_target\";s:1:\"1\";s:16:\"enable_dark_mode\";s:1:\"0\";s:7:\"lg_logo\";s:36:\"d8522235477557f1a2a849e0ca3030b4.png\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_plugins`
--

CREATE TABLE `omeka_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_plugins`
--

INSERT INTO `omeka_plugins` (`id`, `name`, `active`, `version`) VALUES
(1, 'Coins', 1, '2.0.3'),
(2, 'CuratescapeAdminHelper', 1, '1.3.3'),
(3, 'CuratescapeJSON', 1, '1.2.6'),
(4, 'ExhibitBuilder', 1, '3.4.2'),
(5, 'Geolocation', 1, '3.2.2'),
(6, 'MoreUserRoles', 1, '1.0.2'),
(7, 'SimplePages', 1, '3.1.2'),
(8, 'SuperRss', 1, '1.1.0'),
(9, 'TourBuilder', 1, '1.7.3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_processes`
--

CREATE TABLE `omeka_processes` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('starting','in progress','completed','paused','error','stopped') COLLATE utf8_unicode_ci NOT NULL,
  `args` text COLLATE utf8_unicode_ci NOT NULL,
  `started` timestamp NOT NULL DEFAULT '2000-01-01 00:00:00',
  `stopped` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_records_tags`
--

CREATE TABLE `omeka_records_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag_id` int(10) UNSIGNED NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_schema_migrations`
--

CREATE TABLE `omeka_schema_migrations` (
  `version` varchar(16) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_schema_migrations`
--

INSERT INTO `omeka_schema_migrations` (`version`) VALUES
('20100401000000'),
('20100810120000'),
('20110113000000'),
('20110124000001'),
('20110301103900'),
('20110328192100'),
('20110426181300'),
('20110601112200'),
('20110627223000'),
('20110824110000'),
('20120112100000'),
('20120220000000'),
('20120221000000'),
('20120224000000'),
('20120224000001'),
('20120402000000'),
('20120516000000'),
('20120612112000'),
('20120623095000'),
('20120710000000'),
('20120723000000'),
('20120808000000'),
('20120808000001'),
('20120813000000'),
('20120914000000'),
('20121007000000'),
('20121015000000'),
('20121015000001'),
('20121018000001'),
('20121110000000'),
('20121218000000'),
('20130422000000'),
('20130426000000'),
('20130429000000'),
('20130701000000'),
('20130809000000'),
('20140304131700'),
('20150211000000'),
('20150310141100'),
('20150814155100'),
('20151118214800'),
('20151209103299'),
('20151209103300'),
('20161209171900'),
('20170331084000'),
('20170405125800'),
('20200127165700');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_search_texts`
--

CREATE TABLE `omeka_search_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `public` tinyint(1) NOT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_search_texts`
--

INSERT INTO `omeka_search_texts` (`id`, `record_type`, `record_id`, `public`, `title`, `text`) VALUES
(1, 'SimplePagesPage', 1, 1, 'About', 'About <p>This is an example page. Feel free to replace this content, or delete the page and start from scratch.</p> '),
(10, 'Item', 8, 1, 'Población Inés Pafian', 'Población Inés Pafian Archivos del Sur Población Inés Pafian – Traful Sud\r\n\r\nSe consignan datos correspondientes al Censo Francisco Sanjuan de 1946 y al Censo APN de 1965.\r\n\r\nEn 1946, luego de relevar el área, Francisco Sanjuán, oficial del ejército, elaboró un informe sobre las seccionales Traful y Traful Norte. A partir de los datos allí consignados, podemos conocer estadios de desarrollo económico y social, relaciones de parentesco de las poblaciones y diferentes matices regionales.\r\n\r\nSe extrae información del libro Esculpidos en el Tiempo, arqueología e historia de Traful y Cuyin Manzano – Jacqueline Guindon y Mario Jorge Silveira – educo – 2008.\r\n\r\nDe acuerdo a la información disponible en el Censo APN del año 1965, Inés Pafian nació en Traful, Provincia de Neuquén, el 25 de abril de 1908. La misma reside en la población junto a su familia desde 1908-10. Anteriormente Inés Pafian residía en la zona de Nahuel Huapi.\r\n\r\nLos padres de Inés Pafian fueron José Ángel Paichil y María Inés Pafian. Ambos señalados como los primeros habitantes de la llamada laguna Traful, luego de la campaña de apropiación militar de la Patagonia denominada “Conquista del Desierto”.\r\n\r\nEn el Censo APN se señala que Inés Pafian (viuda de Paichil) se casó en segundas nupcias con don Adolfo Calfueque, chileno de 65 años (1900). Los hijos e hijas registrados en dicho censo son: Germán (21 años), Bernardo (18 años), Hermelinda (38 años), Griselda (34 años), Dionila (31 años). Todos, menos Hermelinda, vivían en la población.\r\n\r\nTambién convivían la población las siguientes personas: Gerónimo Leiva (14), Domingo Calfueque (11), Raúl Garcés (12), Teoblado Garcés (9), Raquel Garcés (6), Sergio Garcés (3), Benilde Calfueque (7), Héctor Atilio Calfueque (3 meses).\r\n\r\nAdemás, Inés Pafian tenía tres hijas más llamadas María Irma (10 años), María Esther (5 años) y Marías Inés (7 años).\r\n\r\nLa población disponía de dos galpones, uno de 5mx6m y otro de 4mx4m, ambos en estado precario; un corral y 1500 metros de cercos. La casa era de 4m x 8m construida en dos plantas. La planta baja estaba conformada por tres dormitorios y la planta alta por dos dormitorios. Las paredes, pisos y techos eran de madera. Además, en la población había una casa de 5m x 6m con un dormitorio y una cocina en regular estado de conservación.\r\n\r\nHabía, además, una hectárea cultivada con pastos y hortalizas, árboles frutales que reunían 25 manzanos, 18 ciruelos, 1 peral y 5 guindos. Se registra que la familia tenía un carro de 1000 kg de carga y no disponía de embarcación. En cuanto a los animales, había 26 vacunos, 36 lanares y 17 yeguarizos. Estos eran propiedad de Adolfo Calfueque, y tenían boleto y marca propia.\r\n\r\nCon respecto a las ocupaciones de la población, Inés Pafian se dedicaba a quehaceres domésticos. Tenía autorización para poblar con el Permiso Precario de Ocupación y Pastaje (PPOP) n° 14 obtenido el 22 de abril de 1937, extendido por La Dirección General de Parques Nacionales. El resto de los integrantes, se dedicaba al cuidado de animales y a realizar trabajos fuera de la casa, las hijas como empleadas domésticas y los hijos en tareas rurales. '),
(11, 'Item', 9, 1, 'Población Anselmo Chabol', 'Población Anselmo Chabol Archivos del Sur <p><span style=\"font-weight:400;\">Don Atanasio Chabol se asienta en la base del cerro El Colorado, en una bahía natural que se llama Puerto Chabol. Cruzó la cordillera a principios de siglo junto a la familia Eggers que se asentó en La Estanzuela, población vecina. Mientras los Eggers compraron la propiedad, los Chabol no pudieron, quedaron ubicados en un terreno fiscal. </span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">Según el primer relevamiento realizado en 1936 por el peón de vigilancia de Parques Nacionales, José del Carmen Fuentes, los Chabol ocuparon el territorio a partir de 1922. La memoria oral relata una serie de idas y venidas hasta su asentamiento definitivo en el lote 61, distrito VI en la diagramación de la Colonia Agrícola Pastoril Nahuel Huapi de 1902. Está ubicado en el Perilago del Nahuel Huapi. </span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">En la 1° acta de Pastaje que firmó el hijo de Atanasio, don Anselmo Chabol, se asegura la tenencia de 1 yeguarizo, 27 vacunos y una hectárea de huerta. Parques Nacionales concedió el Permiso Precario de Ocupación y Pastaje n° 5 el 31 de marzo de 1937. A partir de entonces quedaron en condiciones de precariedad en relación a la tenencia de la tierra y, además, con limitaciones respecto de su uso. </span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">En 1938 se realiza la Ficha Personal de Poblador Fronterizo donde se asevera que don Anselmo Chabol nació en Osorno el 25 de abril de 1895, de profesión chacarero-jornalero. Sus padres se llamaban Atanasio Chabol y Rafaela Mansilla. Se casó con Elvira Martínez, hija de don Tomás Martínez. Fue catalogado como buen poblador, sin antecedentes y cumplidor de las ordenanzas de Parque Nacional.</span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">En abril de 1938 se solicita al Estado Mayor General del Ejército que determine la situación de todos los ciudadanos chilenos en la frontera. Don Anselmo fue evaluado de forma positiva, pese a ser chileno, por tener ya tres hijos argentinos: Delia, Rosa del Carmen y Pablo. </span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">En 1945 se realiza nuevamente la Ficha del Poblador Fronterizo donde se registra que la fecha de su nacimiento fue el 21 de abril de 1893. El dato importante es que don Anselmo está en la zona desde 1909, es decir que llegó a El Colorado con 16 años. Este dato coincide con el relato de su hijo Samuel Chabol. </span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">En 1955 don Anselmo solicitó introducir lanares a cambio de vacunos. Se autorizó 4 lanares por 1 vacuno.</span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">En 1965 se realizó un censo general de pobladores muy completo. Se registró que don Anselmo nació el 21 de abril de 1887 (curioso tres fechas de nacimiento en distintos censos), cruzó la cordillera en 1909 y que en 1915 vivió en El Machete donde conoció a su compañera Elvira Martínez. Trabajó en changas y explotaciones forestales. Trabajó muchos años en la estancia Quetrihue de la familia Lynch y con el turismo que visitaba el Parque Arrayanes en sus comienzos. </span></p>\n<p><span style=\"font-weight:400;\">Registro de bienes:</span></p>\n<ul><li style=\"font-weight:400;\"><span style=\"font-weight:400;\">Casa de madera de 6x9 de ciprés - 1 cocina y tres dormitorios – galpón 5x6- cerco palo a pique 400 mts- cerco varones 600 mts</span></li>\n<li style=\"font-weight:400;\"><span style=\"font-weight:400;\">27 vacunos - 30 lanares- 1 yeguarizo y 3 perros.</span></li>\n<li style=\"font-weight:400;\"><span style=\"font-weight:400;\">La marca es de su suegro Tomás Martínez y la señal no posee - martillo arriba oreja derecha</span></li>\n<li style=\"font-weight:400;\"><span style=\"font-weight:400;\">Huerta 1 ha hortalizas – 8 manzanos- 4 ciruelas- 3 guindos- 8 cerezos</span></li>\n<li style=\"font-weight:400;\"><span style=\"font-weight:400;\">1 bote madera a remo 5 mts y motor Archimedes 5 HP - Bueyes con carro 300kg</span></li>\n</ul><span style=\"font-weight:400;\">Las personas vivientes (no todas en la población) son sus hijos Pablo, Delia, Rosa, María, Juan, Elba, Samuel, Fresia, Porfiria, Silvia. Hijos de Delia: Azucena, Baltazar, Heraldo, Apolinario, Blanca, Aurelia. Hijos de Rosa: Albino, Elías, Marta y Roman.</span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">En 1967 se autorizó la construcción de una vivienda familiar debido al estado de la vivienda original, pero solo con una extracción de 25 metros cúbicos de ciprés.</span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">El 8 de octubre de 1970 fallece don Anselmo.</span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">Hoy (2021 ) viven en la población Silvia, Pila, Azucena y Heraldo. </span><span style=\"font-weight:400;\"><br /></span><span style=\"font-weight:400;\">Después de la erupción del volcán Puyehue (2011) se logró el permiso de Parques Nacionales para realizar un camping agreste.</span><br /><br /> <br />Serie documental de UNLPam: Silvia y Pila Chabol '),
(12, 'Item', 10, 1, 'Población Eggers', 'Población Eggers Archivos del Sur <p>Según el libro “A Cien años de la Colonia Agrícola Nahuel Huapi” de Ricardo “Yipi” Vallmitjana, los Eggers eran una familia numerosa que poseía en el sur de Chile importantes concesiones de tierra dedicadas a la ganadería. En el Censo Nacional Argentino de 1895 figura Conrado Eggers e Isora Pardo junto a sus once hijos como pobladores de la Vega Maipú en San Martín de los Andes. Conrado Eggers recorre el Nahuel Huapi y en 1899 se establece como encargado de las once mil hectáreas que gestionará el Dr Marcos Zorrila (ex Ministro de Agricultura de la Nación) ubicadas en península Huemul. La familia vivían en Puerto Savanah y para 1902 poseían 300 vacas y 500 ovejas.<br /><br />Tanto el padre Conrado como sus hijos se inscribieron en 1900 solicitando tierras como aspirantes a colonos de Nahuel Huapi. En aquellos años, Federico estaba asentado en Alto Bonito. Cuando en septiembre de 1902 se adjudicaron las fracciones de la Colonia Agrícola Nahuel Huapi por decreto que firmó el presidente Roca, les correspondieron el lote 73 a Conrado y el 74 a Armando Eggers. Estas parcelas fueron solicitadas expresamente con conocimiento del terreno ubicado al pie del cerro Millaqueo. Precisamente en el sitio donde Antonio Millaqueo tenía un par de ranchos.<br /><br />Conrado y Armando Eggers recibieron la posesión de sus lotes en abril de 1903 al igual que Arturo Eggers que le correspondió en otra sección. Debido a que los lotes vecinos adjudicados correspondían a escandinavos que no se presentaron, le dieron la oportunidad a los Eggers de cambiar el 74 por el 72.<br /><br />El caso de la familia Eggers es muy interesante ya que nos permite ver cómo determinados colonos pudieron comprar el lote y tener la propiedad tan ansiada por la mayoría de los fiscaleros. Mucho incidió el capital de trabajo de la familia Eggers y su amplia experiencia en el desarrollo agropecuario.<br /><br />Veamos como Vallmitjana detalla los lotes de los Eggers con sus adelantos, gracias al informe de la oficina de Tierras y Colonias efectuado en 1909 a lo cual le agrega antecedentes de distintas fuentes:<br /><br /><em>Lote Pastoril 72: Concesionario Armando Eggers. Mejoras en 1909: dos casas con cuatro piezas. 1000metros de cercos de madera – un arado – siembras 5 has de trigo, 4 has de avena, 1 ha de pasto. Ganados: 4 bueyes, 8 caballos, 100 vacas, 6 yeguarizos. El capital de explotación $ 4845. </em><br /><em>Lote pastoril 73: Concesionario Conrado Eggers- informe de 1907 donde se expresa: es antiguo poblador del lago y un buen colono, pues a pesar de lo poco aparente que es el lote para pastoreo y agricultura tiene hechos en éste trabajos de importancia: ha construido el mejor chalet de la Colonia. Un chalet de madera de altos y bajos compuesto de nueve piezas, un galpón para caballeriza, gallineros. Un jardín, varios cuadros cercados con madera de buena extensión con 6 has de sembrados de trigo, papas etc. Cien frutales de dos años de varias clases que parece que darán resultado pues están con mucha vida. Haciendas 200 vacas, 100 ovejas, 15 equinos y algunos porcinos.<br /></em><br />Conrado Eggers hizo uso en 1907 del art. 13 de la ley del 12 de octubre de 1884 que expresa: \"si el poseedor después de haber cumplido durante dos años las obligaciones de población establecidas en el art. 6 (adoptar ciudadanía argentina) quisiese obtener anticipadamente la propiedad del lote ocupado tendrá derecho a que se escriture abonando $500 por la tierra\". Es decir, de concesionario pasó a ser adquiriente y propietario por escritura ratificada por el Presidente de la Nación Figueroa Alcorta (expte 8.130E-1907). Simultáneamente Armando Eggers adquirió por parte de la Nación el lote 72. Motivaron la compra y escrituración de los bienes, que podrían adquirir gratuitamente, los rumores que corrían en la colonia sobre la ampliación de reserva de tierras con destino a Parque Nacional. Además, por estar sus asentamientos en un sitio aislado de la Colonia, prefirieron definir el futuro por escritura.<br /><br />Efectivamente, en 1908 el gobierno dispuso retirar de la oferta pública los lotes libres de la colonia Agrícola Nahuel Huapi para incorporarlos al Parque Nacional. Esta decisión gubernamental no afectó a los concesionarios, pero sí señaló las limitaciones futuras de la Colonia.<br />El establecimiento de Conrado Eggers se denominó La Estanzuela y a falta de caminos tenía acceso naval: Puerto Venus, nombre derivado del excelente velero que el ingeniero naval Otto Mühlempfordt construyó para Eggers.<br /><br />Por su parte, Armando tenía otro puerto: Puerto Tigre- topónimo originado en el sobrenombre de un joven obrero que falleció en el sitio. En Puerto Tigre funcionó un astillero donde Mühlempfordt construyó diversas naves, siendo muy recordada la lancha Correntoso que transportaba hasta 18 pasajeros- con visos de uso turístico. La lancha fue construida por pedido de Primo Capraro y cuando se botó en 1927, Capraro organizó un gran festejo al que asistieron casi un centenar de invitados que fueron agasajados con un asado amenizado por la banda de música del pueblo. Puerto Tigre era un punto de visita por el turismo de los años 20.<br /><br />La familia Eggers había instalado un molino harinero para elaborar el trigo que cosechaban y se movía con una caldera de vapor de 4Cv de potencia. Se contaba en La Estanzuela con una herrería muy completa y una carpintería de dos bancos de trabajo. En el hogar de Conrado Eggers podía consultarse una nutrida biblioteca que contenía un centenar de volúmenes de texto alemán. En 1922/23 la sucesión de Armando Eggers transfirió el lote Pastoril 73 a favor de una sociedad encabezada por Anastasio Nordezholdz.<br /><br />Varios de los pobladores que emigraron de Chile, encontraron trabajo con los Eggers, después hicieron posesión en lotes fiscales del perilago Nahuel Huapi como los Chabol y los Martin. En el censo de pobladores de 1935 que hace Parques nacionales para saber quiénes viven en su nuevo territorio censaron el lote 73 de la Sucesión Conrado Eggers.<br /><br />En ese momento vivían Frida 60 años, Erminia 58 años, Valdemar 55 años, Arturo 52 años, Selmar 50 años, Griselda 46 años, Julio 40 años y Aurora de 38 años. También vivían en la población Armando Eggers 27 años, Margarita Silva 17 años, Adam Eggers 18 años, Sra. Burgos 70 años.<br /><br />Hay una casa 8x4 con tablas y piso de ciprés – tejuela de ciprés – casa de 10 x 6 de block, techo tejuelas, casa 16 x 12 tablas y pisos de ciprés y un galpón de 7x 4.<br />Arturo Eggers tenía 150 vacunos, 12 yeguarizos, 30 lanares, 5 cabríos, 5 porcinos, 4 perros y 12 gallinas.<br />Frida Eggers tenía 50 vacunos, 12 yeguarizos, 120 lanares, 6 perros 20 gallinas y 3 pavos.<br />En la población había 140 manzanos, 3 cerezas y 3 guindos.<br />Se ordeñan en el tambo unas 30 vacas. Hay un bote a vela de 5,50 x 1,30 mts y bote a vela 6 x 1,60 mts.<br />Señala el informe que hay higiene y moral y sus habitantes gozan de buena salud.<br /><br /><br />Getulio Eggers</p>\n<p><strong>Entrevista a Lucas Melo</strong><br /></p> '),
(13, 'Item', 11, 1, 'Población Lorenzo Martinez', 'Población Lorenzo Martinez Archivos del Sur La visita del peón de vigilancia José del Carmen Fuentes  a don Lorenzo Martínez en el lote 48 llamado El Arbolito en 1936, lo encontró con dos hectáreas cultivadas, sin riego, con 47 vacunos y 27 lanares. Fuentes verificó que no tiene autorización (propiedad) y le levanta el acta para Permiso Precario de Ocupación y Pastaje.\r\nEn diciembre de 1936, con datos del censo realizado en 1934-35,  PN afirmó que don Lorenzo reside en la zona desde 1911, cruzando de niño la cordillera; bien conceptuado y sin antecedentes policiales. Por lo cual, en abril de 1937, se resolvió la concesión del permiso precario de ocupación y pastaje.\r\nEn julio de 1938, el agente de vigilancia Vedoya, realizó la ficha personal de la cual resultó que don Lorenzo había nacido el 20 de febrero de 1901 en Río Bueno, Chile. De profesión ganadero. Sus padres fueron José Tomás Martínez y María Inés Vejar. Estaba casado con Rosa Edilia Martínez. En 1938 sus hijos eran Edilia 6 años, Jorge 5 años, Irma 4 años y Lorenzo 2 años, todos argentinos.\r\nEn octubre de 1938 el Estado Mayor del Ejército consintió que se le otorgue el PPOP llevándose a cabo en noviembre con el número 48.\r\nEn 1942 don Lorenzo solicitó la introducción de cinco caballos a los ya asignados para trasladar a los turistas del hotel Correntoso en lancha a la población y de allí en caballo hasta el Dormilón. En febrero de 1943 se accedió al pedido con la condición de retirar hacienda, quedando el permiso del PPOP con 15 yeguarizos, 37 vacunos y 27 Ovinos.\r\nEn 1942 se realizó la ficha del poblador fronterizo donde se registran los nacimientos de Luis 7 años, Ana 3 años y Rubén Ramiro de 1 año. También se registró su residencia en Chile entre su nacimiento en 1901 y 1908 cuando cruzó la frontera.\r\nEn 1946 la Comisión Nacional de Zonas de Seguridad aprobó su permanencia por los 37 años de residencia y los siete hijos argentinos.\r\nEn 1949 don Lorenzo solicitó la introducción de 25 ovejas lo cual se autoriza con la condición de quitar un vacuno por 4 ovejas introducidas.\r\nDon Lorenzo no registró inconvenientes en los pagos de pastajes.\r\nEn el Censo de 1965 también fueron registrados los últimos hijos de don Lorenzo: Rosa Esther, María Teresa y Juan Carlos. Estos junto a Jorge y Lorenzo (h) viven en la población ahora llamada Sucesión Lorenzo Martínez. Se describe la casa de madera con techos, paredes y pisos de madera, de 6 x 6 con una cocina y dos dormitorios, un galpón de madera en mal estado de 10 x 5 y un galpón de 3 x 5 también en mal estado, 50 metros de cerco palo a pique y 400 metros de cerco tipo varón; 25 vacunos, 40 lanares, 2 yeguarizos y 3 perros; una hectárea cultivada con hortalizas diversas, 10 manzanos, 2 cerezos y 6 ciruelas.\r\nHoy han vuelto a la población varios de sus hijos y nietos. Juan Carlos Martínez administra un camping agreste.\r\n '),
(14, 'Tour', 2, 1, 'Poblaciones del Perilago del Nahuel Huapi', 'Poblaciones del Perilago del Nahuel Huapi  '),
(15, 'Tour', 3, 1, 'Poblaciones de la Ruta 7 lagos', 'Poblaciones de la Ruta 7 lagos  '),
(16, 'Tour', 4, 1, 'Poblaciones del Perilago del Traful', 'Poblaciones del Perilago del Traful  ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_sessions`
--

CREATE TABLE `omeka_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `modified` bigint(20) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_sessions`
--

INSERT INTO `omeka_sessions` (`id`, `modified`, `lifetime`, `data`) VALUES
('15fdcc1e6a74b506cb356ad0b5342901', 1641497471, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a223835343833393138623063643933386134323434313437353936303239613338223b7d5f5f5a467c613a313a7b733a34353a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f7468656d655f636f6e6669675f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313634313530303837323b7d7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f7468656d655f636f6e6669675f637372667c613a313a7b733a343a2268617368223b733a33323a223264333566633437313038353164633037656136396662313061303936616337223b7d),
('3e06c0bce1f77f4c7e0780318b5d17c9', 1642537658, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a226632613338306165643733633635396339366466343638633435396666616530223b7d),
('ecc18f0a4021c0d1e989b81f9420c9fd', 1642192175, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a226564636338316436366134653464303732653363353665393335666330363366223b7d);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_simple_pages_pages`
--

CREATE TABLE `omeka_simple_pages_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `modified_by_user_id` int(10) UNSIGNED NOT NULL,
  `created_by_user_id` int(10) UNSIGNED NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `slug` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `inserted` timestamp NOT NULL DEFAULT '2000-01-01 00:00:00',
  `order` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `template` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `use_tiny_mce` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_simple_pages_pages`
--

INSERT INTO `omeka_simple_pages_pages` (`id`, `modified_by_user_id`, `created_by_user_id`, `is_published`, `title`, `slug`, `text`, `updated`, `inserted`, `order`, `parent_id`, `template`, `use_tiny_mce`) VALUES
(1, 1, 1, 1, 'About', 'about', '<p>This is an example page. Feel free to replace this content, or delete the page and start from scratch.</p>', '2021-12-20 20:56:23', '2021-12-20 20:56:23', 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_tags`
--

CREATE TABLE `omeka_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_tags`
--

INSERT INTO `omeka_tags` (`id`, `name`) VALUES
(1, 'el joac'),
(3, 'el joaco'),
(2, 'guanaco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_tours`
--

CREATE TABLE `omeka_tours` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `credits` text COLLATE utf8_unicode_ci,
  `postscript_text` text COLLATE utf8_unicode_ci,
  `featured` tinyint(1) DEFAULT '0',
  `public` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_tours`
--

INSERT INTO `omeka_tours` (`id`, `title`, `description`, `credits`, `postscript_text`, `featured`, `public`) VALUES
(2, 'Poblaciones del Perilago del Nahuel Huapi', '', '', '', 0, 1),
(3, 'Poblaciones de la Ruta 7 lagos', '', '', '', 0, 1),
(4, 'Poblaciones del Perilago del Traful', '', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_tour_items`
--

CREATE TABLE `omeka_tour_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `tour_id` int(10) UNSIGNED NOT NULL,
  `ordinal` int(11) NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `omeka_tour_items`
--

INSERT INTO `omeka_tour_items` (`id`, `tour_id`, `ordinal`, `item_id`) VALUES
(3, 2, 0, 11),
(4, 2, 1, 8),
(5, 2, 2, 10),
(6, 2, 3, 9),
(7, 3, 0, 8),
(8, 3, 1, 10),
(9, 3, 2, 11),
(10, 3, 3, 9),
(11, 4, 0, 9),
(12, 4, 1, 11),
(13, 4, 2, 10),
(14, 4, 3, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_users`
--

CREATE TABLE `omeka_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `role` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `omeka_users`
--

INSERT INTO `omeka_users` (`id`, `username`, `name`, `email`, `password`, `salt`, `active`, `role`) VALUES
(1, 'joaco', 'Super User', 'joaquinmansilla@fiqus.com', 'f3c4a9e3fb66b320a0c283f7b3c48f19063c5e2c', 'cacf3cc7d4c3d510', 1, 'super');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `omeka_users_activations`
--

CREATE TABLE `omeka_users_activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `omeka_collections`
--
ALTER TABLE `omeka_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `public` (`public`),
  ADD KEY `featured` (`featured`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indices de la tabla `omeka_elements`
--
ALTER TABLE `omeka_elements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_element_set_id` (`element_set_id`,`name`),
  ADD UNIQUE KEY `order_element_set_id` (`element_set_id`,`order`),
  ADD KEY `element_set_id` (`element_set_id`);

--
-- Indices de la tabla `omeka_element_sets`
--
ALTER TABLE `omeka_element_sets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `record_type` (`record_type`);

--
-- Indices de la tabla `omeka_element_texts`
--
ALTER TABLE `omeka_element_texts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `record_type_record_id` (`record_type`,`record_id`),
  ADD KEY `element_id` (`element_id`),
  ADD KEY `text` (`text`(20));

--
-- Indices de la tabla `omeka_exhibits`
--
ALTER TABLE `omeka_exhibits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `public` (`public`);

--
-- Indices de la tabla `omeka_exhibit_block_attachments`
--
ALTER TABLE `omeka_exhibit_block_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `block_id_order` (`block_id`,`order`);

--
-- Indices de la tabla `omeka_exhibit_pages`
--
ALTER TABLE `omeka_exhibit_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exhibit_id_parent_id_slug` (`exhibit_id`,`parent_id`,`slug`),
  ADD KEY `exhibit_id_order` (`exhibit_id`,`order`);

--
-- Indices de la tabla `omeka_exhibit_page_blocks`
--
ALTER TABLE `omeka_exhibit_page_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id_order` (`page_id`,`order`);

--
-- Indices de la tabla `omeka_files`
--
ALTER TABLE `omeka_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indices de la tabla `omeka_items`
--
ALTER TABLE `omeka_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_type_id` (`item_type_id`),
  ADD KEY `collection_id` (`collection_id`),
  ADD KEY `public` (`public`),
  ADD KEY `featured` (`featured`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indices de la tabla `omeka_item_types`
--
ALTER TABLE `omeka_item_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `omeka_item_types_elements`
--
ALTER TABLE `omeka_item_types_elements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_type_id_element_id` (`item_type_id`,`element_id`),
  ADD KEY `item_type_id` (`item_type_id`),
  ADD KEY `element_id` (`element_id`);

--
-- Indices de la tabla `omeka_keys`
--
ALTER TABLE `omeka_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indices de la tabla `omeka_locations`
--
ALTER TABLE `omeka_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indices de la tabla `omeka_options`
--
ALTER TABLE `omeka_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `omeka_plugins`
--
ALTER TABLE `omeka_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `active_idx` (`active`);

--
-- Indices de la tabla `omeka_processes`
--
ALTER TABLE `omeka_processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `started` (`started`),
  ADD KEY `stopped` (`stopped`);

--
-- Indices de la tabla `omeka_records_tags`
--
ALTER TABLE `omeka_records_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag` (`record_type`,`record_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indices de la tabla `omeka_schema_migrations`
--
ALTER TABLE `omeka_schema_migrations`
  ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Indices de la tabla `omeka_search_texts`
--
ALTER TABLE `omeka_search_texts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `record_name` (`record_type`,`record_id`);
ALTER TABLE `omeka_search_texts` ADD FULLTEXT KEY `text` (`text`);

--
-- Indices de la tabla `omeka_sessions`
--
ALTER TABLE `omeka_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `omeka_simple_pages_pages`
--
ALTER TABLE `omeka_simple_pages_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_published` (`is_published`),
  ADD KEY `inserted` (`inserted`),
  ADD KEY `updated` (`updated`),
  ADD KEY `created_by_user_id` (`created_by_user_id`),
  ADD KEY `modified_by_user_id` (`modified_by_user_id`),
  ADD KEY `order` (`order`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indices de la tabla `omeka_tags`
--
ALTER TABLE `omeka_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `omeka_tours`
--
ALTER TABLE `omeka_tours`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `omeka_tour_items`
--
ALTER TABLE `omeka_tour_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour` (`tour_id`);

--
-- Indices de la tabla `omeka_users`
--
ALTER TABLE `omeka_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `active_idx` (`active`);

--
-- Indices de la tabla `omeka_users_activations`
--
ALTER TABLE `omeka_users_activations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `omeka_collections`
--
ALTER TABLE `omeka_collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `omeka_elements`
--
ALTER TABLE `omeka_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `omeka_element_sets`
--
ALTER TABLE `omeka_element_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `omeka_element_texts`
--
ALTER TABLE `omeka_element_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `omeka_exhibits`
--
ALTER TABLE `omeka_exhibits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `omeka_exhibit_block_attachments`
--
ALTER TABLE `omeka_exhibit_block_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `omeka_exhibit_pages`
--
ALTER TABLE `omeka_exhibit_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `omeka_exhibit_page_blocks`
--
ALTER TABLE `omeka_exhibit_page_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `omeka_files`
--
ALTER TABLE `omeka_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `omeka_items`
--
ALTER TABLE `omeka_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `omeka_item_types`
--
ALTER TABLE `omeka_item_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `omeka_item_types_elements`
--
ALTER TABLE `omeka_item_types_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `omeka_keys`
--
ALTER TABLE `omeka_keys`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `omeka_locations`
--
ALTER TABLE `omeka_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `omeka_options`
--
ALTER TABLE `omeka_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT de la tabla `omeka_plugins`
--
ALTER TABLE `omeka_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `omeka_processes`
--
ALTER TABLE `omeka_processes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `omeka_records_tags`
--
ALTER TABLE `omeka_records_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `omeka_search_texts`
--
ALTER TABLE `omeka_search_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `omeka_simple_pages_pages`
--
ALTER TABLE `omeka_simple_pages_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `omeka_tags`
--
ALTER TABLE `omeka_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `omeka_tours`
--
ALTER TABLE `omeka_tours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `omeka_tour_items`
--
ALTER TABLE `omeka_tour_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `omeka_users`
--
ALTER TABLE `omeka_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `omeka_users_activations`
--
ALTER TABLE `omeka_users_activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
