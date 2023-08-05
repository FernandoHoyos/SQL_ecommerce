-- Base de datos: `ecommerce_fahr`
--

-- --------------------------------------------------------

--**ERROR 1067**
-- Estructura de tabla para la tabla `fahr_adsbundle`
--

CREATE TABLE `fahr_adsbundle` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `check_inventory` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `view` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `total_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `internal_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1,
  `discount` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_button` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '#afdbd0',
  `color_button_hover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '#afdbd0',
  `date_event` tinyint(1) NOT NULL DEFAULT 0,
  `date_start` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00', --***DA EL ERROR; #1067 - Valor por defecto invalido para 'date_start'****--
  `date_end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_adsbundle_product`
--

CREATE TABLE `fahr_adsbundle_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bundle_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `free` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_ads_activities`
--

CREATE TABLE `fahr_ads_activities` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `anonce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trouble` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_ads_ali_meta`
--

CREATE TABLE `fahr_ads_ali_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origPrice` decimal(10,2) DEFAULT 0.00,
  `origPriceMax` decimal(10,2) DEFAULT 0.00,
  `origSalePrice` decimal(10,2) DEFAULT 0.00,
  `origSalePriceMax` decimal(10,2) DEFAULT 0.00,
  `productUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedbackUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storeUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storeRate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skuOriginaAttr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skuOriginal` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countries` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currencyCode` char(4) COLLATE utf8mb4_unicode_ci DEFAULT 'USD',
  `needUpdate` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_ads_apply`
--

CREATE TABLE `fahr_ads_apply` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `apply_id` int(10) NOT NULL,
  `apply_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `term_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_ads_attributes`
--

CREATE TABLE `fahr_ads_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `attr_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_ads_categories`
--

CREATE TABLE `fahr_ads_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_ads_comments_hash`
--

CREATE TABLE `fahr_ads_comments_hash` (
  `id` bigint(20) NOT NULL,
  `comment_ID` int(10) DEFAULT 0,
  `comment_post_ID` int(10) DEFAULT 0,
  `comment_date` datetime DEFAULT NULL,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_ads_orders_item`
--

CREATE TABLE `fahr_ads_orders_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trans_id` bigint(20) UNSIGNED NOT NULL,
  `productId` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) DEFAULT 1,
  `tip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_status` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT 'free',
  `shipping_price` decimal(10,2) DEFAULT 0.00,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_ads_products`
--

CREATE TABLE `fahr_ads_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT 0.00,
  `priceMax` decimal(10,2) DEFAULT 0.00,
  `salePrice` decimal(10,2) DEFAULT 0.00,
  `salePriceMax` decimal(10,2) DEFAULT 0.00,
  `discount` int(3) DEFAULT 0,
  `countReview` int(11) DEFAULT 0,
  `packageType` enum('lot','piece') COLLATE utf8mb4_unicode_ci DEFAULT 'piece',
  `evaluateScore` decimal(2,1) DEFAULT 0.0,
  `quantity` int(11) UNSIGNED DEFAULT 0,
  `promotionVolume` int(11) UNSIGNED DEFAULT 0,
  `currency` char(4) COLLATE utf8mb4_unicode_ci DEFAULT 'USD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_ads_products_meta`
--

CREATE TABLE `fahr_ads_products_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lotNum` int(11) UNSIGNED DEFAULT 0,
  `pack` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skuAttr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sizeAttr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `links` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation_default` text COLLATE utf8mb4_unicode_ci DEFAULT 'lowest_price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_ads_search_analytics`
--

CREATE TABLE `fahr_ads_search_analytics` (
  `id` bigint(20) NOT NULL,
  `search` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q` int(10) DEFAULT 0,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_ads_sessions`
--

CREATE TABLE `fahr_ads_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_ads_shipping`
--

CREATE TABLE `fahr_ads_shipping` (
  `id` bigint(20) NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 1,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` decimal(12,2) DEFAULT 0.00,
  `comment` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_cost_enabled` decimal(12,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_ads_shipping_location`
--

CREATE TABLE `fahr_ads_shipping_location` (
  `id` bigint(20) NOT NULL,
  `apply_id` int(10) NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_ads_task_upload_images`
--

CREATE TABLE `fahr_ads_task_upload_images` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `links` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_ads_variations`
--

CREATE TABLE `fahr_ads_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storeUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storeRate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currencyCode` char(4) COLLATE utf8mb4_unicode_ci DEFAULT 'USD',
  `skuOriginaAttr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skuOriginal` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_ads_variations_map`
--

CREATE TABLE `fahr_ads_variations_map` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `skuAttrMap` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**ERROR 1067**
-- Estructura de tabla para la tabla `fahr_asi_activities`
--

CREATE TABLE `fahr_asi_activities` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `product_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT '0000-00-00 00:00:00',    --DA EL ERROR #1067 - Valor por defecto invalido para 'date'
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**ERROR 1067**
-- Estructura de tabla para la tabla `fahr_asi_shipping_data`
--

CREATE TABLE `fahr_asi_shipping_data` (
  `id` bigint(20) NOT NULL,
  `productId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT '0000-00-00 00:00:00'       --DA EL ERROR #1067 - Valor por defecto invalido para 'date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_asi_shipping_methods`
--

CREATE TABLE `fahr_asi_shipping_methods` (
  `id` bigint(20) NOT NULL,
  `vendor_id` int(11) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_commentmeta`
--

CREATE TABLE `fahr_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**ERROR 1067**
-- Estructura de tabla para la tabla `fahr_comments`
--

CREATE TABLE `fahr_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00', --#1067 - Valor por defecto invalido para 'comment_date'
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**ERROR 1067**
-- Estructura de tabla para la tabla `fahr_links`
--

CREATE TABLE `fahr_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00', --#1067 - Valor por defecto invalido para 'link_updated'
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_options`
--

CREATE TABLE `fahr_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_payment_discount`
--

CREATE TABLE `fahr_payment_discount` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prod_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applyto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` decimal(12,2) DEFAULT 0.00,
  `date` int(10) DEFAULT NULL,
  `date_active` int(10) DEFAULT NULL,
  `count` int(10) DEFAULT 0,
  `count_max` int(10) DEFAULT 0,
  `status` int(1) DEFAULT 0,
  `never_expires` int(1) DEFAULT 0,
  `tickbox` int(1) DEFAULT 0,
  `tickbox_value` decimal(12,2) DEFAULT 0.00,
  `tickbox_auto` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_payment_transaction`
--

CREATE TABLE `fahr_payment_transaction` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT 0,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tnx_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT 'abandoned',
  `fulfillment` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT 'not_processed',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` enum('express','standard') COLLATE utf8mb4_unicode_ci DEFAULT 'standard',
  `payment_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prod_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT 0.00,
  `amount_clean` decimal(12,2) DEFAULT 0.00,
  `amount_shipping` decimal(12,2) DEFAULT 0.00,
  `amount_purchase` decimal(12,2) DEFAULT 0.00,
  `amount_purchase_ali` decimal(12,2) DEFAULT 0.00,
  `tax` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trash` int(1) NOT NULL DEFAULT 0,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basket` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_pb_templates`
--

CREATE TABLE `fahr_pb_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_id` tinyint(1) DEFAULT 0,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tmpl` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isClose` tinyint(1) DEFAULT 0,
  `isHome` tinyint(1) DEFAULT 0,
  `start_at` int(10) DEFAULT NULL,
  `finish_at` int(10) DEFAULT NULL,
  `views` bigint(20) DEFAULT 0,
  `clicks` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_postmeta`
--

CREATE TABLE `fahr_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**ERROR 1067**
-- Estructura de tabla para la tabla `fahr_posts`
--

CREATE TABLE `fahr_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00', --#1067 - Valor por defecto invalido para 'post_date'
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_termmeta`
--

CREATE TABLE `fahr_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_terms`
--

CREATE TABLE `fahr_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_term_relationships`
--

CREATE TABLE `fahr_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_term_taxonomy`
--

CREATE TABLE `fahr_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**OK**
-- Estructura de tabla para la tabla `fahr_usermeta`
--

CREATE TABLE `fahr_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--**ERROR 1067**
-- Estructura de tabla para la tabla `fahr_users`
--

CREATE TABLE `fahr_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00', --#1067 - Valor por defecto invalido para 'user_registered'
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fahr_adsbundle`
--
ALTER TABLE `fahr_adsbundle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dates` (`date_start`,`date_end`),
  ADD KEY `status` (`status`);

--
-- Indices de la tabla `fahr_adsbundle_product`
--
ALTER TABLE `fahr_adsbundle_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bundle_id` (`bundle_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indices de la tabla `fahr_ads_activities`
--
ALTER TABLE `fahr_ads_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fahr_ads_ali_meta`
--
ALTER TABLE `fahr_ads_ali_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `fahr_ads_apply`
--
ALTER TABLE `fahr_ads_apply`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fahr_ads_attributes`
--
ALTER TABLE `fahr_ads_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `attr_name` (`attr_name`);

--
-- Indices de la tabla `fahr_ads_categories`
--
ALTER TABLE `fahr_ads_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_id` (`term_id`);

--
-- Indices de la tabla `fahr_ads_comments_hash`
--
ALTER TABLE `fahr_ads_comments_hash`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_ID` (`comment_ID`);

--
-- Indices de la tabla `fahr_ads_orders_item`
--
ALTER TABLE `fahr_ads_orders_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`),
  ADD KEY `trans_id` (`trans_id`);

--
-- Indices de la tabla `fahr_ads_products`
--
ALTER TABLE `fahr_ads_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `evaluateScore` (`evaluateScore`);

--
-- Indices de la tabla `fahr_ads_products_meta`
--
ALTER TABLE `fahr_ads_products_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indices de la tabla `fahr_ads_search_analytics`
--
ALTER TABLE `fahr_ads_search_analytics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `search` (`search`);

--
-- Indices de la tabla `fahr_ads_sessions`
--
ALTER TABLE `fahr_ads_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indices de la tabla `fahr_ads_shipping`
--
ALTER TABLE `fahr_ads_shipping`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indices de la tabla `fahr_ads_shipping_location`
--
ALTER TABLE `fahr_ads_shipping_location`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fahr_ads_task_upload_images`
--
ALTER TABLE `fahr_ads_task_upload_images`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `fahr_ads_variations`
--
ALTER TABLE `fahr_ads_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `fahr_ads_variations_map`
--
ALTER TABLE `fahr_ads_variations_map`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indices de la tabla `fahr_asi_activities`
--
ALTER TABLE `fahr_asi_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indices de la tabla `fahr_asi_shipping_data`
--
ALTER TABLE `fahr_asi_shipping_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`);

--
-- Indices de la tabla `fahr_asi_shipping_methods`
--
ALTER TABLE `fahr_asi_shipping_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indices de la tabla `fahr_commentmeta`
--
ALTER TABLE `fahr_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `fahr_comments`
--
ALTER TABLE `fahr_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `fahr_links`
--
ALTER TABLE `fahr_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `fahr_options`
--
ALTER TABLE `fahr_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `fahr_payment_discount`
--
ALTER TABLE `fahr_payment_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fahr_payment_transaction`
--
ALTER TABLE `fahr_payment_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `hash` (`hash`(100)),
  ADD KEY `tnx_id` (`tnx_id`(100)),
  ADD KEY `status` (`status`,`fulfillment`);

--
-- Indices de la tabla `fahr_pb_templates`
--
ALTER TABLE `fahr_pb_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fahr_postmeta`
--
ALTER TABLE `fahr_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `fahr_posts`
--
ALTER TABLE `fahr_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `fahr_termmeta`
--
ALTER TABLE `fahr_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `fahr_terms`
--
ALTER TABLE `fahr_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `fahr_term_relationships`
--
ALTER TABLE `fahr_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `fahr_term_taxonomy`
--
ALTER TABLE `fahr_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `fahr_usermeta`
--
ALTER TABLE `fahr_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `fahr_users`
--
ALTER TABLE `fahr_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fahr_adsbundle`
--
ALTER TABLE `fahr_adsbundle`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `fahr_adsbundle_product`
--
ALTER TABLE `fahr_adsbundle_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `fahr_ads_activities`
--
ALTER TABLE `fahr_ads_activities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `fahr_ads_ali_meta`
--
ALTER TABLE `fahr_ads_ali_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT de la tabla `fahr_ads_apply`
--
ALTER TABLE `fahr_ads_apply`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fahr_ads_attributes`
--
ALTER TABLE `fahr_ads_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4944;

--
-- AUTO_INCREMENT de la tabla `fahr_ads_categories`
--
ALTER TABLE `fahr_ads_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `fahr_ads_comments_hash`
--
ALTER TABLE `fahr_ads_comments_hash`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fahr_ads_orders_item`
--
ALTER TABLE `fahr_ads_orders_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `fahr_ads_products`
--
ALTER TABLE `fahr_ads_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT de la tabla `fahr_ads_products_meta`
--
ALTER TABLE `fahr_ads_products_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT de la tabla `fahr_ads_search_analytics`
--
ALTER TABLE `fahr_ads_search_analytics`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `fahr_ads_sessions`
--
ALTER TABLE `fahr_ads_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2164;

--
-- AUTO_INCREMENT de la tabla `fahr_ads_shipping`
--
ALTER TABLE `fahr_ads_shipping`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `fahr_ads_shipping_location`
--
ALTER TABLE `fahr_ads_shipping_location`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `fahr_ads_variations`
--
ALTER TABLE `fahr_ads_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fahr_ads_variations_map`
--
ALTER TABLE `fahr_ads_variations_map`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `fahr_asi_activities`
--
ALTER TABLE `fahr_asi_activities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fahr_asi_shipping_data`
--
ALTER TABLE `fahr_asi_shipping_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fahr_asi_shipping_methods`
--
ALTER TABLE `fahr_asi_shipping_methods`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fahr_commentmeta`
--
ALTER TABLE `fahr_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1833;

--
-- AUTO_INCREMENT de la tabla `fahr_comments`
--
ALTER TABLE `fahr_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT de la tabla `fahr_links`
--
ALTER TABLE `fahr_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fahr_options`
--
ALTER TABLE `fahr_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82700;

--
-- AUTO_INCREMENT de la tabla `fahr_payment_discount`
--
ALTER TABLE `fahr_payment_discount`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fahr_payment_transaction`
--
ALTER TABLE `fahr_payment_transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `fahr_pb_templates`
--
ALTER TABLE `fahr_pb_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `fahr_postmeta`
--
ALTER TABLE `fahr_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2170;

--
-- AUTO_INCREMENT de la tabla `fahr_posts`
--
ALTER TABLE `fahr_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=942;

--
-- AUTO_INCREMENT de la tabla `fahr_termmeta`
--
ALTER TABLE `fahr_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fahr_terms`
--
ALTER TABLE `fahr_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `fahr_term_taxonomy`
--
ALTER TABLE `fahr_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `fahr_usermeta`
--
ALTER TABLE `fahr_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `fahr_users`
--
ALTER TABLE `fahr_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;