-- Copyright (c) 2012 SnowPlow Analytics Ltd. All rights reserved.
--
-- This program is licensed to you under the Apache License Version 2.0,
-- and you may not use this file except in compliance with the Apache License Version 2.0.
-- You may obtain a copy of the Apache License Version 2.0 at http://www.apache.org/licenses/LICENSE-2.0.
--
-- Unless required by applicable law or agreed to in writing,
-- software distributed under the Apache License Version 2.0 is distributed on an
-- "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the Apache License Version 2.0 for the specific language governing permissions and limitations there under.
--
-- Version:     0.0.6
-- URL:         -
--
-- Authors:     Yali Sassoon, Alex Dean
-- Copyright:   Copyright (c) 2012-2013 SnowPlow Analytics Ltd
-- License:     Apache License Version 2.0

CREATE TABLE IF NOT EXISTS events_005 (
	-- App
	`app_id` varchar(255) comment 'lookup', -- 'lookup' is a varchar optimisation for Infobright
	`platform` varchar(50) comment 'lookup',
	-- Date/time
	`dt` date,
	`tm` time,
	-- Event
	`event` varchar(255) comment 'lookup',
	`event_vendor` varchar(128) comment 'lookup', -- New in 0.0.6
	`event_id` varchar(38),
	`txn_id` int,
	-- Versioning
	`v_tracker` varchar(100) comment 'lookup',
	`v_collector` varchar(100) comment 'lookup',
	`v_etl` varchar(100) comment 'lookup',
	-- User and visit
	`user_id` varchar(38),
	`user_ipaddress` varchar(19),
	`user_fingerprint` varchar(50),
	`visit_id` smallint,
	-- Page
	`page_url` varchar(3000),
	`page_title` varchar(2000),
	`page_referrer` varchar(3000),
	-- Page URL components
	`page_urlscheme` varchar(16),    -- New in 0.0.6
	`page_urlhost` varchar(255),     -- New in 0.0.6
	`page_urlport` smallint,         -- New in 0.0.6
	`page_urlpath` varchar(1000),    -- New in 0.0.6
	`page_urlquery` varchar(3000),   -- New in 0.0.6
	`page_urlfragment` varchar(255), -- New in 0.0.6
	-- Marketing
	`mkt_source` varchar(255),
	`mkt_medium` varchar(255),
	`mkt_term` varchar(255),
	`mkt_content` varchar(500),
	`mkt_campaign` varchar(255),
	-- Custom Event
	`ev_category` varchar(255),
	`ev_action` varchar(255),
	`ev_label` varchar(255),
	`ev_property` varchar(255),
	`ev_value` float,
	-- Ecommerce
	`tr_orderid` varchar(255),
	`tr_affiliation` varchar(255),
	`tr_total` dec(18,2),
	`tr_tax` dec(18,2),
	`tr_shipping` dec(18,2),
	`tr_city` varchar(255),
	`tr_state` varchar(255),
	`tr_country` varchar(255),
	`ti_orderid` varchar(255),
	`ti_sku` varchar(255),
	`ti_name` varchar(255),
	`ti_category` varchar(255),
	`ti_price` dec(18,2),
	`ti_quantity` int,
	-- Page ping
	`pp_xoffset_min` mediumint, -- New in 0.0.6
	`pp_xoffset_max` mediumint, -- New in 0.0.6
	`pp_yoffset_min` mediumint, -- New in 0.0.6
	`pp_yoffset_max` mediumint, -- New in 0.0.6
	-- User Agent
	`useragent` varchar(500),
	-- Browser
	`br_name` varchar(50) comment 'lookup',
	`br_family` varchar(50) comment 'lookup',
	`br_version` varchar(50) comment 'lookup',
	`br_type` varchar(50) comment 'lookup',
	`br_renderengine` varchar(50) comment 'lookup',
	`br_lang` varchar(255) comment 'lookup',
	`br_features_pdf` tinyint(1),
	`br_features_flash` tinyint(1),
	`br_features_java` tinyint(1),
	`br_features_director` tinyint(1),
	`br_features_quicktime` tinyint(1),
	`br_features_realplayer` tinyint(1),
	`br_features_windowsmedia` tinyint(1),
	`br_features_gears` tinyint(1) ,
	`br_features_silverlight` tinyint(1),
	`br_cookies` tinyint(1),
	`br_colordepth` varchar(12) comment 'lookup',
	`br_viewwidth` mediumint,  -- New in 0.0.6
	`br_viewheight` mediumint, -- New in 0.0.6
	-- Operating System
	`os_name` varchar(50) comment 'lookup',
	`os_family` varchar(50) comment 'lookup',
	`os_manufacturer` varchar(50) comment 'lookup',
	`os_timezone` varchar(255) comment 'lookup',
	-- Device/Hardware
	`dvce_type` varchar(50) comment 'lookup',
	`dvce_ismobile` tinyint(1),
	`dvce_screenwidth` mediumint,
	`dvce_screenheight` mediumint,
	-- Document
	`doc_charset` varchar(128), -- New in 0.0.6
	`doc_width` mediumint, -- New in 0.0.6
	`doc_height` mediumint -- New in 0.0.6
) ENGINE=BRIGHTHOUSE DEFAULT CHARSET=utf8 ;