<#--https://bootsnipp.com/snippets/oPWaZ-->

<style>
    :focus {
        outline: none;
    }
    .row {
        margin-right: 0;
        margin-left: 0;
    }
    /*
        Sometimes the sub menus get too large for the page and prevent the menu from scrolling, limiting functionality
        A quick fix is to change .side-menu to

        -> position:absolute

        and uncomment the code below.
        You also need to uncomment

        -> <div class="absolute-wrapper"> </div> in the html file

        you also need to tweek the animation. Just uncomment the code in that section
        --------------------------------------------------------------------------------------------------------------------
        If you want to make it really neat i suggest you look into an alternative like http://areaaperta.com/nicescroll/
        This will allow the menu to say fixed on body scoll and scoll on the side bar if it get to large
    */
    /*.absolute-wrapper{
        position: fixed;
        width: 300px;
        height: 100%;
        background-color: #f8f8f8;
        border-right: 1px solid #e7e7e7;
    }*/

    .side-menu {
        position: fixed;
        width: 300px;
        height: 100%;
        background-color: #f8f8f8;
        border-right: 1px solid #e7e7e7;
    }
    .side-menu .navbar {
        border: none;
    }
    .side-menu .navbar-header {
        width: 100%;
        border-bottom: 1px solid #e7e7e7;
    }
    .side-menu .navbar-nav .active a {
        background-color: transparent;
        margin-right: -1px;
        border-right: 5px solid #e7e7e7;
    }
    .side-menu .navbar-nav li {
        display: block;
        width: 100%;
        border-bottom: 1px solid #e7e7e7;
    }
    .side-menu .navbar-nav li a {
        padding: 15px;
    }
    .side-menu .navbar-nav li a .glyphicon {
        padding-right: 10px;
    }
    .side-menu #dropdown {
        border: 0;
        margin-bottom: 0;
        border-radius: 0;
        background-color: transparent;
        box-shadow: none;
    }
    .side-menu #dropdown .caret {
        float: right;
        margin: 9px 5px 0;
    }
    .side-menu #dropdown .indicator {
        float: right;
    }
    .side-menu #dropdown > a {
        border-bottom: 1px solid #e7e7e7;
    }
    .side-menu #dropdown .panel-body {
        padding: 0;
        background-color: #f3f3f3;
    }
    .side-menu #dropdown .panel-body .navbar-nav {
        width: 100%;
    }
    .side-menu #dropdown .panel-body .navbar-nav li {
        padding-left: 15px;
        border-bottom: 1px solid #e7e7e7;
    }
    .side-menu #dropdown .panel-body .navbar-nav li:last-child {
        border-bottom: none;
    }
    .side-menu #dropdown .panel-body .panel > a {
        margin-left: -20px;
        padding-left: 35px;
    }
    .side-menu #dropdown .panel-body .panel-body {
        margin-left: -15px;
    }
    .side-menu #dropdown .panel-body .panel-body li {
        padding-left: 30px;
    }
    .side-menu #dropdown .panel-body .panel-body li:last-child {
        border-bottom: 1px solid #e7e7e7;
    }
    .side-menu #search-trigger {
        background-color: #f3f3f3;
        border: 0;
        border-radius: 0;
        position: absolute;
        top: 0;
        right: 0;
        padding: 15px 18px;
    }
    .side-menu .brand-name-wrapper {
        min-height: 50px;
    }
    .side-menu .brand-name-wrapper .navbar-brand {
        display: block;
    }
    .side-menu #search {
        position: relative;
        z-index: 1000;
    }
    .side-menu #search .panel-body {
        padding: 0;
    }
    .side-menu #search .panel-body .navbar-form {
        padding: 0;
        padding-right: 50px;
        width: 100%;
        margin: 0;
        position: relative;
        border-top: 1px solid #e7e7e7;
    }
    .side-menu #search .panel-body .navbar-form .form-group {
        width: 100%;
        position: relative;
    }
    .side-menu #search .panel-body .navbar-form input {
        border: 0;
        border-radius: 0;
        box-shadow: none;
        width: 100%;
        height: 50px;
    }
    .side-menu #search .panel-body .navbar-form .btn {
        position: absolute;
        right: 0;
        top: 0;
        border: 0;
        border-radius: 0;
        background-color: #f3f3f3;
        padding: 15px 18px;
    }
    /* Main body section */
    .side-body {
        margin-left: 310px;
    }
    /* small screen */
    @media (max-width: 768px) {
        .side-menu {
            position: relative;
            width: 100%;
            height: 0;
            border-right: 0;
            border-bottom: 1px solid #e7e7e7;
        }
        .side-menu .brand-name-wrapper .navbar-brand {
            display: inline-block;
        }
        /* Slide in animation */
        @-moz-keyframes slidein {
            0% {
                left: -300px;
            }
            100% {
                left: 10px;
            }
        }
        @-webkit-keyframes slidein {
            0% {
                left: -300px;
            }
            100% {
                left: 10px;
            }
        }
        @keyframes slidein {
            0% {
                left: -300px;
            }
            100% {
                left: 10px;
            }
        }
        @-moz-keyframes slideout {
            0% {
                left: 0;
            }
            100% {
                left: -300px;
            }
        }
        @-webkit-keyframes slideout {
            0% {
                left: 0;
            }
            100% {
                left: -300px;
            }
        }
        @keyframes slideout {
            0% {
                left: 0;
            }
            100% {
                left: -300px;
            }
        }
        /* Slide side menu*/
        /* Add .absolute-wrapper.slide-in for scrollable menu -> see top comment */
        .side-menu-container > .navbar-nav.slide-in {
            -moz-animation: slidein 300ms forwards;
            -o-animation: slidein 300ms forwards;
            -webkit-animation: slidein 300ms forwards;
            animation: slidein 300ms forwards;
            -webkit-transform-style: preserve-3d;
            transform-style: preserve-3d;
        }
        .side-menu-container > .navbar-nav {
            /* Add position:absolute for scrollable menu -> see top comment */
            position: fixed;
            left: -300px;
            width: 300px;
            top: 43px;
            height: 100%;
            border-right: 1px solid #e7e7e7;
            background-color: #f8f8f8;
            -moz-animation: slideout 300ms forwards;
            -o-animation: slideout 300ms forwards;
            -webkit-animation: slideout 300ms forwards;
            animation: slideout 300ms forwards;
            -webkit-transform-style: preserve-3d;
            transform-style: preserve-3d;
        }
        /* Uncomment for scrollable menu -> see top comment */
        /*.absolute-wrapper{
              width:285px;
              -moz-animation: slideout 300ms forwards;
              -o-animation: slideout 300ms forwards;
              -webkit-animation: slideout 300ms forwards;
              animation: slideout 300ms forwards;
              -webkit-transform-style: preserve-3d;
              transform-style: preserve-3d;
          }*/
        @-moz-keyframes bodyslidein {
            0% {
                left: 0;
            }
            100% {
                left: 300px;
            }
        }
        @-webkit-keyframes bodyslidein {
            0% {
                left: 0;
            }
            100% {
                left: 300px;
            }
        }
        @keyframes bodyslidein {
            0% {
                left: 0;
            }
            100% {
                left: 300px;
            }
        }
        @-moz-keyframes bodyslideout {
            0% {
                left: 300px;
            }
            100% {
                left: 0;
            }
        }
        @-webkit-keyframes bodyslideout {
            0% {
                left: 300px;
            }
            100% {
                left: 0;
            }
        }
        @keyframes bodyslideout {
            0% {
                left: 300px;
            }
            100% {
                left: 0;
            }
        }
        /* Slide side body*/
        .side-body {
            margin-left: 5px;
            margin-top: 70px;
            position: relative;
            -moz-animation: bodyslideout 300ms forwards;
            -o-animation: bodyslideout 300ms forwards;
            -webkit-animation: bodyslideout 300ms forwards;
            animation: bodyslideout 300ms forwards;
            -webkit-transform-style: preserve-3d;
            transform-style: preserve-3d;
        }
        .body-slide-in {
            -moz-animation: bodyslidein 300ms forwards;
            -o-animation: bodyslidein 300ms forwards;
            -webkit-animation: bodyslidein 300ms forwards;
            animation: bodyslidein 300ms forwards;
            -webkit-transform-style: preserve-3d;
            transform-style: preserve-3d;
        }
        /* Hamburger */
        .navbar-toggle {
            border: 0;
            float: left;
            padding: 18px;
            margin: 0;
            border-radius: 0;
            background-color: #f3f3f3;
            /*display: inline-block !important;*/
        }

      /*  @media (min-width: 768px)
            .navbar-toggle {
                display: block !important;
            }*/

        /* Search */
        #search .panel-body .navbar-form {
            border-bottom: 0;
        }
        #search .panel-body .navbar-form .form-group {
            margin: 0;
        }
        .navbar-header {
            /* this is probably redundant */
            position: fixed;
            z-index: 3;
            background-color: #f8f8f8;
        }
        /* Dropdown tweek */
        #dropdown .panel-body .navbar-nav {
            margin: 0;
        }
    }
</style>

<script>
    $(function () {
        $('.navbar-toggle').click(function () {
            $('.navbar-nav').toggleClass('slide-in');
            $('.side-body').toggleClass('body-slide-in');
//            $('#search').removeClass('in').addClass('collapse').slideUp(200);

            /// uncomment code for absolute positioning tweek see top comment in css
            //$('.absolute-wrapper').toggleClass('slide-in');

        });

        // Remove menu for searching
        /*$('#search-trigger').click(function () {
            $('.navbar-nav').removeClass('slide-in');
            $('.side-body').removeClass('body-slide-in');

            /// uncomment code for absolute positioning tweek see top comment in css
            //$('.absolute-wrapper').removeClass('slide-in');

        });*/
    });
</script>
<div id="apps-root">
    <input type="hidden" id="confMoquiSessionToken" value="${ec.web.sessionToken}">
    <input type="hidden" id="confAppHost" value="${ec.web.getHostName(true)}">
    <input type="hidden" id="confAppRootPath" value="${ec.web.servletContext.contextPath}">
    <input type="hidden" id="confBasePath" value="${ec.web.servletContext.contextPath}/apps">
    <input type="hidden" id="confLinkBasePath" value="${ec.web.servletContext.contextPath}/main">
    <input type="hidden" id="confUserId" value="${ec.user.userId!''}">
    <input type="hidden" id="confLocale" value="${ec.user.locale.toLanguageTag()}">
    <#assign navbarCompList = sri.getThemeValues("STRT_HEADER_NAVBAR_COMP")>
    <#list navbarCompList! as navbarCompUrl><input type="hidden" class="confNavPluginUrl" value="${navbarCompUrl}"></#list>
    <#if hideNav! != 'true'>




    </#if>

    <#--<div id="content"><div class="inner"><div class="container-fluid">
        <subscreens-active></subscreens-active>
    </div></div></div>
-->

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li v-for="(navMenuItem, menuIndex) in navMenuList" class="breadcrumb-item"><a :href="getLinkPath(getNavHref(menuIndex))">{{navMenuItem.title}}</a></li>

        </ol>
    </nav>

    <div class="row">
        <!-- uncomment code for absolute positioning tweek see top comment in css -->
        <!-- <div class="absolute-wrapper"> </div> -->
        <!-- Menu -->
        <div class="side-menu">

            <nav class="navbar navbar-default" role="navigation">
                <#--<ul id="dynamic-menus" class="nav navbar-nav">
                    <li v-for="(navMenuItem, menuIndex) in navMenuList" class="dropdown">
                        <template v-if="menuIndex < (navMenuList.length - 1)">
                            <m-link :href="getNavHref(menuIndex)">{{navMenuItem.title}} <i class="glyphicon glyphicon-chevron-right"></i></m-link>
                        </template>
                    </li>
                </ul>

                <template v-if="navMenuList.length > 0"><m-link class="navbar-text" :href="getNavHref(navMenuList.length - 1)">{{navMenuList[navMenuList.length - 1].title}}</m-link></template>
-->
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <div class="brand-wrapper">
                        <!-- Hamburger -->
                        <button type="button" class="navbar-toggle">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <!-- Brand -->
                        <div class="brand-name-wrapper">
                            <a class="navbar-brand" href="#">
                                Brand
                            </a>
                        </div>

                        <!-- Search -->
                       <#-- <a data-toggle="collapse" href="#search" class="btn btn-default" id="search-trigger">
                            <span class="glyphicon glyphicon-search"></span>
                        </a>-->

                        <!-- Search body -->
                       <#-- <div id="search" class="panel-collapse collapse">
                            <div class="panel-body">
                                <form class="navbar-form" role="search">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Search">
                                    </div>
                                    <button type="submit" class="btn btn-default "><span class="glyphicon glyphicon-ok"></span></button>
                                </form>
                            </div>
                        </div>-->
                    </div>

                </div>

                <!-- Main Menu -->
                <div class="side-menu-container">
                    <ul class="nav navbar-nav">


                        <#--<li v-for="subscreen in navMenuList[0].subscreens" :class="{active:subscreen.active}"><m-link :href="getLinkPath(subscreen.pathWithParams)"><span :class="subscreen.image"></span>{{subscreen.title}}</m-link> </li>-->


                        <!-- Dropdown-->
                        <template v-for="subscreen in navMenuList[0].subscreens">
                        <#--<li class="panel panel-default" :id="subscreen.name">-->
                        <li :id="subscreen.name" :class="{active:subscreen.active}">
                            <a data-toggle="collapse" :href="'#' +subscreen.name + '-lvl1'">
                            <#--<a  :href="getLinkPath(subscreen.pathWithParams)">-->
                                <span :class="subscreen.image"></span>{{subscreen.title}}<span class="caret"></span>
                            </a>

                            <!-- Dropdown level 1 -->
                            <div :id="subscreen.name + '-lvl1'" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">

                                        <template v-for="subscreen in navMenuList[1].subscreens">
                                            <li>
                                                <m-link :href="getLinkPath(subscreen.pathWithParams)"  data-toggle="dropdown">{{subscreen.title}}</m-link>
                                            </li>

                                        </template>
                                        <!-- Dropdown level 2 -->
                                        <li class="panel panel-default" :id="subscreen.name">
                                            <a data-toggle="collapse" :href="'#' + subscreen.name + '-lvl2'">
                                                <span class="glyphicon glyphicon-off"></span> Sub Level <span class="caret"></span>
                                            </a>
                                            <div :id="subscreen.name+'-lvl2'" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <ul class="nav navbar-nav">
                                                        <li><a href="#">Link</a></li>
                                                        <li><a href="#">Link</a></li>
                                                        <li><a href="#">Link</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        </template>
                        <#--<li><a href="#"><span class="glyphicon glyphicon-signal"></span> Link</a></li>-->

                    </ul>
                </div><!-- /.navbar-collapse -->
            </nav>

        </div>

        <!-- Main Content -->
        <div class="container-fluid">
            <div class="side-body">
                <subscreens-active></subscreens-active>
            </div>
        </div>
    </div>
   <#-- <#if hideNav! != 'true'>
    <div id="footer" class="bg-dark">
        <#assign footerItemList = sri.getThemeValues("STRT_FOOTER_ITEM")>
        <div id="apps-footer-content">
            <#list footerItemList! as footerItem>
                <#assign footerItemTemplate = footerItem?interpret>
                <@footerItemTemplate/>
            </#list>
        </div>
    </div>
    </#if>-->
</div>

<div id="screen-document-dialog" class="modal dynamic-dialog" aria-hidden="true" style="display: none;" tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">${ec.l10n.localize("Documentation")}</h4>
            </div>
            <div class="modal-body" id="screen-document-dialog-body">
                <div class="spinner"><div>Loading…</div></div>
            </div>
            <div class="modal-footer"><button type="button" class="btn btn-primary" data-dismiss="modal">${ec.l10n.localize("Close")}</button></div>
        </div>
    </div>
</div>
