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
