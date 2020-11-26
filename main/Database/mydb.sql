
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone="+05:30";

CREATE TABLE `message` (
  `mid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mssg` varchar(300) NOT NULL,
  `cdate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `ordrs` (
  `myid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `img` varchar(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `ordr` varchar(200) NOT NULL,
  `pr` varchar(20) NOT NULL,
  `sts` varchar(20) NOT NULL,
  `cdate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `img` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `des` varchar(150) NOT NULL,
  `pr` varchar(20) NOT NULL,
  `cdate` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


INSERT INTO `product` (`pid`, `img`, `name`, `des`, `pr`, `cdate`) VALUES
(26, 'img/25.jpg', 'Ad HTML ', 'Learn new HTML course', '$300', '2018-10-19'),
(30, 'img/26.jpg', 'PHP MySQL ', 'Complete Video training course. ', '$200', '2018-12-05'),
(31, 'img/30.jpg', 'CSS MAster ', 'Complete Course for Web Design', '$300', '2018-12-05'),
(32, 'img/31.jpg', ' JavaScript for Beginners ', 'Best course for basic level', '$200', '2018-12-06');


CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(15) NOT NULL,
  `user_email` varchar(40) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `joining_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



ALTER TABLE `message`
  ADD PRIMARY KEY (`mid`);


ALTER TABLE `ordrs`
  ADD PRIMARY KEY (`myid`);


ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);


ALTER TABLE `message`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `ordrs`
  MODIFY `myid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

