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

<div id="latest_posts-2" class="card card-sm widget Latest_Posts">
    <div class="card-header widget-header"><span>文章推荐<i class="bg-primary"></i></span></div>
    <div class="card-body">
        <div class="list-grid list-rounded my-n2">
            <@postTag method="listByCategoryId" categoryId="${settings.post_recommend}">
                <#list posts as p>
                    <div class="list-item py-2">
                        <#if settings.default_thumbnail_enable>
                        <div class="media media-3x2 col-4 mr-3">
                            <a class="media-content" href="${p.fullPath!}"
                               style='background-image:url("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7")'
                               data-bg="url('<#if p.thumbnail?? && p.thumbnail != "">${p.thumbnail!}<#else>${settings.default_thumbnail!}</#if>')"
                               data-nclazyload="true"></a>
                        </div>
                        </#if>
                        <div class="list-content py-0">
                            <div class="list-body">
                                <a href="${p.fullPath!}"
                                   class="list-title h-2x">${p.title!}</a>
                            </div>
                            <div class="list-footer">
                                <div class="text-muted text-xs">
                                    <time class="d-inline-block">${p.editTime?string('yyyy-MM-dd')}</time>
                                </div>
                            </div>
                        </div>
                    </div>
                </#list>
            </@postTag>
        </div>
    </div>
</div>
<div id="recommended_posts-3" class="card card-sm widget Recommended_Posts">
    <div class="card-header widget-header"><span>最近文章<i class="bg-primary"></i></span></div>
    <div class="card-body">
        <div class="list-grid list-rounded my-n2">
            <@postTag method="latest" top="5">
                <#list posts as p>
                    <div class="list-item py-2">
                        <#if settings.default_thumbnail_enable>
                        <div class="media media-3x2 col-4 mr-3">
                            <a class="media-content" href="${p.fullPath!}"
                               style='background-image:url("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7")'
                               data-bg="url('<#if p.thumbnail?? && p.thumbnail != "">${p.thumbnail!}<#else>${settings.default_thumbnail!}</#if>')"
                               data-nclazyload="true"></a>
                        </div>
                        </#if>
                        <div class="list-content py-0">
                            <div class="list-body">
                                <a href="${p.fullPath!}"
                                   class="list-title h-2x">${p.title!}</a>
                            </div>
                            <div class="list-footer">
                                <div class="text-muted text-xs">
                                    <time class="d-inline-block">${p.editTime?string('yyyy-MM-dd')}</time>
                                </div>
                            </div>
                        </div>
                    </div>
                </#list>
            </@postTag>
        </div>
    </div>
</div>
