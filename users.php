<?php
/**
 * Copyright 2009      Lucas Baudin <xapantu@gmail.com>
 *           2012-2014 Stephen Just <stephenjust@users.sf.net>
 *           2014      Daniel Butum <danibutum at gmail dot com>
 * This file is part of stk-addons.
 *
 * stk-addons is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * stk-addons is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with stk-addons. If not, see <http://www.gnu.org/licenses/>.
 */
require_once(__DIR__ . DIRECTORY_SEPARATOR . "config.php");
AccessControl::setLevel(AccessControl::PERM_VIEW_BASIC_PAGE);

// set current user if not defined
$_GET['user'] = (isset($_GET['user'])) ? $_GET['user'] : User::getLoggedUserName();

$tpl = StkTemplate::get('users/index.tpl')
    ->assignTitle(_h('Users'))
    ->addUtilLibrary()
    ->addScriptInclude("user.js");

$tpl_data = [
    "body" => Util::ob_get_require_once(ROOT_PATH . "users-panel.php"),
    "menu" => Util::ob_get_require_once(ROOT_PATH . "users-menu.php")
];

// output the view
$tpl->assign("user", $tpl_data);
echo $tpl;
