-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Сен 08 2018 г., 00:45
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vbwin3jb_geguti`
--

-- --------------------------------------------------------

--
-- Структура таблицы `pre_home`
--
-- Создание: Сен 04 2018 г., 13:06
-- Последнее обновление: Сен 04 2018 г., 23:06
--

DROP TABLE IF EXISTS `pre_home`;
CREATE TABLE `pre_home` (
  `option_name` varchar(255) NOT NULL,
  `option_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pre_home`
--

INSERT INTO `pre_home` (`option_name`, `option_value`) VALUES
('contacts_header1', 'Нужна верстка или разработка?'),
('contacts_header2', 'Давайте обсудим задачу!'),
('contacts_header_sub', 'Чтобы назвать точные сроки и цену - мне необходимо посмотреть все макеты, которые нужно сверстать, а так же ознакомиться с ТЗ (если таковое имеется) '),
('fio', 'Кречик Юрий'),
('header', 'Web разработка и верстка сайтов'),
('meta_description', ''),
('meta_keywords', ''),
('meta_title', 'Профессиональная разработка и верстка сайтов.'),
('name', 'Разработчик/Верстальщик'),
('stack', 'PHP|MySQL|WordPress|OpenCart|JS|jQuery|HTML5|CSS3|Bootstrap|БЭМ|WC3');

-- --------------------------------------------------------

--
-- Структура таблицы `pre_menu`
--
-- Создание: Сен 04 2018 г., 13:06
--

DROP TABLE IF EXISTS `pre_menu`;
CREATE TABLE `pre_menu` (
  `menu_id` mediumint(8) NOT NULL,
  `menu_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pre_menu`
--

INSERT INTO `pre_menu` (`menu_id`, `menu_name`) VALUES
(1, 'Главная');

-- --------------------------------------------------------

--
-- Структура таблицы `pre_menu_items`
--
-- Создание: Сен 04 2018 г., 13:06
-- Последнее обновление: Сен 04 2018 г., 13:06
--

DROP TABLE IF EXISTS `pre_menu_items`;
CREATE TABLE `pre_menu_items` (
  `item_id` mediumint(8) NOT NULL,
  `menu_id` mediumint(8) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_href` varchar(255) DEFAULT NULL,
  `item_js` tinyint(1) DEFAULT NULL,
  `item_target` tinyint(1) DEFAULT NULL,
  `item_sort` mediumint(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pre_menu_items`
--

INSERT INTO `pre_menu_items` (`item_id`, `menu_id`, `item_name`, `item_href`, `item_js`, `item_target`, `item_sort`) VALUES
(1, 1, 'Главная', '#header', 1, 0, 1),
(2, 1, 'Обо мне', '#about', 1, 0, 2),
(3, 1, 'Портфолио', '#portfolio', 1, 0, 3),
(4, 1, 'Отзывы', '#reviews', 1, 0, 4),
(5, 1, 'Контакты', '#contacts', 1, 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `pre_pages`
--
-- Создание: Сен 07 2018 г., 21:29
-- Последнее обновление: Сен 07 2018 г., 21:41
--

DROP TABLE IF EXISTS `pre_pages`;
CREATE TABLE `pre_pages` (
  `page_id` mediumint(8) NOT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `page_text` text,
  `page_sef` varchar(255) DEFAULT NULL,
  `page_dateline` int(10) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pre_pages`
--

INSERT INTO `pre_pages` (`page_id`, `page_name`, `page_text`, `page_sef`, `page_dateline`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
(1, 'Условия использования сайта', '<p class=\"page__paragraph\">Внимание, перед использованием сайта «geguti.ru» (далее — Сайт), расположенного на доменном имени <a href=\"https://geguti.ru/\">geguti.ru</a>, ознакомьтесь с условиями использования данного сайта (далее — Условия использования), размещенными на этой странице. Любое использование Вами сайта «geguti.ru» свидетельствует, что вы прочитали данные Условия и согласны с ними.</p>\r\n<ul class=\"page__list\">\r\n    <li class=\"page__list-header\">1. Определение терминов</li>\r\n    <li class=\"page__list-itemitem\">1.1 В настоящих Условиях использования сайта «geguti.ru» используются следующие термины:</li>\r\n    <li class=\"page__list-itemitem\">1.1.1. <strong>Владелец сайта «geguti.ru» (далее – Администратор сайта)</strong> – администратор доменного имени <a href=\"https://geguti.ru/\" class=\"page__link\">geguti.ru</a>, который управляет и администрирует Сайт в соответствии со своими внутренними правилами, положениями и регламентами.</li>\r\n    <li class=\"page__list-itemitem\">1.1.2. <strong>Пользователь сайта «geguti.ru» (далее — Пользователь)</strong> – физическое или юридическое лицо, имеющее доступ к Сайту, посредством сети Интернет и использующее Сайт.</li>\r\n    <li class=\"page__list-itemitem\">1.1.3. <strong>«Анкор ссылки»</strong> (от англ. anchor — якорь, привязка) — текст ссылки, помещенный внутри тегов &lt;a&gt;&lt;/a&gt;. Анкор — неотъемлемая часть большинства гиперссылок в интернете, помогающая связывать и идентифицировать веб-документ «по ту сторону ссылки». Анкор — это подсказка, с помощью которой, мы узнаём куда мы попадем, нажав на гипертекстовую ссылку.</li>\r\n    <li class=\"page__list-header\">2. Авторские права</li>\r\n    <li class=\"page__list-itemitem\">2.1. Любая информация, а так же материалы, опубликованные на сайте «geguti.ru», включая текстовое и графическое содержание, структуру и оформление страниц, является объектом авторского права и охраняется в соответствии с законом \"Об авторском праве и смежных правах\", ГК РФ, часть 4, раздел VII: Права на результаты интеллектуальной деятельности\", другими разделами \"Гражданского кодекса РФ\", \"Уголовным кодексом РФ\", а также в соответствии с действующим законодательством других стран в области защиты авторских прав.</li>\r\n    <li class=\"page__list-itemitem\">2.2. Вся информация и материалы сайта «geguti.ru» представлены исключительно для ознакомления Пользователей с видом деятельности владельца сайта и не могут быть использованы Пользователем для других целей.</li>\r\n    <li class=\"page__list-header\">3. Условия использования</li>\r\n    <li class=\"page__list-itemitem\">3.1. Копирование, воспроизведение и/или цитирование информации, а так же иных материалов сайта «geguti.ru», включая текстовое и графическое содержание, структуру и оформление страниц, без письменного разрешения Администратора сайта строго запрещено!</li>\r\n    <li class=\"page__list-itemitem\">3.2. Пользователь имеет право знакомиться с материалами Сайта, а так же ссылаться на какую либо страницу сайта «geguti.ru», указав в анкоре ссылки название страницы, на которую ссылается.</li>\r\n    <li class=\"page__list-header\">4. Нарушение Условий использования Сайта</li>\r\n    <li class=\"page__list-itemitem\">4.1. В случая нарушения Условий использования — Администратор сайта имеет право обратиться с письменной жалобой к владельцу хостинга (сервера), на котором расположен сайт-нарушитель - и попросить воздействовать на нарушителя, вплоть до расторжения договора хостинга (в соответствии с правилами всех хостинг-провайдеров — на сайтах запрещена публикация любых материалов, нарушающих авторское право их владельцев);</li>\r\n    <li class=\"page__list-itemitem\">4.2. В случая нарушения Условий использования — Администратор сайта имеет право обратиться с письменной жалобой в администрацию поисковых систем Яндекс и Google, что в соотвествии с их правилами (см. например правила компании Google: \"Закон о защите авторских прав в цифровую эпоху\") может повлечь \"удаление или отключение доступа к материалу, заявленному в качестве объекта нарушения\";</li>\r\n    <li class=\"page__list-itemitem\">4.3. Нарушение авторских прав влечет за собой ответственность, предусмотренную статьей 1301 ГК РФ, в случаях нарушения авторского права или исключительного права на произведение, Администратор сайта, наряду с использованием других применимых способов защиты и мер ответственности, установленных настоящим Кодексом (статьи 1250, 1252 и 1253), вправе в соответствии с пунктом 3 статьи 1252 ГК РФ требовать по своему выбору от нарушителя вместо возмещения убытков выплаты компенсации: в размере от десяти тысяч рублей до пяти миллионов рублей, определяемом по усмотрению суда.</li>\r\n    <li class=\"page__list-header\">5. Изменение Условий использование Сайта</li>\r\n    <li class=\"page__list-itemitem\">5.1. Администратор сайта «geguti.ru» имеет право вносить изменения в настоящие Условия использования Сайта без согласия Пользователя. При внесении изменений в актуальной редакции указывается дата последнего обновления. Пользователь при этом должен самостоятельно отслеживать изменения Условий использования данного Сайта.</li>\r\n    <li class=\"page__list-itemitem\">5.2. Новая редакция Условий использования Сайта вступает в силу с момента ее размещения, если иное не предусмотрено новой редакцией Условий использования.</li>\r\n    <li class=\"page__list-itemitem\">5.3. Все предложения или вопросы по настоящим Условиям использования Сайта следует сообщать с помощью <a href=\"https://geguti.ru/#contacts\" class=\"page__link\">формы обратной связи</a>, расположенной на сайте «geguti.ru».</li>\r\n    <li class=\"page__list-itemitem\">5.4. Действующая редакция всегда находится на странице по адресу <a href=\"https://geguti.ru/usloviya-ispolzovaniya-sajta.html\" class=\"page__link\">https://geguti.ru/usloviya-ispolzovaniya-sajta.html</a></li>\r\n</ul>', 'usloviya-ispolzovaniya-sajta', NULL, 'Условия использования сайта', '', ''),
(2, 'Политика конфиденциальности', '<p class=\"page__paragraph\">Настоящая Политика конфиденциальности персональных данных (далее – Политика конфиденциальности) действует в отношении всей информации, которую владелец сайта «geguti.ru», расположенного на доменном имени <a href=\"https://geguti.ru/\" class=\"page__link\">geguti.ru</a>, может получить о физическом или юридическом лице - Пользователе сайта, во время использования им настоящего сайта (далее - Сайт), а так же при заполнении им форм обратной связи и/или иных форм, находящихся на Сайте и/или использовании им услуг, предоставляемых посредством данного сайта.</p>\r\n<ul class=\"page__list\">\r\n    <li class=\"page__list-header\">1. Определение терминов</li>\r\n    <li class=\"page__list-item\">1.1 В настоящей Политике конфиденциальности используются следующие термины:</li>\r\n    <li class=\"page__list-item\">1.1.1. <strong>Владелец сайта «geguti.ru» (далее – Администратор сайта)</strong> – администратор доменного имени <a href=\"https://geguti.ru/\">geguti.ru</a>, который организует и/или осуществляет обработку персональных данных, а также определяет цели обработки персональных данных, состав персональных данных, подлежащих обработке, действия (операции), совершаемые с персональными данными.</li>\r\n    <li class=\"page__list-item\">1.1.2. <strong>Персональные данные</strong> — любая информация, относящаяся к прямо или косвенно определенному или определяемому физическому лицу (субъекту персональных данных).</li>\r\n    <li class=\"page__list-item\">1.1.3. <strong>Обработка персональных данных</strong> — любое действие (операция) или совокупность действий (операций), совершаемых с использованием средств автоматизации или без использования таких средств с персональными данными, включая сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение персональных данных.</li>\r\n    <li class=\"page__list-item\">1.1.4. <strong>Конфиденциальность персональных данных</strong> — обязательное для соблюдения Администратором сайта или иным получившим доступ к персональным данным лицом, требование не допускать их распространения без согласия субъекта персональных данных или наличия иного законного основания.</li>\r\n    <li class=\"page__list-item\">1.1.5. <strong>Пользователь сайта «geguti.ru» (далее — Пользователь)</strong> – физическое или юридическое лицо, имеющее доступ к Сайту, посредством сети Интернет и использующее Сайт.</li>\r\n    <li class=\"page__list-item\">1.1.6. <strong>«Cookies»</strong> — небольшой фрагмент данных, отправленный веб-сервером и хранимый на компьютере пользователя, который веб-клиент или веб-браузер каждый раз пересылает веб-серверу в HTTP-запросе при попытке открыть страницу соответствующего сайта.</li>\r\n    <li class=\"page__list-item\">1.1.7. <strong>«IP-адрес»</strong> — уникальный сетевой адрес узла в компьютерной сети, построенной по протоколу IP.</li>\r\n    <li class=\"page__list-header\">2. Общие положения</li>\r\n    <li class=\"page__list-item\">2.1. Использование Пользователем сайта «geguti.ru» означает полное и безоговорочное согласие Пользователя с настоящей Политикой конфиденциальности и указанными в ней условиями обработки его персональной информации</li>\r\n    <li class=\"page__list-item\">2.2. В случае несогласия с условиями Политики конфиденциальности Пользователь должен немедленно прекратить использование сайта и/или каких-либо сервисов/услуг, доступных при использовании данного сайта.</li>\r\n    <li class=\"page__list-item\">2.3. Настоящая Политика конфиденциальности применяется только к сайту «geguti.ru». Администратор сайта не контролирует и не несет ответственность за сайты третьих лиц, на которые Пользователь может перейти по ссылкам, доступным на данном сайте. На таких сайтах у пользователя может собираться или запрашиваться иная персональная информация, а также могут совершаться иные действия.</li>\r\n    <li class=\"page__list-item\">2.4. Администратор сайта «geguti.ru» не проверяет достоверность персональной информации, предоставляемой пользователями сайта, и не осуществляет контроль за их дееспособностью. Однако, исходит из того, что пользователь полностью дееспособен в силу достижения установленного законом возраста или на иных, предусмотренных действующим законодательством, условиях и предоставляет достоверную и достаточную персональную информацию о себе, используя форму обратной связи или других форм, находящихся на сайте и поддерживает эту информацию в актуальном состоянии.</li>\r\n    <li class=\"page__list-header\">3. Предмет политики конфиденциальности</li>\r\n    <li class=\"page__list-item\">3.1. В рамках настоящей Политики конфиденциальности под «персональными данными пользователя» понимаются:</li>\r\n    <li class=\"page__list-item\">3.1.1. Персональная информация, которую Пользователь предоставляет о себе самостоятельно при заполнении форм обратной связи и/или иных форм, находящихся на сайте «geguti.ru», включая свои персональные данные:</li>\r\n    <li class=\"page__list-item\">\r\n        <ul class=\"page__list page__list_dash page__list_margin-left\">\r\n            <li class=\"page__list-item\">имя Пользователя;</li>\r\n            <li class=\"page__list-item\">контактный телефон Пользователя;</li>\r\n            <li class=\"page__list-item\">адрес электронной почты (e-mail).</li>\r\n        </ul>\r\n    </li>\r\n    <li class=\"page__list-item\">3.1.2. К Персональным данным, в рамках настоящей Политики конфиденциальности, так же относятся данные, которые автоматически передаются в процессе использования Сайта «geguti.ru» с помощью установленного на устройстве Пользователя программного обеспечения, в том числе:</li>\r\n    <li class=\"page__list-item\">\r\n        <ul class=\"page__list page__list_dash page__list_margin-left\">\r\n        	<li class=\"page__list-item\">IP адрес;</li>\r\n        	<li class=\"page__list-item\">информация из cookies;</li>\r\n        	<li class=\"page__list-item\">информация о браузере;</li>\r\n        	<li class=\"page__list-item\">дата и время посещения;</li>\r\n        	<li class=\"page__list-item\">адрес запрашиваемой страницы;</li>\r\n            <li class=\"page__list-item\">иная подобная информация.</li>\r\n        </ul>\r\n    </li>\r\n    <li class=\"page__list-item\">3.1.3. Любая иная персональная информация, не оговоренная выше (используемые браузеры, операционные системы и т. д.) подлежит надежному хранению и нераспространению, за исключением случаев, предусмотренных в п. 5.3. настоящей Политики конфиденциальности.</li>\r\n    <li class=\"page__list-header\">4. Цели сбора и обработки персональной информации</li>\r\n    <li class=\"page__list-item\">4.1. Администратор сайта «geguti.ru» собирает и хранит у себя только те персональные данные, которые необходимы для предоставления и оказания услуг (исполнения соглашений и договоров с Пользователем), а также для исполнения обязательств, возлагаемых на Администрацию сайта действующим законодательством Российской Федерации.</li>\r\n    <li class=\"page__list-item\">4.2. Администратор сайта использует персональную информацию в следующих целях:</li>\r\n    <li class=\"page__list-item\">\r\n        <ul class=\"page__list page__list_dash page__list_margin-left\">\r\n            <li class=\"page__list-item\">идентификации стороны в рамках соглашений и договоров Пользователя с владельцем сайта, в том числе для предоставления и оказания Услуг;</li>\r\n            <li class=\"page__list-item\">выявления и предотвращения фактов мошенничества и/или незаконного получения, использования информационных Продуктов и/или получения Услуг, предоставляемых Сайтом;</li>\r\n            <li class=\"page__list-item\">установления связи с Пользователем, в том числе для направления уведомлений, запросов и информации, касающихся функционирования Сайта (например, в случае если Пользователь забыл свой логин/пароль), а так же другой информации, которая может представлять интерес для конечного Пользователя;</li>\r\n            <li class=\"page__list-item\">улучшения качества функционирования Сайта, его удобства для Пользователей, разработки и/или приобретения информационных Продуктов, разработка и/или оказание более качественных услуг;</li>\r\n            <li class=\"page__list-item\">обработки запросов и заявок от Пользователей на предоставление и/или оказание персонализированных услуг;</li>\r\n            <li class=\"page__list-item\">направления информационной рассылки новостного и рекламного характера &nbsp;о новых информационных Продуктах/Услугах и специальных предложениях в пределах, разрешенных действующим законодательством Российской Федерации;&nbsp;&nbsp;</li>\r\n            <li class=\"page__list-item\">проведения статистических и иных исследований на основе обезличенных данных.</li>\r\n        </ul>\r\n    </li>\r\n    <li class=\"page__list-header\">5. Условия обработки персональной информации пользователя и её передачи третьим лицам</li>\r\n    <li class=\"page__list-item\">5.1. Администратор сайта «geguti.ru» хранит персональную информацию пользователей в соответствии со своими внутренними правилами, положениями и регламентами.</li>\r\n    <li class=\"page__list-item\">5.2. Администратор сайта принимает все необходимые и достаточные организационные, технические меры для защиты персональной информации пользователя от неправомерного или случайного доступа, уничтожения, изменения, блокирования, копирования, распространения, а также от иных неправомерных действий с ней третьих лиц. Вместе с тем, Администратор сайта рассчитывает, что Пользователь со своей стороны добросовестно подходит к хранению своей персональной информации (в особенности паролей доступа) и не сообщает ее третьим лицам.&nbsp;</li>\r\n    <li class=\"page__list-item\">5.3. Администратор сайта вправе передать персональную информацию пользователя третьим лицам только в следующих случаях:</li>\r\n    <li class=\"page__list-item\">\r\n        <ul class=\"page__list page__list_dash page__list_margin-left\">\r\n            <li class=\"page__list-item\">если Пользователь выразил свое письменное согласие на такие действия;</li>\r\n            <li class=\"page__list-item\">если Передача предусмотрена российским или иным применимым законодательством в рамках установленной законодательством процедуры;</li>\r\n            <li class=\"page__list-item\">в целях обеспечения возможности защиты прав и законных интересов Администратора сайта или третьих лиц в случаях, когда Пользователь нарушает Политику конфиденциальности</li>\r\n        </ul>\r\n    </li>\r\n    <li class=\"page__list-item\">5.4. При обработке персональных данных пользователей Администратор сайта руководствуется Федеральным законом РФ «О персональных данных» №152-ФЗ от 27.07.2006</li>\r\n    <li class=\"page__list-header\">6. Изменение и удаление персональной информации</li>\r\n    <li class=\"page__list-item\">6.1. Пользователь может в любой момент изменить (обновить, дополнить) предоставленную им персональную информацию или её часть, а также параметры её конфиденциальности.</li>\r\n    <li class=\"page__list-item\">6.2. Администрация сайта вправе уничтожить Персональную информацию о Пользователе без его согласия, а именно произвести действия, в результате которых становится невозможным восстановить содержание данной информации.</li>\r\n    <li class=\"page__list-header\">7. Изменение Политики конфиденциальности</li>\r\n    <li class=\"page__list-item\">7.1. Администратор сайта «geguti.ru» имеет право вносить изменения в настоящую Политику конфиденциальности без согласия Пользователя. При внесении изменений в актуальной редакции указывается дата последнего обновления. Пользователь при этом должен самостоятельно отслеживать изменения Политики конфиденциальности.</li>\r\n    <li class=\"page__list-item\">7.2. Новая редакция Политики&nbsp;конфиденциальности вступает в силу с момента ее размещения, если иное не предусмотрено новой редакцией Политики.</li>\r\n    <li class=\"page__list-item\">7.3. Все предложения или вопросы по настоящей Политике конфиденциальности следует сообщать с помощью <a href=\"https://geguti.ru/#contacts\" class=\"page__link\">формы обратной связи</a>, расположенной на сайте «geguti.ru».</li>\r\n    <li class=\"page__list-item\">7.4. Действующая редакция всегда находится на странице по адресу <a href=\"https://geguti.ru/politika-konfidenczialnosti.html\" class=\"page__link\">https://geguti.ru/politika-konfidenczialnosti.html</a></li>\r\n</ul>', 'politika-konfidenczialnosti', NULL, 'Политика конфиденциальности', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `pre_portfolio`
--
-- Создание: Сен 04 2018 г., 13:06
-- Последнее обновление: Сен 04 2018 г., 13:06
--

DROP TABLE IF EXISTS `pre_portfolio`;
CREATE TABLE `pre_portfolio` (
  `portfolio_id` mediumint(8) NOT NULL,
  `portfolio_name` varchar(255) DEFAULT NULL,
  `portfolio_image` varchar(255) DEFAULT NULL,
  `portfolio_tags` varchar(255) DEFAULT NULL,
  `portfolio_href` varchar(255) DEFAULT NULL,
  `portfolio_order` mediumint(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pre_portfolio`
--

INSERT INTO `pre_portfolio` (`portfolio_id`, `portfolio_name`, `portfolio_image`, `portfolio_tags`, `portfolio_href`, `portfolio_order`) VALUES
(1, 'Интернет магазин шин и дисков EShina', '1.jpg', 'Разработка|Opencart|Верстка', 'http://www.eshina.ru/', 1),
(2, 'Сайт компании Пилотрейд', '2.jpg', 'Разработка|Wordpress', 'http://www.pilotrade.ru/', 2),
(3, 'Интернет магазин шин и дисков Ms-Tyres', '3.jpg', 'Разработка|Самописный', 'http://www.ms-tyres.ru/', 3),
(4, 'Страна Детства - Cоциальная сеть для мам', '4.jpg', 'Разработка|Доработка', 'http://stranadetstva.ru/', 4),
(5, 'Интернет - Магазин \"Shop-tilda.ru\"', '5.jpg', 'Разработка|Opencart', 'http://shop-tilda.ru/', 5),
(6, 'Интернет-магазин инструмента и техники Оптимист', '6.jpg', 'Разработка|Opencart', 'https://optimist-nnov.ru/', 6),
(7, 'Интернет-магазин сантехники Кран и Ванна', '7.jpg', 'Разработка|Opencart', 'http://kranivanna.ru/', 7),
(8, 'Лендинг \"Девелопмент и консалтинг недвижимости\"', '8.jpg', 'Верстка|BEM|Адаптивная', '/portfolio/landing1/index.html', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `pre_reviews`
--
-- Создание: Сен 04 2018 г., 13:06
-- Последнее обновление: Сен 04 2018 г., 13:06
--

DROP TABLE IF EXISTS `pre_reviews`;
CREATE TABLE `pre_reviews` (
  `review_id` mediumint(8) NOT NULL,
  `review_name` varchar(255) DEFAULT NULL,
  `review_login` varchar(255) DEFAULT NULL,
  `review_avatar` varchar(255) DEFAULT NULL,
  `review_text` text,
  `review_order` mediumint(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pre_reviews`
--

INSERT INTO `pre_reviews` (`review_id`, `review_name`, `review_login`, `review_avatar`, `review_text`, `review_order`) VALUES
(1, 'Евгений Ульрих', 'fonbegemot', '2828491_120xs.jpg', 'Быстрое и качественное выполнение поставленных задач. Рекомендую в качество исполнительного человека, не теряющего времени на пустые разговоры.', 1),
(2, 'Никита Паученко', 'Steel-Gamers', '2695945_120xs.jpg', 'Сделал всё очень качественно, проверил полностью всю систему бесплатно :-) В связи с этим решили перечислить не большую премию за старания. Рекомендую!', 2),
(3, 'Святослав Белимов', 'belimovlab', 'userpic_male.png', 'Юрий предоставил приложение, полностью устраивающее меня. Все необходимые настройки произвел моментально. Могу сказать одно - это тот человек, который знает что делает и что говорит. Мои рекомендации.', 3),
(4, 'Никита Щипанов', 'nikitschip', '2651946_120xs.jpg', 'Работа была выполнена профессионально и раньше обговоренного срока. Доволен сотрудничеством. Рекомендую Юрия как хорошего работника.', 4),
(5, 'Артём Леонов', 'iSlevin', '2605703_120xs.jpg', 'Юрий очень быстро и качественно решил поставленную задачу, в то время как другие писали что-то несвязное. Огромное спасибо!\r\nРекомендую.', 5),
(6, 'А.в. Чаузов', 'rzes', 'userpic_male.png', 'Все выполнено качественно и в кратчайшие сроки, просто приятно работать с такими людьми! Надеюсь на дальнейшее сотрудничество', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `pre_skills`
--
-- Создание: Сен 04 2018 г., 13:06
-- Последнее обновление: Сен 04 2018 г., 13:06
--

DROP TABLE IF EXISTS `pre_skills`;
CREATE TABLE `pre_skills` (
  `skill_id` mediumint(8) NOT NULL,
  `skill_name` varchar(255) DEFAULT NULL,
  `skill_order` mediumint(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pre_skills`
--

INSERT INTO `pre_skills` (`skill_id`, `skill_name`, `skill_order`) VALUES
(1, 'Разработчик', NULL),
(2, 'Верстальщик', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `pre_skills_items`
--
-- Создание: Сен 04 2018 г., 13:06
-- Последнее обновление: Сен 04 2018 г., 13:06
--

DROP TABLE IF EXISTS `pre_skills_items`;
CREATE TABLE `pre_skills_items` (
  `item_id` mediumint(8) NOT NULL,
  `skill_id` mediumint(8) DEFAULT NULL,
  `item_icon` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_text` varchar(255) DEFAULT NULL,
  `item_order` mediumint(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pre_skills_items`
--

INSERT INTO `pre_skills_items` (`item_id`, `skill_id`, `item_icon`, `item_name`, `item_text`, `item_order`) VALUES
(1, 1, 'coding.svg', 'PHP', 'Разработка скриптов на чистом PHP 5 и PHP 7.', 1),
(2, 1, 'mysql.svg', 'MySQL', 'Оптимизация баз данных, проектирование структуры БД.', 2),
(3, 1, 'wordpress-logo-of-a-letter-in-a-circle.svg', 'WordPress', 'Создание тем, плагинов и сайтов на WordPress и WooCommerce.', 3),
(4, 1, 'opencart.svg', 'OpenCart', 'Разработка магазина, создание тем, разработка модулей.', 4),
(5, 2, 'html5.svg', 'HTML5', 'Адаптивная и резиновая верстка по стандартам HTML5', 1),
(6, 2, 'css-3.svg', 'CSS3', 'Верстка с использованием CSS3', 2),
(7, 2, 'Boostrap_logo.svg', 'Bootstrap', 'Верстка под Bootstrap', 3),
(8, 2, 'code-fork-symbol.svg', 'БЭМ', 'Использование в верстке БЭМ методологии', 4),
(9, 2, 'wordpress-logo-of-a-letter-in-a-circle.svg', 'Wordpress', 'Верстка и натяжка под Wordpress', 5),
(10, 2, 'opencart.svg', 'Opencart', 'Верстка и натяжка под Opencart', 6),
(11, 2, 'information.svg', 'Custom', 'Верстка и натяжка под самописные CMS', 7),
(12, 2, 'w3c_logo.svg', 'WC3', 'Верстка по стандартам WC3', 8);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pre_home`
--
ALTER TABLE `pre_home`
  ADD PRIMARY KEY (`option_name`);

--
-- Индексы таблицы `pre_menu`
--
ALTER TABLE `pre_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Индексы таблицы `pre_menu_items`
--
ALTER TABLE `pre_menu_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Индексы таблицы `pre_pages`
--
ALTER TABLE `pre_pages`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `page_sef` (`page_sef`);

--
-- Индексы таблицы `pre_portfolio`
--
ALTER TABLE `pre_portfolio`
  ADD PRIMARY KEY (`portfolio_id`);

--
-- Индексы таблицы `pre_reviews`
--
ALTER TABLE `pre_reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Индексы таблицы `pre_skills`
--
ALTER TABLE `pre_skills`
  ADD PRIMARY KEY (`skill_id`);

--
-- Индексы таблицы `pre_skills_items`
--
ALTER TABLE `pre_skills_items`
  ADD PRIMARY KEY (`item_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pre_menu`
--
ALTER TABLE `pre_menu`
  MODIFY `menu_id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `pre_menu_items`
--
ALTER TABLE `pre_menu_items`
  MODIFY `item_id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `pre_pages`
--
ALTER TABLE `pre_pages`
  MODIFY `page_id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `pre_portfolio`
--
ALTER TABLE `pre_portfolio`
  MODIFY `portfolio_id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `pre_reviews`
--
ALTER TABLE `pre_reviews`
  MODIFY `review_id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `pre_skills`
--
ALTER TABLE `pre_skills`
  MODIFY `skill_id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `pre_skills_items`
--
ALTER TABLE `pre_skills_items`
  MODIFY `item_id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
