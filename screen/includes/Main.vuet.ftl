
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
    <div id="top"><nav class="navbar-expand-lg"><div class="container-fluid">
        <header class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        <#assign headerLogoList = sri.getThemeValues("STRT_HEADER_LOGO")>
        <#if headerLogoList?has_content><m-link href="/apps" class="navbar-brand"><img src="${sri.buildUrl(headerLogoList?first).getUrl()}" alt="Home"></m-link></#if>
        <#assign headerTitleList = sri.getThemeValues("STRT_HEADER_TITLE")>
        <#if headerTitleList?has_content><div class="navbar-brand">${ec.resource.expand(headerTitleList?first, "")}</div></#if>
        </header>
<#--

            <div id="main-nav-bar-left">
                    <template v-for="(navMenuItem, menuIndex) in navMenuList" class="app-btn">
                        <template v-if="navMenuItem.name=='apps'">
                       <ul id="app-bar-list">
                            <li v-for="subscreen in navMenuItem.subscreens" >
                                {{subscreen.title}}
                            </li>
                        </ul>
                        </template>
                    </template>
            </div>
-->

            <div >
                <template v-for="(navMenuItem, menuIndex) in navMenuList">
                    <template v-if="navMenuItem.name=='apps'">
                        <ul class="nav navbar-nav">
                            <li  v-for="subscreen in navMenuItem.subscreens" :class="{active:subscreen.active}">><m-link :href="getLinkPath(subscreen.pathWithParams)">{{subscreen.title}}</m-link> </li>
                        </ul>
                    </template>
                </template>
            </div>

    </nav></div>
    </#if>

    <div id="content"><div class="inner"><div class="container-fluid">
        <subscreens-active></subscreens-active>
    </div></div></div>

    <#if hideNav! != 'true'>
    <div id="footer" class="bg-dark">
        <#assign footerItemList = sri.getThemeValues("STRT_FOOTER_ITEM")>
        <div id="apps-footer-content">
            <#list footerItemList! as footerItem>
                <#assign footerItemTemplate = footerItem?interpret>
                <@footerItemTemplate/>
            </#list>
        </div>
    </div>
    </#if>
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
