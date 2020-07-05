<header class="header">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <nav class="navbar navbar-expand-lg shadow">
        <div class="container">
            <!-- / brand -->
            <a href="${blog_url!}" rel="home"
               class="logo navbar-brand order-2 order-lg-1">
                <img src="${blog_logo!}" class="d-inline-block logo-light nc-no-lazy"
                     alt="${blog_title!}">
                <img src="${blog_logo!}" class="d-none logo-dark nc-no-lazy" alt="${blog_title!}"></a>
            <button class="navbar-toggler order-1" type="button" id="sidebarCollapse">
                <i class="text-xl iconfont icon-menu-line"></i>
            </button>
            <button class="navbar-toggler nav-search order-3 collapsed" data-target="#navbar-search"
                    data-toggle="collapse" aria-expanded="false" aria-controls="navbar-search">
                <i class="text-xl iconfont icon-search-line"></i>
                <i class="text-xl iconfont icon-close-fill"></i>
            </button>
            <!-- brand -->
            <div class="collapse navbar-collapse order-md-2">
                <ul class="navbar-nav main-menu ml-4 mr-auto">
                    <@menuTag method="tree">
                        <#list menus?sort_by('priority') as menu>
                            <li id="menu-item-4941"
                                class="menu-item menu-item-type-custom menu-item-object-custom current-menu-ancestor current-menu-parent <#if menu.children?? && menu.children?size gt 0>menu-item-has-children </#if> menu-item-4941">
                                <#if menu.children?? && menu.children?size gt 0>
                                    <a>${menu.name}</a>
                                <#else>
                                    <a href="${menu.url!}" target="${menu.target!}">${menu.name}</a>
                                </#if>
                                <#if menu.children?? && menu.children?size gt 0>
                                    <ul class="sub-menu">
                                        <#list menu.children?sort_by('priority') as child>
                                            <li id="menu-item-4978"
                                                class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4978">
                                                <a
                                                        href="${child.url!}" target="${child.target!}">${child.name}</a>
                                            </li>
                                        </#list>
                                    </ul>
                                </#if>
                            </li>
                        </#list>
                    </@menuTag>
                </ul>
                <ul class="navbar-nav align-items-center order-1 order-lg-2">
                    <#--
                    <li class="nav-item">
                        <a class="btn btn-link btn-icon nav-switch-dark-mode" href="javascript:">
								<span class=" icon-light-mode" data-toggle="tooltip" data-placement="bottom"
                                      title="深色模式">
									<i class="text-lg iconfont icon-moon-line"></i>
								</span>
                            <span class="icon-dark-mode" data-toggle="tooltip" data-placement="bottom" title="日间模式"><i
                                        class="text-lg text-warning iconfont icon-moon-fill"></i></span>
                        </a>
                    </li>
                    -->
                    <li class="nav-item ml-1 ml-md-2">
                        <a class="btn btn-link btn-icon nav-link nav-search collapsed" href="#navbar-search"
                           data-toggle="collapse" title="Search" aria-expanded="false" aria-controls="navbar-search">
        <span data-toggle="tooltip" data-placement="bottom" title="搜索">
            <i class="text-lg iconfont icon-search-line"></i>
            <i class="text-lg iconfont icon-close-fill"></i>
        </span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="mobile-sidebar">

        <div class="mobile-sidebar-header text-right p-3">
            <div class="btn-group btn-group-sm btn-group-rounded">
                <#--<button type="button" class="btn btn-link nav-switch-dark-mode">
                    <span class="icon-light-mode"><i class="d-block text-xl iconfont icon-moon-fill "></i></span>
                    <span class="icon-dark-mode"><i
                                class="d-block text-xl text-warning iconfont icon-moon-fill "></i></span>
                </button>-->
                <button type="button" class="btn btn-link sidebar-close"><i
                            class="d-block text-xl iconfont icon-close-circle-fill"></i></button>
            </div>
        </div>
        <ul class="mobile-sidebar-menu nav flex-column">
            <@menuTag method="tree">
                <#list menus?sort_by('priority') as menu>
                    <li id="menu-item-4945"
                        class="menu-item menu-item-type-custom menu-item-object-custom current-menu-ancestor current-menu-parent <#if menu.children?? && menu.children?size gt 0> menu-item-has-children </#if> menu-item-4945">
                        <#if menu.children?? && menu.children?size gt 0>
                            <a><i class="iconfont ${menu.icon}"></i>${menu.name}</a>
                        <#else>
                            <a href="${menu.url!}"><i
                                        class="iconfont ${menu.icon}"></i>${menu.name}</a>
                        </#if>
                        <#if menu.children?? && menu.children?size gt 0>
                            <ul class="sub-menu">
                                <#list menu.children?sort_by('priority') as child>
                                    <li id="menu-item-4975"
                                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4975"><a
                                                href="${child.url!}">${child.name!}</a></li>
                                </#list>
                            </ul>
                        </#if>
                    </li>
                </#list>
            </@menuTag>
        </ul>
    </div>
    <div class="navbar-search collapse " id="navbar-search" style="">
        <div class="container">
            <form method="get" role="search" id="searchform" class="searchform shadow"
                  action="${blog_url!}/search">
                <div class="input-group">
                    <input type="text" name="keyword" id="s" placeholder="请输入搜索关键词并按回车键…" class="form-control" required="">
                    <div class="input-group-append">
                        <button class="btn btn-nostyle" type="submit"><i class="text-lg iconfont icon-search-line"></i>
                        </button>
                    </div>
                </div>
                <!-- /input-group -->
            </form>
        </div>
    </div>
</header>
