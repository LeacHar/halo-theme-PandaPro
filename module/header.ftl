<#macro header title>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="keywords" content="${meta_keywords!}"/>
    <meta name="description" content="${meta_description!}"/>

    <@global.head />

    <title>${title!}</title>

    <link rel="alternate" type="application/rss+xml" title="${blog_title!} » Feed"
          href="${rss_url!}">

    <script type="text/javascript">
        /* <![CDATA[ */
        var globals = {
            "ajax_url": "${blog_url!}",
            "url_theme": "${blog_url!}",
            "site_url": "${blog_url!}",
            "post_id": "0",
            "allow_switch_darkmode": "manual",
            "comment_ip": "0"
        };
        var __ = {
            "load_more": "\u52a0\u8f7d\u66f4\u591a",
            "reached_the_end": "- \u6ca1\u6709\u66f4\u591a\u5185\u5bb9 -",
            "thank_you": "\u8c22\u8c22\u70b9\u8d5e",
            "success": "\u64cd\u4f5c\u6210\u529f",
            "cancelled": "\u53d6\u6d88\u70b9\u8d5e"
        };
        /* ]]> */
    </script>

    <style type="text/css">
        img.wp-smiley,
        img.emoji {
            display: inline !important;
            border: none !important;
            box-shadow: none !important;
            height: 1em !important;
            width: 1em !important;
            margin: 0 .07em !important;
            vertical-align: -0.1em !important;
            background: none !important;
            padding: 0 !important;
        }
    </style>
    <link rel="stylesheet" id="wp-block-library-css" href="${theme_base!}/source/css/style.min.css" type="text/css"
          media="all">
    <link rel="stylesheet" id="smartideo_css-css" href="${theme_base!}/source/css/smartideo.css" type="text/css"
          media="screen">
    <link rel="stylesheet" id="jimu-css-css" href="${theme_base!}/source/css/jimu.css" type="text/css" media="all">
    <link rel="stylesheet" id="nicetheme-iconfont-css" href="${theme_base!}/source/css/iconfont.css" type="text/css"
          media="all">
    <link rel="stylesheet" id="nicetheme-nicetheme-css" href="${theme_base!}/source/css/nicetheme.css" type="text/css"
          media="all">
    <link rel="stylesheet" id="nicetheme-style-css" href="${theme_base!}/source/css/style.css" type="text/css"
          media="all">
    <style>
        .post pre {
            padding: 0 !important;
        }
    </style>
    <#if settings.dark_mode>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/highlightjs@9.16.2/styles/atom-one-dark.css">
        <style>
            .hljs {
                background: #313435 !important;
            }
        </style>
    <#else>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/highlightjs@9.16.2/styles/atom-one-light.css">
        <style>
            .hljs {
                background: #fdfbfb !important;
            }
        </style>
    </#if>
    <link rel="icon"
          href="${options.blog_favicon!}"
          sizes="32x32">
    <link rel="icon"
          href="${options.blog_favicon!}"
          sizes="192x192">
    <link rel="apple-touch-icon"
          href="${options.blog_favicon!}">
    <meta name="msapplication-TileImage"
          content="${options.blog_favicon!}">
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-migrate@1.4.1/dist/jquery-migrate.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/scrollreveal@4.0.6/dist/scrollreveal.min.js"></script>
    <style>
        .load-hide, .widget, .post, .list-related, .post-tags, .comments, .breadcrumbs {
            opacity: 1;
        }
    </style>
</head>
</#macro>
