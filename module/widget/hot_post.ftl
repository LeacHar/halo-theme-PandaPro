<div id="recommended_posts-3" class="card card-sm widget Recommended_Posts">
    <div class="card-header widget-header"><span>最热文章<i class="bg-primary"></i></span></div>
    <div class="card-body">
        <div class="list-grid list-rounded my-n2">
            <@postTag method="latest" top="5">
                <#list posts?sort_by("visits")?reverse as p>
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
                                    <time class="d-inline-block">$
                                        <#assign ct = (.now?long-p.editTime?long)/1000>
                                        <#if ct gte 31104000>${(ct/31104000)?int} 年前
                                            <#t><#elseif ct gte 2592000>${(ct/2592000)?int} 个月前
                                            <#t><#elseif ct gte 86400*2>${(ct/86400)?int} 天前
                                            <#t><#elseif ct gte 86400>昨天
                                            <#t><#elseif ct gte 3600>${(ct/3600)?int} 小时前
                                            <#t><#elseif ct gte 60>${(ct/60)?int} 分钟前
                                            <#t><#elseif ct gt 0>${ct?int} 秒前
                                            <#t><#else>刚刚
                                        </#if>
                                    </time>
                                </div>
                            </div>
                        </div>
                    </div>
                </#list>
            </@postTag>
        </div>
    </div>
</div>
