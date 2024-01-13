-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2019 at 08:03 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(11) NOT NULL,
  `channels_name` varchar(256) NOT NULL,
  `channels_url` varchar(256) NOT NULL,
  `pub_date` datetime NOT NULL,
  `current_status` enum('ENABLED','DISABLED','','') NOT NULL,
  `title` varchar(256) NOT NULL,
  `last_modified_date` datetime NOT NULL,
  `last_count` int(11) NOT NULL,
  `curr_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `channels_name`, `channels_url`, `pub_date`, `current_status`, `title`, `last_modified_date`, `last_count`, `curr_count`) VALUES
(6, 'Times of India', 'https://timesofindia.indiatimes.com/rssfeeds/296589292.cms', '2019-06-12 00:00:00', 'ENABLED', 'World Breaking News', '2019-06-22 22:03:27', 0, 0),
(12, 'The New York Times', 'https://rss.nytimes.com/services/xml/rss/nyt/Europe.xml', '0000-00-00 00:00:00', 'ENABLED', 'Europe News', '2019-06-22 18:16:24', 0, 0),
(13, 'BBC News', 'http://feeds.bbci.co.uk/news/world/rss.xml', '0000-00-00 00:00:00', 'ENABLED', 'World Update', '2019-06-22 18:16:24', 0, 0),
(15, 'ESPN', 'https://www.espn.com/espn/rss/news', '0000-00-00 00:00:00', 'ENABLED', 'Latest TOP news', '2019-06-22 18:16:25', 0, 0),
(16, 'NBC Meet the Press Podcast', 'http://podcastfeeds.nbcnews.com/meetthepress', '0000-00-00 00:00:00', 'ENABLED', 'NBC Meet the Press', '2019-06-22 18:16:25', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `feed`
--

CREATE TABLE `feed` (
  `feed_id` int(11) NOT NULL,
  `feed_title` varchar(256) NOT NULL,
  `published_date` datetime NOT NULL,
  `detected_date` datetime NOT NULL,
  `provider_link` varchar(256) NOT NULL,
  `channels_id` int(11) NOT NULL,
  `image_url` varchar(256) NOT NULL,
  `description` varchar(256) NOT NULL,
  `remarks` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feed`
--

INSERT INTO `feed` (`feed_id`, `feed_title`, `published_date`, `detected_date`, `provider_link`, `channels_id`, `image_url`, `description`, `remarks`) VALUES
(1, 'Will not let Nawaz Sharif become \'Morsi\' of Pakistan: Maryam Nawaz', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/pakistan/will-not-let-nawaz-sharif-become-morsi-of-pakistan-maryam-nawaz/articleshow/69907176.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/pakistan/will-not-let-nawaz-sharif-become-morsi-of-pakistan-maryam-nawaz/articleshow/69907176.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://timesofindi', ''),
(2, 'All NTJ members blamed for Easter attacks arrested: Sri Lanka PM', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/south-asia/all-ntj-members-blamed-for-easter-sunday-attacks-arrested-pm-wickremesinghe/articleshow/69907054.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/south-asia/all-ntj-members-blamed-for-easter-sunday-attacks-arrested-pm-wickremesinghe/articleshow/69907054.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https', ''),
(3, 'Pakistan accuses India of \'politicising\' deliberations at FATF meeting in US', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/pakistan/pakistan-accuses-india-of-politicising-deliberations-at-fatf-meeting-in-us/articleshow/69906262.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/pakistan/pakistan-accuses-india-of-politicising-deliberations-at-fatf-meeting-in-us/articleshow/69906262.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://', ''),
(4, 'Hong Kong protesters end blockade of police headquarters', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/rest-of-world/hong-kong-protesters-end-blockade-of-police-headquarters/articleshow/69905465.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/rest-of-world/hong-kong-protesters-end-blockade-of-police-headquarters/articleshow/69905465.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://timesofindia.', ''),
(5, 'Iranian hackers wage cyber campaign amid tensions with US', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/us/iranian-hackers-wage-cyber-campaign-amid-tensions-with-us/articleshow/69905536.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/us/iranian-hackers-wage-cyber-campaign-amid-tensions-with-us/articleshow/69905536.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://timesofindia.indiatimes', ''),
(6, 'Afghan leaders begin peace summit in Pakistan', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/south-asia/afghan-leaders-begin-peace-summit-in-pakistan/articleshow/69905048.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/south-asia/afghan-leaders-begin-peace-summit-in-pakistan/articleshow/69905048.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://timesofindia.indiatimes.com', ''),
(7, 'Thousands join climate protests in western Germany', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/europe/thousands-join-climate-protests-in-western-germany/articleshow/69904013.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/europe/thousands-join-climate-protests-in-western-germany/articleshow/69904013.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://timesofindia.indiatimes.co', ''),
(8, 'Germany\'s Merkel urges political solution in Iran crisis', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/europe/germanys-merkel-urges-political-solution-in-iran-crisis/articleshow/69904091.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/europe/germanys-merkel-urges-political-solution-in-iran-crisis/articleshow/69904091.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://timesofindia.indiatim', ''),
(9, 'Mike Pompeo urged to raises almond tariff issue with Modi next week', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/us/mike-pompeo-urged-to-raises-almond-tariff-issue-with-narendra-modi-next-week/articleshow/69903880.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/us/mike-pompeo-urged-to-raises-almond-tariff-issue-with-narendra-modi-next-week/articleshow/69903880.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://time', ''),
(10, 'Iran says it will respond firmly to any US threat as tension spikes', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/middle-east/iran-says-it-will-respond-firmly-to-any-us-threat-as-tension-spikes/articleshow/69903358.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/middle-east/iran-says-it-will-respond-firmly-to-any-us-threat-as-tension-spikes/articleshow/69903358.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://time', ''),
(11, 'Prague set to see biggest protests since Velvet Revolution', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/europe/prague-set-to-see-biggest-protests-since-velvet-revolution/articleshow/69903631.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/europe/prague-set-to-see-biggest-protests-since-velvet-revolution/articleshow/69903631.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://timesofindia.india', ''),
(12, 'No, Trump doesn\'t call Mideast plan \'deal of the century\'', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/us/no-trump-doesnt-call-mideast-plan-deal-of-the-century/articleshow/69903235.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/us/no-trump-doesnt-call-mideast-plan-deal-of-the-century/articleshow/69903235.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://timesofindia.indiatimes.com', ''),
(13, 'Johnson \'row\' blows UK leadership race open grassroots campaign begins', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/uk/johnson-row-blows-uk-leadership-race-open-grassroots-campaign-begins/articleshow/69903137.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/uk/johnson-row-blows-uk-leadership-race-open-grassroots-campaign-begins/articleshow/69903137.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://timesofindia', ''),
(14, 'A half-hour away: How Trump opted against Iran strike', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/us/a-half-hour-away-how-trump-opted-against-iran-strike/articleshow/69900957.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/us/a-half-hour-away-how-trump-opted-against-iran-strike/articleshow/69900957.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://timesofindia.indiatimes.com/', ''),
(15, 'Mike Pompeo asks Pakistan to release those facing blasphemy charges', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/pakistan/mike-pompeo-asks-pakistan-to-release-those-facing-blasphemy-charges/articleshow/69900960.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/pakistan/mike-pompeo-asks-pakistan-to-release-those-facing-blasphemy-charges/articleshow/69900960.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://timesof', ''),
(16, 'Erdogan\'s chief antagonist seeks a lasting victory in Istanbul', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/europe/erdogans-chief-antagonist-seeks-a-lasting-victory-in-istanbul/articleshow/69900607.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/europe/erdogans-chief-antagonist-seeks-a-lasting-victory-in-istanbul/articleshow/69900607.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://timesofindia.in', ''),
(17, 'UK leadership race finalists woo Tory grassroots', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/uk/uk-leadership-race-finalists-woo-tory-grassroots/articleshow/69900450.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/uk/uk-leadership-race-finalists-woo-tory-grassroots/articleshow/69900450.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://timesofindia.indiatimes.com/phot', ''),
(18, 'China state media urges US to drop win-at-all-costs trade stance', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/china/china-state-media-urges-us-to-drop-win-at-all-costs-trade-stance/articleshow/69900446.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/china/china-state-media-urges-us-to-drop-win-at-all-costs-trade-stance/articleshow/69900446.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://timesofindia.', ''),
(19, 'Sri Lanka extends emergency in surprise move', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/south-asia/sri-lanka-extends-emergency-in-surprise-move/articleshow/69900380.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/south-asia/sri-lanka-extends-emergency-in-surprise-move/articleshow/69900380.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://timesofindia.indiatimes.com/', ''),
(20, 'Trump nominates Mark Esper as Secry of Defense: White House', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://timesofindia.indiatimes.com/world/us/trump-nominates-mark-esper-as-secretary-of-defense-white-house/articleshow/69899687.cms', 6, '', '<a href=\"https://timesofindia.indiatimes.com/world/us/trump-nominates-mark-esper-as-secretary-of-defense-white-house/articleshow/69899687.cms\"><img border=\"0\" hspace=\"10\" align=\"left\" style=\"margin-top:3px;margin-right:5px;\" src=\"https://timesofindia.india', ''),
(21, 'Botched Statue of St. George Is ‘Unrestored’ to Its Dignity', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/22/world/europe/spain-statue-st-george-botched.html?emc=rss&partner=rss', 12, '', 'Specialists in Spain spent $34,000 to fix a church statue that had ended up looking like Tintin after a paint job.', ''),
(22, 'U.K. Tribute to ‘Windrush’ Generation Draws Criticism', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/22/world/europe/uk-windrush-theresa-may.html?emc=rss&partner=rss', 12, '', 'Events to honor the people invited from the Caribbean to help rebuild postwar Britain were overshadowed by criticism of their treatment under a migration crackdown.', ''),
(23, 'As Pope Francis Champions Migrants, Some Cardinals Court the Far Right', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/22/world/europe/pope-francis-migrants-salvini.html?emc=rss&partner=rss', 12, '', 'Clerics who see the pontiff as dangerously inclusive have been lending public support — and the church’s imprimatur — to anti-migration politicians like Italy’s Matteo Salvini.', ''),
(24, 'Austerity Has Ravaged U.K. Communities. It Has Also Spurred Reinvention.', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/22/world/europe/uk-austerity-preston-ashford-lancashire.html?emc=rss&partner=rss', 12, '', 'As local governments across Britain grapple with shrunken budgets, many are going into business, funding cooperatives and speculating in real estate.', ''),
(25, 'Police Respond to Altercation Between Boris Johnson and His Girlfriend', '2019-06-21 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/21/world/europe/boris-johnson-police-girlfriend.html?emc=rss&partner=rss', 12, '', 'A neighbor called the police when Johnson, who is favored to become Britain’s next prime minister, was heard shouting at his girlfriend, a newspaper reported.', ''),
(26, 'Who Will Get E.U.’s Top Jobs? Bloc Must Decide How to Fill Them First', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/21/world/europe/european-union-leadership.html?emc=rss&partner=rss', 12, '', 'In typical European Union style, the bloc’s leaders even disagreed on the process they would follow to reach a decision.', ''),
(27, 'Spanish Court Sentences Pamplona ‘Wolf Pack’ to 15 Years for Rape', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/21/world/europe/spain-wolf-pack-pamplona-rape.html?emc=rss&partner=rss', 12, '', 'The decision overruled the verdicts of lower courts that had found the men guilty of a lesser charge. That initial ruling led to mass protests.', ''),
(28, 'Five Places to Visit in Barcelona', '2019-06-21 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/21/travel/five-places-to-visit-in-barcelona-carlos-ruiz-zafon.html?emc=rss&partner=rss', 12, '', 'The author Carlos Ruiz Zafón offers a travel guide to his hometown with a darker spin on some familiar spots.', ''),
(29, 'U.K. Official Suspended for Forcing Out Climate Protester by the Neck', '2019-06-21 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/21/world/europe/mark-field-climate-protester-uk.html?emc=rss&partner=rss', 12, '', 'TV footage showed Mark Field, a senior foreign policy official, jump from his seat and grab a protester at an event Thursday night.', ''),
(30, 'Iran, North Korea, British Prime Minister: Your Friday Briefing', '2019-06-21 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/20/briefing/iran-north-korea-british-prime-minister.html?emc=rss&partner=rss', 12, '', 'Here’s what you need to know.', ''),
(31, 'Turkey Jails 151 for Life for Roles in Failed 2016 Coup', '2019-06-20 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/20/world/europe/turkey-coup-2016-trial-life-sentences.html?emc=rss&partner=rss', 12, '', 'Those sentenced include a former commander of the Turkish Air Force and 17 men who were found guilty of attempting to kill the president.', ''),
(32, 'E.U. Leaders Fail to Strengthen Climate Target', '2019-06-21 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/20/climate/europe-carbon-neutral.html?emc=rss&partner=rss', 12, '', 'A proposal to reduce the 28-country bloc\'s net carbon emissions to zero by 2050 failed when eastern countries that are heavily dependent on coal raised objections. ', ''),
(33, 'Russian Discontent Surfaces in Putin’s Annual Call-in Show', '2019-06-21 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/20/world/europe/putin-call-in-protests-discontent.html?emc=rss&partner=rss', 12, '', 'The curated questions were not all that critical, but some screen texts were. “Just one question,” one of them read. “When will you leave?”', ''),
(34, 'Meet the Narluga, Hybrid Son of a Narwhal Mom and a Beluga Whale Dad', '2019-06-20 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/20/science/narwhal-beluga-hybrid-whale.html?emc=rss&partner=rss', 12, '', 'Its skull sat in a museum collection for decades before new technology unlocked its genetic secrets.', ''),
(35, 'Fight to Lead the U.K. Narrows to 2: Boris Johnson vs. Jeremy Hunt', '2019-06-21 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/20/world/europe/boris-johnson-jeremy-hunt.html?emc=rss&partner=rss', 12, '', 'Foreign secretary Jeremy Hunt finished second in a vote among Tory lawmakers, keeping him in the race. But critics call him “Theresa May in trousers.”', ''),
(36, 'The E.U. Is Choosing Its Leaders. Here’s Why It Matters.', '2019-06-20 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/20/world/europe/eu-leadership-explained.html?emc=rss&partner=rss', 12, '', 'The race to name the presidents of the four institutions that run the European Union is on, at a critical time for the bloc. Here’s what each institution does.', ''),
(37, 'Russia to Release First Whales Held in ‘Jail’ for Months', '2019-06-20 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/20/world/europe/whales-released-in-russia.html?emc=rss&partner=rss', 12, '', 'After intervention by President Vladimir V. Putin, nearly 100 orcas and belugas will be released where they were caught with the intention of being sold to theme parks.', ''),
(38, 'U.K. to Suspend Issuing Arms Licenses to Saudi Arabia', '2019-06-21 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/20/world/europe/uk-saudi-arabia-yemen-arms.html?emc=rss&partner=rss', 12, '', 'The announcement came after a court ruled that the government acted unlawfully in allowing the sale of weapons to Saudi Arabia.', ''),
(39, 'Renault and Nissan Make Peace in a Deal to Tighten Oversight', '2019-06-20 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/20/business/renault-nissan.html?emc=rss&partner=rss', 12, '', 'The Japanese carmaker will have Renault’s backing to fix governance lapses, in a deal made before a key shareholder meeting.', ''),
(40, 'Paul Whelan, Held in Russia for Spying, Pleads for Help from Trump', '2019-06-20 00:00:00', '2019-06-22 13:16:24', 'https://www.nytimes.com/2019/06/20/world/europe/russia-paul-whelan-trump.html?emc=rss&partner=rss', 12, '', 'A corporate security officer and former Marine, charged with espionage in Russia, called on President Trump and other leaders to free him from a “political kidnapping.”', ''),
(41, 'US-Iran: Trump announces further sanctions amid tensions', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-us-canada-48732672', 13, '', 'The measures are intended to prevent Iran obtaining nuclear weapons, President Donald Trump says.', ''),
(42, 'Cambodia: Sihanoukville building collapse death toll rises', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-asia-48729072', 13, '', 'At least seven people are confirmed dead and others are missing in the city of Sihanoukville.', ''),
(43, 'Trump dismisses E. Jean Carroll rape allegation as \'fiction\'', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-us-canada-48727972', 13, '', 'Writer E. Jean Carroll says Mr Trump raped her in a department store dressing room in the mid-1990s.', ''),
(44, 'Russia suspends Georgia flights after violent clashes', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-europe-48727133', 13, '', 'President Putin bans Georgian airlines from flying to Russia following a surge of violent unrest.', ''),
(45, 'Hawaii: Nine skydivers killed in plane crash', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-us-canada-48729071', 13, '', 'No-one survived the crash of the twin-engine light aircraft , officials say.', ''),
(46, 'Hong Kong extradition bill: Police brutality inquiry ruled out', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-asia-china-48729295', 13, '', 'The territory\'s justice secretary rejects a demand to investigate police actions against protesters.', ''),
(47, 'Middle East peace plan: Jared Kusner unveils US proposals', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-middle-east-48731440', 13, '', 'President Trump\'s son-in-law reveals the first, economics-focused section of the proposals.', ''),
(48, 'Militants killed while attacking Kenya police base', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-africa-48731602', 13, '', 'They are believed to have been fighters from the Somalia-based al-Shabab Islamist group, police say.', ''),
(49, 'Mauritania set for first democratic transition of power', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-africa-48727282', 13, '', 'More than a million are set to vote for what could be Mauritania\'s first peaceful transfer of power.', ''),
(50, 'Iran executes man on charges of spying for US', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-middle-east-48732143', 13, '', 'The man was convicted of espionage after spying equipment was found in his home, state media report.', ''),
(51, 'Urinating man causes injuries on Berlin boat', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-europe-48731431', 13, '', 'Some passengers jumped up in surprise and injured themselves by hitting their heads.', ''),
(52, 'Bear falls asleep in wardrobe after entering home', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-us-canada-48731021', 13, '', 'Police in the US state of Montana found the animal resting after it had locked itself into a room.', ''),
(53, 'Hong Kong protests: How Hallelujah to the Lord became an unofficial anthem', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-asia-china-48715224', 13, '', 'It\'s a Christian hymn but there are political reasons why protesters have picked up the simple tune', ''),
(54, 'Istanbul vote rerun: Ambitious mayor takes on Erdogan\'s man', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-europe-48716943', 13, '', 'The election is being rerun after the ruling party candidate narrowly lost the Istanbul mayoral vote.', ''),
(55, 'The medical student who died of measles', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/stories-48668841', 13, '', 'The death of a student doctor from a preventable disease shows how Ukraine has become the measles capital of Europe.', ''),
(56, '#RealAsianGranny: British East Asians celebrate grandmothers', '2019-06-21 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/stories-48711974', 13, '', 'People behind #RealAsianGranny tell stories about the strongest women they know, their grandmothers.', ''),
(57, 'Syria: Who\'s in control of Idlib?', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-45401474', 13, '', 'Who holds sway in the last major stronghold of opposition forces fighting the Syrian government?', ''),
(58, 'Week in pictures: 15-21 June 2019', '2019-06-21 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/in-pictures-48706122', 13, '', 'A selection of the best news photographs from around the world, taken over the past week.', ''),
(59, 'Chennai water crisis: \'We can\'t do anything\'', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-asia-india-48674775', 13, '', 'Residents in the Indian city have been forced to go to drastic lengths to get water after months of poor rainfall.', ''),
(60, 'Afcon 2019: Meet the ‘animals’ competing for the Africa Cup of Nations', '2019-06-22 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-africa-48717745', 13, '', 'Eagles, elephants and lions are among the most popular sporting beasts at this year\'s tournament.', ''),
(61, 'Dr Marijuana Pepsi: The woman who refused to let her bullies win', '2019-06-21 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-us-canada-48616759', 13, '', 'A woman named Marijuana Pepsi has earned a doctorate following years of bullying over her name.', ''),
(62, 'EU Commission boss: Who will replace Jean-Claude Juncker?', '2019-06-21 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-europe-48500336', 13, '', 'The race is still wide open after EU leaders failed to pick a successor to Jean-Claude Juncker.', ''),
(63, 'Stonewall and before: Shedding new light on heroes of gay history', '2019-06-21 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-us-canada-48697838', 13, '', 'A new book explores the history of the LGBT liberation movement and brings its heroes from the shadows into the light.', ''),
(64, 'Explosions rock south Philadelphia in refinery fire', '2019-06-21 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-us-canada-48725662', 13, '', 'An early morning explosion woke locals and shook homes near a Philadelphia refinery when it caught fire.', ''),
(65, 'Has an internet blackout killed Sudan\'s revolution?', '2019-06-21 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-africa-48706342', 13, '', 'The Military Council has switched off the internet in response to protests that took place in early June.', ''),
(66, 'MH17 crash: Putin says Russia \'absolutely disagrees\' with evidence', '2019-06-20 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-europe-48712512', 13, '', 'The Russian president says he \"completely disagrees\" with charges brought by the plane crash inquiry.', ''),
(67, 'Vaccinations were a major issue in the 2018 elections', '2019-06-20 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/health-48707032', 13, '', 'Fake news is fuelling the anti-vaccine movement and one government\'s attempt to get children vaccinated may be making it worse.', ''),
(68, 'The fake French minister in a silicone mask who stole millions', '2019-06-19 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-europe-48510027', 13, '', 'How fraudsters impersonated France\'s Jean-Yves Le Drian and scammed a number of wealthy figures.', ''),
(69, 'Miriwoong: The Australian language which barely anybody speaks', '2019-06-16 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-australia-48632801', 13, '', 'Australia has about 100 indigenous languages at risk of being lost - so how do you save them?', ''),
(70, 'Why are Nike trainers washing up on beaches?', '2019-06-19 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/uk-48464664', 13, '', 'From Bermuda and the Azores to Ireland and France, large numbers of shoes are washing ashore.', ''),
(71, 'Stonewall: A riot that changed millions of lives', '2019-06-17 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-us-canada-48643756', 13, '', 'On a hot New York night 50 years ago, a police raid on a gay bar reshaped millions of American lives.', ''),
(72, '\'My father, the rapist\': Hidden victims of Rwanda\'s genocide', '2019-06-18 00:00:00', '2019-06-22 13:16:24', 'https://www.bbc.co.uk/news/world-africa-48673713', 13, '', 'It is thought thousands of children were born as a result of rape during the 1994 genocide.', ''),
(73, 'Freddy Adu exclusive: \'I\'m not ready to give it up\'', '2019-06-11 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/soccer/club/united-states/660/blog/post/3873263/freddy-adu-exclusive-im-not-ready-to-give-it-up', 15, '', 'Freddy Adu was supposed to save U.S. soccer before his career fizzled out. But he has found happiness in coaching as he plots his final comeback.', ''),
(74, 'Predators trade All-Star D Subban to Devils', '2019-06-22 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/nhl/story/_/id/27031286/predators-trade-all-star-d-subban-devils', 15, '', 'Predators All-Star defenseman P.K. Subban has been traded to the Devils for defenseman Steven Santini, prospect Jeremy Davies and two second-round picks -- one in 2019 and one in 2020.', ''),
(75, 'Sources: UConn expected to rejoin Big East', '2019-06-22 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/college-sports/story/_/id/27030819/sources-uconn-expected-rejoin-big-east', 15, '', 'UConn is expected to leave the American Athletic Conference and return to the Big East for basketball and other sports in 2020, sources told ESPN.', ''),
(76, 'Cap-strapped Lightning ship J.T. Miller to Canucks', '2019-06-22 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/nhl/story/_/id/27031706/cap-strapped-lightning-ship-jt-miller-canucks', 15, '', 'The Canucks are trading goalie Marek Mazance, a third-round pick in the 2019 draft and a conditional first-round pick in either 2020 or 2021 to the Lightning for J.T. Miller.', ''),
(77, 'Leafs deal Marleau to Hurricanes, free cap space', '2019-06-22 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/nhl/story/_/id/27031229/leafs-deal-marleau-hurricanes-free-cap-space', 15, '', 'The Maple Leafs have freed up cap space by trading Patrick Marleau and draft picks to the Hurricanes. Carolina is expected to buy out the last year of his contract.', ''),
(78, 'Brees awarded $6M in diamond fraud lawsuit', '2019-06-22 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/nfl/story/_/id/27027132/brees-awarded-6m-diamond-fraud-lawsuit', 15, '', 'A jury has awarded more than $6 million to Saints quarterback Drew Brees in a lawsuit that claimed a San Diego County jeweler sold him overpriced diamonds.', ''),
(79, 'Vandy rallies in 9th after pitcher\'s profane taunts', '2019-06-22 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/college-sports/baseball/cws/story/_/id/27027839/vandy-rallies-9th-pitcher-profane-taunts', 15, '', 'He was pitching one of the best games of his life, against the No. 2 team in baseball, and Luke Smith, Louisville\'s flashy, emotional right-hander, notched his 10th strikeout of the night and let the expletives fly.', ''),
(80, '2019 NHL draft: Pick analysis for every team', '2019-06-22 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/nhl/story/_/id/27016392/2019-nhl-draft-pick-pick-analysis', 15, '', 'Every single pick of the NHL draft, including prospect breakdowns and how each first-rounder fits with his new team.', ''),
(81, 'Fresh off tough losses, Moicano and Korean Zombie aim to move forward', '2019-06-21 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/mma/story/_/id/27010311/fresh-tough-losses-moicano-korean-zombie-aim-move-forward', 15, '', 'Renato Moicano fell short of a title shot last time out. Chan Sung Jung was stopped with one second to go. Both main event fighters in Saturday\'s UFC Fight Night have something to overcome.', ''),
(82, 'UFC Fight Night: Saturday at 7 p.m. ET on ESPN+', '2019-06-18 00:00:00', '2019-06-22 13:16:25', 'https://www.espn.com/watch/collections/19826/ufc', 15, '', 'null', ''),
(83, 'How the NBA draft sets up a league-altering free agency', '2019-06-21 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/nba/story/_/id/27015402/how-nba-draft-sets-league-altering-free-agency', 15, '', 'Here are eight big free-agency questions and storylines to monitor closely.', ''),
(84, 'Predictions: Who will win the title in France?', '2019-06-21 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/soccer/fifa-womens-world-cup/story/3880724/womens-world-cup-predictions-who-will-win-the-title-in-france', 15, '', 'Which teams will meet in the final? And which players should win the Golden Glove and Golden Ball?', ''),
(85, 'With Judge & Co. back, do the Yankees have the deepest lineup ever?', '2019-06-22 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/mlb/story/_/id/27024198/with-judge-co-back-do-yankees-deepest-lineup-ever', 15, '', 'Dear opposing pitchers facing the Bombers: Good luck -- you are going to need it. We break down how New York\'s 1-9 scariness compares to other great offenses.', ''),
(86, 'How Baker Mayfield paid off his bet with Saquon Barkley', '2019-06-22 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/blog/new-york/giants/post/_/id/59134/how-baker-mayfield-paid-off-his-bet-with-saquon-barkley', 15, '', '\"The loser\'s got to get someone else a chain,\" the Giants running back said in February of their bet over Offensive Rookie of the Year.', ''),
(87, '50 NFL players who could get contract extensions before training camp', '2019-06-21 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/nfl/story/_/id/27019661/50-nfl-players-get-contract-extensions-training-camp', 15, '', 'Several receivers are in line for lucrative contract extensions, but they aren\'t alone. Here\'s who could get paid before training camp begins.', ''),
(88, 'Matt Ryan: Falcons have \'a great chance\' to return to Super Bowl', '2019-06-22 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/blog/atlanta-falcons/post/_/id/34290/matt-ryan-falcons-have-a-great-chance-to-return-to-super-bowl', 15, '', 'The Falcons are 17-15 since their 2016 Super Bowl run, but QB Matt Ryan seems to have more swagger regarding his team\'s contender status this year.', ''),
(89, 'Selfless neighbor provides liver, hope for mom of Giants\' Grant Haley', '2019-06-22 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/blog/new-york/giants/post/_/id/59106/selfless-neighbor-provides-liver-hope-for-mom-of-new-york-giants-grant-haley', 15, '', 'The second-year cornerback is thankful for the woman who helped his family in a dire time of need as \"it was tough to see your mom like that.\"', ''),
(90, 'U.S. doesn\'t want revenge vs. Trinidad & Tobago -- it just wants to win the Gold Cup', '2019-06-22 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/soccer/club/united-states/660/blog/post/3881446/us-dont-want-revenge-vs-trinidad-and-tobago-after-world-cup-woe-they-just-want-to-win-the-gold-cup', 15, '', 'The storyline of facing the team that denied the U.S. a spot in the 2018 World Cup looms large but the players are focused on the present, not past.', ''),
(91, 'Round-by-round picks from the NBA draft', '2019-06-21 00:00:00', '2019-06-22 13:16:25', 'https://www.espn.com/nba/draft/rounds', 15, '', 'Check out every pick from 1-60, including Zion Williamson and Ja Morant as the top two selections.', ''),
(92, 'Mercedes dominates qualifying; Where does Ferrari go from here?', '2019-06-22 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/f1/story/_/id/27030704/story-qualifying-where-do-ferrari-go-here', 15, '', 'ESPN looks at the main talking points following Mercedes\' dominance of qualifying for the French Grand Prix.', ''),
(93, 'How two women are smashing hockey\'s glass ceiling', '2019-06-20 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/nhl/story/_/id/27017561/how-noelle-needham-hayley-wickenheiser-smashing-hockey-glass-ceiling', 15, '', 'A former rancher who became the first woman hired as a full-time scout and a Canadian hockey legend are helping shape draft strategy for the Maple Leafs.', ''),
(94, 'Best Performance: Upsets, records and more', '2019-06-19 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/espys/story/_/page/voting47/best-performance', 15, '', 'Let your voice be heard and then tune in to The 2019 ESPYS presented by Capital One on July 10 on ABC!', ''),
(95, 'Best Viral Moment: Ingram, Tucker, Ohashi or Sister Mary Jo', '2019-06-19 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/espys/story/_/page/voting7/best-viral-moment', 15, '', 'Let your voice be heard and then tune in to The 2019 ESPYS presented by Capital One on July 10 on ABC!', ''),
(96, 'Best Athlete in a Sport: A crowded field', '2019-06-19 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/espys/story/_/page/voting48/best-athlete-sport', 15, '', 'Let your voice be heard and then tune in to The 2019 ESPYS presented by Capital One on July 10 on ABC!', ''),
(97, 'Best Athlete in a League: Is Giannis best in NBA?', '2019-06-19 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/espys/story/_/page/voting49/best-athlete-league', 15, '', 'Let your voice be heard and then tune in to The 2019 ESPYS presented by Capital One on July 10 on ABC!', ''),
(98, 'Back from one-week break, Zlatan and LA Galaxy take on Cincinnati without Mexico stars', '2019-06-22 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/soccer/major-league-soccer/19/blog/post/3881180/mls-w2w4-zlatan-and-la-galaxy-take-on-cincinnati-without-mexico-starsportland-must-start-winning', 15, '', 'After a one-week break, MLS is back in action with Zlatan Ibrahimovic and the LA Galaxy traveling to Cincinnati and FC Dallas hosting Toronto FC.', ''),
(99, 'WWE Stomping Grounds a pivotal stop ahead of SummerSlam', '2019-06-20 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/wwe/story/_/id/27018056/wwe-stomping-grounds-pivotal-stop-ahead-summerslam', 15, '', 'WWE Stomping Grounds features a number of rematches from Super ShowDown, but also provides an opportunity to end a number of feuds as fans search for something new this summer.', ''),
(100, 'Why Deshaun Watson will be fantasy\'s No. 1 QB in 2019', '2019-06-20 00:00:00', '2019-06-22 13:16:25', 'http://www.espn.com/fantasy/football/story/_/id/27017898/fantasy-football-why-deshaun-watson-fantasy-no-1-qb-2019', 15, '', 'Patrick Mahomes is sure to be the first QB taken in fantasy leagues this year, but there is evidence to explain why the Texans QB is the better choice.', ''),
(101, 'June 16 - Mayor Pete Buttigieg, Rep. Steve Scalise', '2019-06-16 00:00:00', '2019-06-22 13:16:25', '', 16, '', 'Today on “Meet the Press,” South Bend, Ind. Mayor Pete Buttigieg talked about his presidential bid and House Minority Whip Steve Scalise, R-La., discussed foreign election interference. The New York Times Magazine chief national correspondent Mark Leibovic', ''),
(122, '', '2019-06-23 00:00:00', '2019-06-23 00:00:00', 'https://timesofindia.indiatimes.com/world/china/president-xi-to-attend-g20-summit-set-to-meet-donald-trump-to-end-trade-war/articleshow/69912000.cms', 6, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `title` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`title`) VALUES
('LieferengpÃ¤sse bei Arzneimitteln nehmen zu'),
('Spahn kÃ¼ndigt KrankenhÃ¤usern Konsequenzen bei QualitÃ¤tsproblemen an'),
('Pflegepersonaluntergrenzen fÃ¼hren zu Absenkung des PersonalschlÃ¼ssels'),
('Krankenbehandlung zwischen Frankreich und Deutschland wird grenzenlos'),
('LieferengpÃ¤sse bei Arzneimitteln nehmen zu'),
('Erfolgreiche MaÃŸnahmen gegen den Konsum zuckerhaltiger GetrÃ¤nke'),
('Spahn kÃ¼ndigt KrankenhÃ¤usern Konsequenzen bei QualitÃ¤tsproblemen an'),
('Bayern will Angebote fÃ¼r Palliativpatienten verdoppeln'),
('Pflegepersonaluntergrenzen fÃ¼hren zu Absenkung des PersonalschlÃ¼ssels'),
('SPD kritisiert Kontrollen auf multiresistente Keime bei HÃ¤hnchen'),
('Krankenbehandlung zwischen Frankreich und Deutschland wird grenzenlos'),
('Zuspruch fÃ¼r Spahns VerbotsplÃ¤ne von â€žKonversionstherapienâ€œ'),
('Erfolgreiche MaÃŸnahmen gegen den Konsum zuckerhaltiger GetrÃ¤nke'),
('Bessere Bedingungen fÃ¼r Frauen in ehrenamtlichen Gremien gefordert'),
('Bayern will Angebote fÃ¼r Palliativpatienten verdoppeln'),
('Mehr KrankenhÃ¤user brauchen Schutzkonzepte zur PrÃ¤vention von sexueller Gewalt'),
('SPD kritisiert Kontrollen auf multiresistente Keime bei HÃ¤hnchen'),
('Public-Health-MaÃŸnahmen kÃ¶nnten Millionen vorzeitige TodesfÃ¤lle verhindern'),
('Zuspruch fÃ¼r Spahns VerbotsplÃ¤ne von â€žKonversionstherapienâ€œ'),
('Typ-2-Diabetes: Dulaglutid senkt Zahl der Herz-Kreislauf-Erkrankungen und erhÃ¤lt Nierenfunktion'),
('Bessere Bedingungen fÃ¼r Frauen in ehrenamtlichen Gremien gefordert'),
('Reizdarmsyndrom: FDA lÃ¤sst perkutanen Nervenstimulator fÃ¼r Teenager zu'),
('Mehr KrankenhÃ¤user brauchen Schutzkonzepte zur PrÃ¤vention von sexueller Gewalt'),
('Videospielende Kinder und Jugendliche sind nicht dicker'),
('Public-Health-MaÃŸnahmen kÃ¶nnten Millionen vorzeitige TodesfÃ¤lle verhindern'),
('KÃ¼nstliche Intelligenz soll Patienten fÃ¼r Immuntherapie identifizieren'),
('Typ-2-Diabetes: Dulaglutid senkt Zahl der Herz-Kreislauf-Erkrankungen und erhÃ¤lt Nierenfunktion'),
('Enzyme aus Darmbakterium verwandeln Blutgruppe A in Blutgruppe 0'),
('Reizdarmsyndrom: FDA lÃ¤sst perkutanen Nervenstimulator fÃ¼r Teenager zu'),
('E-Zigaretten: Nikotin stÃ¶rt mukoziliÃ¤re Clearance'),
('Videospielende Kinder und Jugendliche sind nicht dicker'),
('Protonenpumpen-Inhibitor erweist sich in Langzeitstudie als sicher'),
('KÃ¼nstliche Intelligenz soll Patienten fÃ¼r Immuntherapie identifizieren'),
('Bestimmte Anti-Krebswirkstoffe wirken im Darm kanzerogen'),
('Enzyme aus Darmbakterium verwandeln Blutgruppe A in Blutgruppe 0'),
('US-Studie: NahrungsergÃ¤nzungsmittel schaden Jugendlichen'),
('E-Zigaretten: Nikotin stÃ¶rt mukoziliÃ¤re Clearance'),
('KBV warnt vor zusÃ¤tzlicher Arbeit und zusÃ¤tzlichen Kosten'),
('Protonenpumpen-Inhibitor erweist sich in Langzeitstudie als sicher'),
('Die mobile KV-Connect-Schnittstelle kommt'),
('Bestimmte Anti-Krebswirkstoffe wirken im Darm kanzerogen'),
('KV Westfalen-Lippe sieht AdAM bei Polypharmazie als Vordenkerprojekt'),
('US-Studie: NahrungsergÃ¤nzungsmittel schaden Jugendlichen'),
('Ã„rzte in ThÃ¼ringen wollen mehr StudienplÃ¤tze fÃ¼r Humanmedizin'),
('KBV warnt vor zusÃ¤tzlicher Arbeit und zusÃ¤tzlichen Kosten'),
('Elektronische AU-Bescheinigung wird erprobt'),
('Die mobile KV-Connect-Schnittstelle kommt'),
('KVWL-Vorstand Nordmann kÃ¼ndigt RÃ¼ckzug an'),
('KV Westfalen-Lippe sieht AdAM bei Polypharmazie als Vordenkerprojekt'),
('KV Westfalen-Lippe sieht groÃŸe HÃ¼rden bei der Umsetzung des Terminservicegesetzes'),
('Ã„rzte in ThÃ¼ringen wollen mehr StudienplÃ¤tze fÃ¼r Humanmedizin'),
('Fachgesellschaften warnen vor hormonaktiven Substanzen in AlltagsgegenstÃ¤nden'),
('Elektronische AU-Bescheinigung wird erprobt'),
('KBV-Chef befÃ¼rchtet kein gutes Ende der TSVG-Verhandlungen'),
('KVWL-Vorstand Nordmann kÃ¼ndigt RÃ¼ckzug an'),
('BundesÃ¤rztekammer ruft zu Korrekturen beim Digitale-Versorgungs-Gesetz auf'),
('KV Westfalen-Lippe sieht groÃŸe HÃ¼rden bei der Umsetzung des Terminservicegesetzes'),
('EU stellt weitere Millionen fÃ¼r notleidende Menschen in Afrika bereit'),
('Fachgesellschaften warnen vor hormonaktiven Substanzen in AlltagsgegenstÃ¤nden'),
('Ã„rzte ohne Grenzen fordert Einsatz gegen Masern im Kongo'),
('KBV-Chef befÃ¼rchtet kein gutes Ende der TSVG-Verhandlungen'),
('Mehr UnterstÃ¼tzung fÃ¼r Globalen Fonds gefordert'),
('BundesÃ¤rztekammer ruft zu Korrekturen beim Digitale-Versorgungs-Gesetz auf'),
('Britische BehÃ¶rde kritisiert Oxfam fÃ¼r Umgang mit Missbrauch in Haiti'),
('EU stellt weitere Millionen fÃ¼r notleidende Menschen in Afrika bereit'),
('Erste Ebolaerkrankungen in Uganda'),
('Ã„rzte ohne Grenzen fordert Einsatz gegen Masern im Kongo'),
('Bessere Entwicklung bei sinkenden Kinderzahlen in Afrika'),
('Mehr UnterstÃ¼tzung fÃ¼r Globalen Fonds gefordert'),
('Tote bei Brand in psychiatrischer Klinik in Ukraine'),
('Britische BehÃ¶rde kritisiert Oxfam fÃ¼r Umgang mit Missbrauch in Haiti'),
('Wissenschafts-Allianz ruft britische Regierung zu mehr Engagement gegen Klimawandel auf'),
('Erste Ebolaerkrankungen in Uganda'),
('Ursachen von Kinderarbeit mÃ¼ssen stÃ¤rker bekÃ¤mpft werden'),
('Bessere Entwicklung bei sinkenden Kinderzahlen in Afrika'),
('Kalifornien lÃ¤sst illegal eingereiste Migranten in kostenfreie Krankenversicherung'),
('Tote bei Brand in psychiatrischer Klinik in Ukraine'),
('Ermittlungen wegen Keimfunds in Radiologiepraxis ausgedehnt'),
('Wissenschafts-Allianz ruft britische Regierung zu mehr Engagement gegen Klimawandel auf'),
('Gemeinsamer Appell: HIV-infizierte Mitarbeiter nicht diskriminieren'),
('Ursachen von Kinderarbeit mÃ¼ssen stÃ¤rker bekÃ¤mpft werden'),
('Landeskrebsregister Nordrhein-Westfalen will bessere Orientierung bieten'),
('Kalifornien lÃ¤sst illegal eingereiste Migranten in kostenfreie Krankenversicherung'),
('Patienteninformationen zu Lebererkrankungen und zu Psoriasis aktualisiert'),
('Ermittlungen wegen Keimfunds in Radiologiepraxis ausgedehnt'),
('Fresenius liegt mit Gewerkschaften im Streit'),
('Gemeinsamer Appell: HIV-infizierte Mitarbeiter nicht diskriminieren'),
('Niels H. geht nach Urteil in Revision'),
('Landeskrebsregister Nordrhein-Westfalen will bessere Orientierung bieten'),
('Kassen wollen Gesundheit in Pflegeberufen verbessern'),
('Patienteninformationen zu Lebererkrankungen und zu Psoriasis aktualisiert'),
('Warum die sportliche LeistungsfÃ¤higkeit im Alter abnimmt'),
('Fresenius liegt mit Gewerkschaften im Streit'),
('Tropische Zeckenart Ã¼berwintert erstmals in Deutschland'),
('Niels H. geht nach Urteil in Revision'),
('Viele Hantavirusinfektionen erwartet'),
('Kassen wollen Gesundheit in Pflegeberufen verbessern'),
('Simulationspatienten sind fester Bestandteil des Medizinstudiums'),
('Warum die sportliche LeistungsfÃ¤higkeit im Alter abnimmt'),
('Streit um Sanierungsstau an der UniversitÃ¤t Erlangen-NÃ¼rnberg'),
('Tropische Zeckenart Ã¼berwintert erstmals in Deutschland'),
('MillionenfÃ¶rderung fÃ¼r neurowissenschaftlichen Sonderforschungsbereich'),
('Viele Hantavirusinfektionen erwartet'),
('Hirnforscher Birbaumer spricht PrÃ¼fkommission Fachkompetenz ab'),
('Simulationspatienten sind fester Bestandteil des Medizinstudiums'),
('Reisekrankheit beim automatisierten Fahren untersucht'),
('Streit um Sanierungsstau an der UniversitÃ¤t Erlangen-NÃ¼rnberg'),
('Neues Zentrum fÃ¼r Proteindiagnostik in Bochum'),
('MillionenfÃ¶rderung fÃ¼r neurowissenschaftlichen Sonderforschungsbereich'),
('Hochschulen bekommen dauerhaft mehr Geld'),
('Hirnforscher Birbaumer spricht PrÃ¼fkommission Fachkompetenz ab'),
('Bundesrat macht Weg fÃ¼r BafÃ¶g-ErhÃ¶hung frei'),
('Reisekrankheit beim automatisierten Fahren untersucht'),
('Bayern grÃ¼ndet drei Forschungszentren fÃ¼r digitale RealitÃ¤ten'),
('Neues Zentrum fÃ¼r Proteindiagnostik in Bochum'),
('Medizinstudierende bilden SchÃ¼ler zu Lebensrettern aus'),
('Hochschulen bekommen dauerhaft mehr Geld'),
('Bundesrat macht Weg fÃ¼r BafÃ¶g-ErhÃ¶hung frei'),
('Bayern grÃ¼ndet drei Forschungszentren fÃ¼r digitale RealitÃ¤ten'),
('Medizinstudierende bilden SchÃ¼ler zu Lebensrettern aus'),
('Trial of Catalan Independence Leaders Ends in Spain'),
('Russian Police Arrest Hundreds at Protest, Including Navalny, After Reporterâ€™s Release'),
('Trial of Catalan Independence Leaders Ends in Spain'),
('Boris Johnson Emerges to Face Reportersâ€™ Questions. Six of Them.'),
('Russian Police Arrest Hundreds at Protest, Including Navalny, After Reporterâ€™s Release'),
('VolksbÃ¼hne Theater in Berlin Names Artistic Director, Ending Leadership Crisis'),
('Boris Johnson Emerges to Face Reportersâ€™ Questions. Six of Them.'),
('U.K. Will Cut Net Greenhouse Emissions to Zero, Theresa May Vows'),
('VolksbÃ¼hne Theater in Berlin Names Artistic Director, Ending Leadership Crisis'),
('Hong Kong, Hungary Crash, Grenfell: Your Wednesday Briefing'),
('U.K. Will Cut Net Greenhouse Emissions to Zero, Theresa May Vows'),
('Survivors of Londonâ€™s Grenfell Fire Sue in Philadelphia Court'),
('Hong Kong, Hungary Crash, Grenfell: Your Wednesday Briefing'),
('Yannick Bellon, French Director With Feminist Bent, Dies at 95'),
('Survivors of Londonâ€™s Grenfell Fire Sue in Philadelphia Court'),
('Oak Tree Given to Trump by French President Has Died, Official Says'),
('Yannick Bellon, French Director With Feminist Bent, Dies at 95'),
('In Stunning Reversal, Russia Drops Charges Against Reporter'),
('Oak Tree Given to Trump by French President Has Died, Official Says'),
('Before Fatal Boat Crash in Budapest, Safety Warnings Went Unheeded'),
('In Stunning Reversal, Russia Drops Charges Against Reporter'),
('A French Wine With a 900-Year-Old Vintage'),
('Before Fatal Boat Crash in Budapest, Safety Warnings Went Unheeded'),
('On a Dutch Island, Sunsets, Bike Rides and the Great Lamb Chase'),
('A French Wine With a 900-Year-Old Vintage'),
('Once Threatened, Europeâ€™s Night Trains Rebound'),
('On a Dutch Island, Sunsets, Bike Rides and the Great Lamb Chase'),
('Britain, the Vatican, Traveler Cyberattack: Your Tuesday Briefing'),
('Once Threatened, Europeâ€™s Night Trains Rebound'),
('Moldova Has a New Government. The Old One Is Refusing to Leave.'),
('Britain, the Vatican, Traveler Cyberattack: Your Tuesday Briefing'),
('At Menâ€™s Fashion Week in London, Less Angst, More Celebration'),
('Moldova Has a New Government. The Old One Is Refusing to Leave.'),
('Huawei Tells Parliament Itâ€™s No Security Threat, Aiming to Avoid a Ban'),
('At Menâ€™s Fashion Week in London, Less Angst, More Celebration'),
('The Race for U.K. Prime Minister: How Itâ€™s Likely to Play Out'),
('Huawei Tells Parliament Itâ€™s No Security Threat, Aiming to Avoid a Ban'),
('Three Created a Fertility Revolution With I.V.F., but One, a Woman, Went Unrecognized'),
('The Race for U.K. Prime Minister: How Itâ€™s Likely to Play Out'),
('Three Created a Fertility Revolution With I.V.F., but One, a Woman, Went Unrecognized'),
('Xi Jinping heads to Bishkek to attend SCO summit, set to meet PM Modi'),
('Lawmakers challenge Trump official on Saudi arms sale'),
('20 years since NATO-wrought freedom, Kosovo remains in limbo'),
('More than 200 arrested at Moscow police abuse march'),
('Detained opposition leaders allowed vetted TV: Iran media'),
('Ex-FBI leaders to testify on Russian threat, Mueller report'),
('We will use force: Hong Kong police fire tear gas as protesters throw bottles'),
('US submits extradition request for WikiLeaks founder Julian Assange'),
('German serial killer nurse appeals life term for 85 murders'),
('More bodies found as Hungary lifts sunken tourist boat from river'),
('Notre-Dame of Paris to celebrate first mass since fire'),
('Botswana scraps anti-gay laws in landmark decision'),
('Chinese surgeons conduct remote surgery using 5G technology'),
('Notre-Dame of Paris to celebrate first mass since fire'),
('One dead as helicopter crash-lands on Manhattan building'),
('New York Times to cease political cartoons after anti-Semitism row'),
('Xi Jinping heads to Bishkek to attend SCO summit, set to meet PM Modi'),
('Lawmakers challenge Trump official on Saudi arms sale'),
('20 years since NATO-wrought freedom, Kosovo remains in limbo'),
('More than 200 arrested at Moscow police abuse march'),
('Detained opposition leaders allowed vetted TV: Iran media'),
('Ex-FBI leaders to testify on Russian threat, Mueller report'),
('We will use force: Hong Kong police fire tear gas as protesters throw bottles'),
('US submits extradition request for WikiLeaks founder Julian Assange'),
('German serial killer nurse appeals life term for 85 murders'),
('More bodies found as Hungary lifts sunken tourist boat from river'),
('Notre-Dame of Paris to celebrate first mass since fire'),
('Botswana scraps anti-gay laws in landmark decision'),
('Chinese surgeons conduct remote surgery using 5G technology'),
('Notre-Dame of Paris to celebrate first mass since fire'),
('One dead as helicopter crash-lands on Manhattan building'),
('New York Times to cease political cartoons after anti-Semitism row'),
('North Korea skirting sanctions, according to report sent to UN'),
('Police fire tear gas at demonstrators in Hong Kong'),
('Suspected gunman arrested in David Ortiz shooting'),
('First Ebola death reported in Uganda as outbreak spreads'),
('Safety tips for nervous Americans in wake of mysterious tourist deaths'),
('Earth approaching \"meteor swarm\" eyed in past impact'),
('Thai players wept as U.S. women celebrated rout. Did they go too far?'),
('2nd arrest made in David Ortiz shooting'),
('Migrant children to be kept at Army base used as WWII internment camp'),
('He wants to end \"energy poverty\" around the globe'),
('Trump holds up paper that hints at secret deal with Mexico'),
('Safety tips for planning a trip abroad'),
('Record rainfall and ongoing trade war hurting American farmers'),
('2019 National Geographic Travel Photo Contest winners'),
('U.S. submits formal extradition request for Julian Assange'),
('Trump touts immigration deal with Mexico but reveals no details'),
('North Korea skirting sanctions, according to report sent to UN'),
('Police fire tear gas at demonstrators in Hong Kong'),
('Suspected gunman arrested in David Ortiz shooting'),
('First Ebola death reported in Uganda as outbreak spreads'),
('Safety tips for nervous Americans in wake of mysterious tourist deaths'),
('Earth approaching \"meteor swarm\" eyed in past impact'),
('Thai players wept as U.S. women celebrated rout. Did they go too far?'),
('2nd arrest made in David Ortiz shooting'),
('Migrant children to be kept at Army base used as WWII internment camp'),
('He wants to end \"energy poverty\" around the globe'),
('Trump holds up paper that hints at secret deal with Mexico'),
('Safety tips for planning a trip abroad'),
('Record rainfall and ongoing trade war hurting American farmers'),
('2019 National Geographic Travel Photo Contest winners'),
('U.S. submits formal extradition request for Julian Assange'),
('Trump touts immigration deal with Mexico but reveals no details'),
('Trudeau plans to meet with Trump in Washington this month: source'),
('2 Canadian women safe after abduction in Ghana; 8 suspects arrested'),
('Expert panel recommends single-payer pharmacare plan for Canada'),
('Stalking a spouse through their phone should be treated as a crime: report'),
('House approves year-long, fully paid parental leave from the Commons for MPs'),
('Grocery store finds cheeky way to move customers away from plastic bags'),
('U.S. man accused in cold case deaths of Canadian couple facing trial'),
('Trudeau plans to meet with Trump in Washington this month: source'),
('2 Canadian women safe after abduction in Ghana; 8 suspects arrested'),
('Expert panel recommends single-payer pharmacare plan for Canada'),
('Stalking a spouse through their phone should be treated as a crime: report'),
('House approves year-long, fully paid parental leave from the Commons for MPs'),
('Grocery store finds cheeky way to move customers away from plastic bags'),
('U.S. man accused in cold case deaths of Canadian couple facing trial');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feed`
--
ALTER TABLE `feed`
  ADD PRIMARY KEY (`feed_id`),
  ADD UNIQUE KEY `feed_title` (`feed_title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `feed`
--
ALTER TABLE `feed`
  MODIFY `feed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
