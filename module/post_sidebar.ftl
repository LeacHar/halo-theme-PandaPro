<div id="author_card-2" class="card card-sm widget Author_Card">
    <div class="widget-author-cover">
        <div class="media media-2x1">
            <div class="media-content" style="background-image: url('${settings.author_bg!}');"
                 data-bg="url('${settings.author_bg!}')" data-nclazyload="false" data-was-processed="true"></div>
        </div>
        <div class="widget-author-avatar">
            <div class="flex-avatar mx-2 w-80 border border-white border-2">
                <img alt="" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                     class="avatar avatar-80 photo 80 loaded" data-src="${user.avatar!}" srcset="${user.avatar!}"
                     data-was-processed="true" width="80" height="80">
            </div>
        </div>
    </div>
    <div class="widget-author-meta text-center p-4">
        <div class="h6 mb-3">${user.nickname}<small class="d-block"><span
                        class="badge badge-outline-primary mt-2">站长</span></small>
        </div>
        <div class="desc text-xs mb-3 h-2x"></div>
        <div class="row no-gutters text-center">
            <a class="col">
                <@postTag method="count">
                    <span class="font-theme font-weight-bold text-md">${count!0}</span><small
                        class="d-block text-xs text-muted">文章</small>
                </@postTag>
            </a>
            <a class="col">
                <@commentTag method="count">
                    <span class="font-theme font-weight-bold text-md">${count!0}</span><small
                        class="d-block text-xs text-muted">评论</small>
                </@commentTag>
            </a>
            <a class="col">
                <#if settings.days_of_site??>
                    <span class="font-theme font-weight-bold text-md" id="days_of_site">546</span><small
                        class="d-block text-xs text-muted">建站</small>
                </#if>
            </a>
        </div>
    </div>
</div>

<#include "widget/recommend_post.ftl">

<#include "widget/hot_post.ftl">
