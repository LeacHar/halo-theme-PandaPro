<footer class="footer bg-dark py-3 py-lg-4">
    <div class="container">
        <div class="d-lg-flex flex-md-fill align-items-lg-center">
            <div class="d-lg-flex flex-lg-column mr-lg-4">
                <div class="footer-menu">
                    <@linkTag method="listTeams">
                        <#list teams as item>
                            <ul>
                                <#if item.team == "home">
                                    <#list item.links as link>
                                        <li id="menu-item-4963"
                                            class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4963"><a
                                                    href="${link.url!}" target="_blank" title="${link.name!}">${link.name!}</a></li>
                                    </#list>
                                </#if>
                            </ul>
                        </#list>
                    </@linkTag>
                </div>
                <div class="footer-copyright text-xs">
                    Copyright © 2020 <a href="${blog_url!}" title="${blog_title!}"
                                        rel="home">${blog_title!}</a>
                    . Designed by <a href="https://www.nicetheme.cn" title="nicetheme奈思主题-资深的原创WordPress主题开发团队" target="_blank" rel="nofollow">nicetheme</a>
                    . Power by <a href="https://halo.run/" title="An excellent open source blog publishing application." target="_blank" rel="nofollow">Halo</a>.
                </div>
            </div>
            <div class="flex-lg-fill"></div>

            <#include "qrcode.ftl">

        </div>
    </div>
</footer>
<a href="javascript:void(0)" id="scroll_to_top" class="btn btn-primary btn-icon scroll-to-top"><span><i
                class="text-lg iconfont icon-arrow-up-fill"></i></span></a>
<div class="mobile-overlay"></div>
<script type="text/javascript" src="${theme_base!}/source/js/jimu.js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/lazyload.min.js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/popper.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/plugins.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/owl.carousel@2.3.4/dist/owl.carousel.min.js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/resizesensor.min.js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/theia-sticky-sidebar.min.js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/nicetheme.js"></script>
<script src="https://cdn.jsdelivr.net/npm/highlightjs@9.12.0/highlight.pack.min.js"></script>
<script>
    <#if settings.days_of_site??>
    //建站时间
    var urodz= new Date("${settings.days_of_site}");
    var now = new Date();
    var ile = now.getTime() - urodz.getTime();
    var dni = Math.floor(ile / (1000 * 60 * 60 * 24));
    $("#days_of_site").html(dni);
    </#if>
    // 代码高亮
    hljs.initHighlightingOnLoad();
    // 页面加载动画
    var option =  {
        origin: 'bottom',
        distance: "1.25rem",
        useDelay: "always",
        interval: 50
    }
    ScrollReveal().reveal('.list-home .list-item', option)
    ScrollReveal().reveal('.list-home .list-item', option)
    ScrollReveal().reveal('.widget', option)
    ScrollReveal().reveal('.post', option)
    ScrollReveal().reveal('.list-related', option)
    ScrollReveal().reveal('.post-tags', option)
    ScrollReveal().reveal('.comments', option)
    ScrollReveal().reveal('.breadcrumbs', option)
</script>
<@global.footer />
</body>
</html>
