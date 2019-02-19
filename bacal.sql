-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Июн 10 2017 г., 17:33
-- Версия сервера: 5.5.53
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bacal`
--

-- --------------------------------------------------------

--
-- Структура таблицы `answers`
--

CREATE TABLE `answers` (
  `answer_id` int(11) NOT NULL,
  `answer` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `answers`
--

INSERT INTO `answers` (`answer_id`, `answer`) VALUES
(1, 'В ситуації не був/не була'),
(2, 'Так'),
(3, 'Ні'),
(4, 'Незрозуміле питання'),
(5, 'Пропустити питання');

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci,
  `question_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`question_id`, `question`, `question_type`) VALUES
(1, 'Чи легко Ви робите вибір одного з можливих варіантів?', 'Узагальнюючий–Деталізуючий'),
(2, 'Чи необхідно Вам постійно повертатися до аналізу своїх минулих учинків?', 'Узагальнюючий–Деталізуючий'),
(3, 'Чи легко Ви сходитеся із незнайомими людьми?', 'Узагальнюючий–Деталізуючий'),
(4, 'Чи легко Ви розстаєтеся зі своїми знайомими (наприклад, якщо Ви переїжджаєте в інше місто)?', 'Узагальнюючий–Деталізуючий'),
(5, 'Чи легко Ви зважуєтеся на придбання нових речей?', 'Узагальнюючий–Деталізуючий'),
(6, 'Чи потрібно Вам «натхнення», щоб зробити якy-небудь дію (наприклад, написати лист)?', 'Узагальнюючий–Деталізуючий'),
(7, 'Чи подобається Вам обговорювати (наприклад, із друзями) хто і як діє, які симпатії й до кого проявляє, емоції, логічні висновки – свої та чужі?', 'Узагальнюючий–Деталізуючий'),
(8, 'Чи подобається Вам обговорювати об\'єкти, самопочуття, погоду, хто й у якому темпі працює, здібності конкретних людей і їхній розвиток?', 'Узагальнюючий–Деталізуючий'),
(9, 'Чи любите Ви чіткі й недвозначні завдання начальника?', 'Узагальнюючий–Деталізуючий'),
(10, 'Чи подобається Вам працювати в умовах, коли межі Вашої компетенції чітко зазначені?', 'Узагальнюючий–Деталізуючий'),
(11, 'Чи подобається Вам працювати в умовах, коли задається лише «загальний напрямок», а вибирати «конкретний шлях» доводиться Вам самим?', 'Узагальнюючий–Деталізуючий'),
(12, 'Коли Ви потрапляєте в нову ситуацію, для Вас важливо знати як саме потрібно в ній діяти?', 'Узагальнюючий–Деталізуючий'),
(13, 'Чи уявляєте Ви собі звичайно (як правило, найчастіше, тощо) результати своєї діяльності ще до її початку?', 'Узагальнюючий–Деталізуючий'),
(14, 'Чи необхідна (бажана) для Вас допомога для того, щоб оцінити зроблене Вами?', 'Узагальнюючий–Деталізуючий'),
(15, 'Чи легко Ви переносите почуття голоду?', 'Узагальнюючий–Деталізуючий'),
(16, 'Чи важливо для Вас, щоб Ваше «здрастуйте» (або щось інше; Ваше звертання до конкретної людини або групи людей взагалі) було помічено (відмічено) тими, до кого Ви звертаєтеся?', 'Узагальнюючий–Деталізуючий'),
(17, 'Коли Ви знайомитеся із новим для себе матеріалом, для Вас вивчення краще починати із загальної теорії, і тільки після цього переходити до практики?', 'Узагальнюючий–Деталізуючий'),
(18, 'Чи шукаєте Ви в довідниках виклад загальних методів і способів рішень, а також розбору одного-двох прикладів, щоб зрозуміти, як застосовувати цей матеріал? ', 'Узагальнюючий–Деталізуючий'),
(19, 'Коли Ви навчаєтеся новим рухам, для Вас важливо, щоб кожен рух був виправлений тренером?', 'Узагальнюючий–Деталізуючий'),
(20, 'Чи робите Ви імпульсивні вчинки?', 'Узагальнюючий–Деталізуючий'),
(21, 'Чи прагнете Ви всюди встановити «старі звичні» порядки та правила?', 'Узагальнюючий–Деталізуючий'),
(22, 'Чи швидко Ви адаптуєтеся при зміні «правил гри»?', 'Узагальнюючий–Деталізуючий'),
(23, 'Чи любите Ви робити що-небудь (діяти) «по шаблону», нічого не змінюючи від «справи» до «справи»?', 'Узагальнюючий–Деталізуючий'),
(24, 'Необхідність постійно діяти за цілком певними, раз і назавжди заданими правилам, – чи дратує це Вас?', 'Узагальнюючий–Деталізуючий'),
(25, 'Ви робите вчинки та дії, щоб вийти із того або іншого свого душевного (психологічного) стану, або ж, щоб увійти в нього/щоб прийти до нього?', 'Узагальнюючий–Деталізуючий'),
(26, 'Чи накопичуєте Ви в собі - а потім «вибухаєте» від «останньої краплі»?', 'Узагальнюючий–Деталізуючий'),
(27, 'Чи Ви відповідаєте на слово - словом, на емоцію - емоцією, на дію - дією?', 'Узагальнюючий–Деталізуючий'),
(28, 'Для Вас комфортно, коли Ви маєте можливість висловити свою думку (наприклад, невдоволення) з кожного конкретного приводу?', 'Узагальнюючий–Деталізуючий'),
(29, 'Для того, щоб прийняти рішення, Вам необхідно «прислухатися до себе»?', 'Узагальнюючий–Деталізуючий'),
(30, 'Чи любите Ви бути «у центрі уваги», у самій гущавині подій?', 'Учасник-Спостерігач'),
(31, 'Коли Вам погано, чи шукаєте Ви можливості «поплакатися в жилетку»?', 'Учасник-Спостерігач'),
(32, 'Для Вас відносини між людьми – це якась певна система відліку, на яку Ви спираєтеся?', 'Учасник-Спостерігач'),
(33, 'Чи вважаєте Ви, що людей треба пристосовувати до відносин?', 'Учасник-Спостерігач'),
(34, 'Чи вважаєте Ви, що суспільство буде оцінювати Вас за проявами Ваших особистих якостей, за Вашою активністю?', 'Учасник-Спостерігач'),
(35, 'Чи вважаєте Ви, що суспільство буде оцінювати Вас за Вашими відносинами з людьми (незалежно від того, які почуття вони у Вас викликають)?', 'Учасник-Спостерігач'),
(36, 'Чи вважаєте Ви, що кожна людина здатна поліпшити свій соціальний статус за допомогою самовдосконалення?', 'Учасник-Спостерігач'),
(37, 'Чи вважаєте Ви, що якщо людина займає в суспільстві скромне місце, то їй бракує яких-небудь соціально-значимих якостей?', 'Учасник-Спостерігач'),
(38, 'Чи вважаєте Ви, що кожен може підвищити свою соціальну значимість за допомогою вдосконалення своїх відносин із людьми? ', 'Учасник-Спостерігач'),
(39, 'Чи вважаєте Ви, що якщо хтось не цінується в суспільстві, то він неправильно сформував свої відносини із навколишніми?', 'Учасник-Спостерігач'),
(40, 'Чи вважаєте Ви, що постійні перевиховання і «моралізування» допомагають у вихованні гідної  людини?', 'Учасник-Спостерігач'),
(41, 'Чи подобається Вам створювати «закінчені» об\'єкти?', 'Учасник-Спостерігач'),
(42, 'Чи завжди Ви завершуєте справу, щоб надалі не вертатися до неї?', 'Учасник-Спостерігач'),
(43, 'Чи часто Ви повертаєтеся до написаних Вами раніше паперів (звітів, статей тощо)?', 'Учасник-Спостерігач'),
(44, 'Чи легко Ви можете відкласти розпочату Вами справу «на завтра»?', 'Учасник-Спостерігач'),
(45, 'Чи легко Вам взяти на себе відповідальність за якусь справу?', 'Учасник-Спостерігач'),
(46, 'Чи любите Ви висловлювати своє ставлення до об\'єктів – людей, речей тощо?', 'Учасник-Спостерігач'),
(47, 'Чи любите Ви, щоб звертали увагу на Вас?', 'Учасник-Спостерігач'),
(48, 'Чи любите Ви, коли звертають увагу на Ваші почуття?', 'Учасник-Спостерігач'),
(49, 'Чи легко Ви можете залишити недоїденою їжу на тарілці (у гостях, їдальнях і ресторанах тощо – тобто там, де її кількість дають без урахування Ваших звичок)?', 'Учасник-Спостерігач'),
(50, 'Чи легко Вам дивитися на людину при розмові (особливо в очі) - не відриваючи погляду від неї?', 'Учасник-Спостерігач'),
(51, 'Чи любите Ви розпочинати нові справи?', 'Учасник-Спостерігач'),
(52, 'Чи любите Ви доводити справу до завершеного стану?', 'Учасник-Спостерігач'),
(53, 'Чи прагнете Ви дограти комп\'ютерну гру «до кінця»?', 'Учасник-Спостерігач'),
(54, 'Чи легко Ви відриваєтеся від непрочитаної книги (наприклад, детектива)?', 'Учасник-Спостерігач'),
(55, 'Вам подобається працювати в умовах, коли виділено щось одне як головний напрямок?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(56, 'Коли на роботі постійно доводиться займатися одночасно багатьма речами, це Вас дратує?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(57, 'Коли Ви чим-небудь захоплені, наприклад, пишете або працюєте на комп\'ютері, то чи втрачаєте при цьому нитку розмови?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(58, 'Чи відволікає Вас від поточної діяльності необхідність спілкування?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(59, 'Коли у Вас багато предметів (сумок, пакетів тощо) - чи не забуваєте Ви щось із них?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(60, 'Ви волієте носити покупки в одній сумці, щоб не розкладати їх по декількох?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(61, 'Чи добре Ви уявляєте собі як виглядаєте в очах інших людей?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(62, 'Чи легко Ви спілкуєтеся із людьми? ', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(63, 'Чи легко Ви входите в незнайомі компанії?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(64, 'Своє спілкування з людьми Ви організовуєте відповідно до якихось правил або алгоритмів, які Ви виробили самі в процесі своєї діяльності?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(65, 'Ви використовуєте при роботі із людьми правила й норми, які засвоїли від інших (наприклад, із підручників типу Карнегі)?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(66, 'Чи вважаєте Ви, що свою потрібність людям потрібно доводити власними справами?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(67, 'Ви думаєте, що спілкування – це найголовніше для  друга або родича у важких ситуаціях (цілком достатня підтримка у такій ситуації)?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(68, 'Чи вважаєте Ви, що маєте права на почуття (емоції, час тощо) інших людей?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(69, 'Чи любите Ви переконувати співрозмовника у своїй правоті?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(70, 'Чи легко Вам попросити кого-небудь про що-небудь?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(71, 'Як Ви вважаєте: чи маєте Ви вплив на людей? ', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(72, 'Чи користуєтеся Ви впливом на людей?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(73, 'Чи піддаєтеся Ви на вмовляння інших? ', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(74, 'Чи вимагаєте Ви від людини доказів необхідності та потреби вчинити дії, які вона хоче від Вас?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(75, 'Чи вважаєте Ви, що свою обіцянку необхідно виконувати завжди й у всіх випадках?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(76, 'Чи завжди Ви виконуєте свої обіцянки?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(77, 'Чи вмієте Ви «запалити», «надихнути» людей?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(78, 'Ви думаєте, що найкращий спосіб для наснаги інших – це особистий приклад?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(79, 'Для того, щоб згуртувати колектив і надихнути його на плідну роботу, Ви користуєтеся рекомендованими (наприклад, у літературі) методами спілкування?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(80, 'Чи вмієте Ви оцінити працю, затрачену людиною (у тому числі - Вами) на виготовлення того або іншого об\'єкта (продукту)?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(81, 'Чи добре Ви «бачите» почуття та емоції інших людей?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(82, 'Чи любите Ви демонструвати свої почуття й емоції? ', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(83, 'Ви самі бачите, коли і яку емоцію Вам потрібно продемонструвати?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(84, 'Стриманість в емоціях - необхідність дотримуватися цього викликає у вас дискомфорт?)', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(85, 'Чи вмієте Ви визначати, коли наступає «час відпочити»?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(86, 'Чи швидко оволодівають Вами почуття та емоції?', 'Об\'єкт-Орієнтований–Зв’язок-орієнтований'),
(87, 'Чи любите Ви дивитися в дзеркало? ', 'Ототожнючий–Розмежовуючий'),
(88, 'Чи легко Ви ототожнюєте себе із тим, що бачите в дзеркалі?', 'Ототожнючий–Розмежовуючий'),
(89, 'Чи добре Ви диференціюєте свої відчуття?', 'Ототожнючий–Розмежовуючий'),
(90, 'Ви завжди правильно визначаєте причину свого нездужання?', 'Ототожнючий–Розмежовуючий'),
(91, 'Чи добре Ви відчуваєте (диференціюєте), що саме Вам зараз потрібно (хочеться)?', 'Ототожнючий–Розмежовуючий'),
(92, 'Чи стежите Ви за тим, щоб їжа була не тільки «смачною», але ще й «корисною»?', 'Ототожнючий–Розмежовуючий'),
(93, 'Чи вмієте Ви планувати (наприклад, своє життя) на тривалий проміжок часу? ', 'Ототожнючий–Розмежовуючий'),
(94, 'Чи хочеться Вам, щоб «тягар» прийняття стратегічних «рішень на майбутнє» здійснював за Вас хто-небудь інший (звичайно, кому Ви могли б це довірити)?', 'Ототожнючий–Розмежовуючий'),
(95, 'Чи добре Ви передбачаєте наслідки тих або інших своїх рішень, своїх вчинків?', 'Ототожнючий–Розмежовуючий'),
(96, 'Чи легко, чи швидко Ви приймаєте рішення, які стосуються Вас самих?', 'Ототожнючий–Розмежовуючий'),
(97, 'Чи володієте Ви певним «вбудованим» у Вас життєвим ритмом?', 'Ототожнючий–Розмежовуючий'),
(98, 'Чи любите Ви, щоб Вас хто-небудь втягував у свій власний «життєвий ритм»?', 'Ототожнючий–Розмежовуючий'),
(99, 'Чи любите Ви самі вживати заходів до зближення із об\'єктом Вашої уваги, інтересу або потягу?', 'Ототожнючий–Розмежовуючий'),
(100, 'Чи любите Ви, щоб «дистанцію у спілкуванні» із кимось визначали саме Ви самі?', 'Ототожнючий–Розмежовуючий'),
(101, 'Чи подобається Вам, коли Вас «вибирають», коли об\'єкт Вашого інтересу або уваги сам керує процесом зближення з ним? ', 'Ототожнючий–Розмежовуючий'),
(102, 'Чи ревниві Ви?', 'Ототожнючий–Розмежовуючий'),
(103, 'Чи вмієте Ви піклуватися про себе?', 'Ототожнючий–Розмежовуючий'),
(104, 'Чи вмієте Ви, чи подобається Вам піклуватися про інших?', 'Ототожнючий–Розмежовуючий'),
(105, 'Чи подобається Вам піклуватися про «своїх» (тобто про тих, кого саме Ви зараховуєте до «своїх»)? ', 'Ототожнючий–Розмежовуючий'),
(106, 'Чи впевнені Ви у своєму естетичному смаку? ', 'Ототожнючий–Розмежовуючий'),
(107, 'Чи довіряєте Ви діагнозу лікаря більше, аніж своїм відчуттям?', 'Ототожнючий–Розмежовуючий'),
(108, 'Чи добре Ви розподіляєте свій час? ', 'Ототожнючий–Розмежовуючий');

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE `results` (
  `result_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `results`
--

INSERT INTO `results` (`result_id`, `user_id`, `question_id`, `answer_id`) VALUES
(1, 1, 1, 2),
(2, 1, 2, 2),
(3, 1, 3, 2),
(4, 1, 4, 3),
(5, 1, 5, 3),
(6, 1, 6, 2),
(7, 1, 7, 3),
(8, 1, 8, 2),
(9, 1, 9, 2),
(10, 1, 10, 2),
(11, 1, 11, 3),
(12, 1, 12, 3),
(13, 1, 13, 3),
(14, 1, 14, 2),
(15, 1, 15, 2),
(16, 1, 16, 3),
(17, 1, 17, 3),
(18, 1, 18, 2),
(19, 1, 19, 3),
(20, 1, 20, 3),
(21, 1, 21, 3),
(22, 1, 22, 2),
(23, 1, 23, 3),
(24, 1, 24, 2),
(25, 1, 25, 4),
(26, 1, 26, 2),
(27, 1, 27, 3),
(28, 1, 28, 2),
(29, 1, 29, 3),
(30, 1, 30, 2),
(31, 1, 31, 2),
(32, 1, 32, 3),
(33, 1, 33, 2),
(34, 1, 34, 2),
(35, 1, 35, 4),
(36, 1, 36, 2),
(37, 1, 37, 3),
(38, 1, 38, 2),
(39, 1, 39, 2),
(40, 1, 40, 3),
(41, 1, 41, 2),
(42, 1, 42, 3),
(43, 1, 43, 2),
(44, 1, 44, 2),
(45, 1, 45, 2),
(46, 1, 46, 3),
(47, 1, 47, 2),
(48, 1, 48, 2),
(49, 1, 49, 3),
(50, 1, 50, 2),
(51, 1, 51, 2),
(52, 1, 52, 2),
(53, 1, 53, 3),
(54, 1, 54, 3),
(55, 1, 55, 2),
(56, 1, 56, 2),
(57, 1, 57, 2),
(58, 1, 58, 4),
(59, 1, 59, 3),
(60, 1, 60, 2),
(61, 1, 61, 3),
(62, 1, 62, 2),
(63, 1, 63, 2),
(64, 1, 64, 2),
(65, 1, 65, 2),
(66, 1, 66, 2),
(67, 1, 67, 3),
(68, 1, 68, 2),
(69, 1, 69, 3),
(70, 1, 70, 3),
(71, 1, 71, 2),
(72, 1, 72, 3),
(73, 1, 73, 3),
(74, 1, 74, 2),
(75, 1, 75, 2),
(76, 1, 76, 2),
(77, 1, 77, 2),
(78, 1, 78, 2),
(79, 1, 79, 3),
(80, 1, 80, 2),
(81, 1, 81, 2),
(82, 1, 82, 3),
(83, 1, 83, 2),
(84, 1, 84, 3),
(85, 1, 85, 2),
(86, 1, 86, 3),
(87, 1, 87, 3),
(88, 1, 88, 2),
(89, 1, 89, 4),
(90, 1, 90, 3),
(91, 1, 91, 3),
(92, 1, 92, 2),
(93, 1, 93, 3),
(94, 1, 94, 3),
(95, 1, 95, 2),
(96, 1, 96, 3),
(97, 1, 97, 3),
(98, 1, 98, 3),
(99, 1, 99, 2),
(100, 1, 100, 3),
(101, 1, 101, 3),
(102, 1, 102, 2),
(103, 1, 103, 2),
(104, 1, 104, 2),
(105, 1, 105, 2),
(106, 1, 106, 2),
(107, 1, 107, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `userstest`
--

CREATE TABLE `userstest` (
  `user_id` int(11) NOT NULL,
  `first_name` text COLLATE utf8_unicode_ci,
  `last_name` text COLLATE utf8_unicode_ci,
  `department` text COLLATE utf8_unicode_ci,
  `organization` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `password` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `userstest`
--

INSERT INTO `userstest` (`user_id`, `first_name`, `last_name`, `department`, `organization`, `email`, `password`, `created_at`) VALUES
(1, 'Дмитро', 'Дуржинський', 'МІБ', 'ВНТУ', 'tilck081195@gmail.com', 'ab25b5d4b3a371bdc7e37fb31f629428', 1496948207);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`answer_id`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Индексы таблицы `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`result_id`),
  ADD KEY `user_id` (`user_id`,`question_id`,`answer_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `answer_id` (`answer_id`);

--
-- Индексы таблицы `userstest`
--
ALTER TABLE `userstest`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `answers`
--
ALTER TABLE `answers`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT для таблицы `results`
--
ALTER TABLE `results`
  MODIFY `result_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT для таблицы `userstest`
--
ALTER TABLE `userstest`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`),
  ADD CONSTRAINT `results_ibfk_3` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`answer_id`),
  ADD CONSTRAINT `results_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `userstest` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
