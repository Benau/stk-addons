<!DOCTYPE html>
<html>
    <head>
	<title>{$title|default:"SuperTuxKart Add-ons"}</title>
	{foreach $meta_tags as $meta_field => $meta_content}
	<meta http-equiv="{$meta_field}" content="{$meta_content}" />
	{/foreach}
	<meta http-equiv="X-UA-Compatible" content="IE=9" />
	{foreach $script_inline as $script}
	<script type="{$script.type|default:'text/javascript'}">{$script.content}</script>    
	{/foreach}
	{foreach $script_includes as $script}
	<script type="{$script.type|default:'text/javascript'}" src="{$script.src}"></script>
	{/foreach}
	<link rel="stylesheet" media="screen" href="{#css_screen#}" />
    </head>
    <body>
	{include file=#top_menu#}
	<div id="body-frame">