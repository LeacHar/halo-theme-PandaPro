<div class="list-home list-grid list-grid-padding">
<#if posts?? && posts.getTotalElements() gt 0>
    <#list posts.content as post>
        <div class="list-item block card-plain ">
            <#if post.thumbnail?? && post.thumbnail!=''>
                <div class="media media-3x2 col-4 col-md-4">
                    <a class="media-content"
                       href="${post.fullPath!}" title="${post.title!}"
                       style='background-image:url("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7")'
                       data-bg="url('${post.thumbnail!}')"
                       data-nclazyload="true"></a>
                </div>
            <#elseif settings.default_thumbnail_enable>
                <div class="media media-3x2 col-4 col-md-4">
                    <a class="media-content"
                       href="${post.fullPath!}" title="${post.title!}"
                       style='background-image:url("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7")'
                       data-bg="url('${settings.default_thumbnail!}')"
                       data-nclazyload="true"></a>
                </div>
            </#if>
            <div class="list-content">
                <div class="list-body">
                    <a href="${post.fullPath!}"
                       title="${post.title!}" class="list-title text-lg h-2x">
                        ${post.title!}</a>
                    <div class="list-desc d-none d-md-block text-sm text-secondary my-3">
                        <div class="h-2x ">
                            ${post.summary!}
                        </div>
                    </div>
                </div>
                <div class="list-footer">
                    <div class="d-flex flex-fill align-items-center text-muted text-xs">
                        <div class="d-none d-md-inline-block"><a
                                    href="${blog_url!}"
                                    class="flex-avatar w-20 "><img alt=""
                                                                   src="${user.avatar!}"
                                                                   class="avatar avatar-20 photo w-20 loaded"
                                                                   data-src="${user.avatar!}"
                                                                   data-nclazyload="true"
                                                                   data-srcset="${user.avatar!}"
                                                                   srcset="${user.avatar!}"
                                                                   data-was-processed="true"
                                                                   width="20" height="20"></a></div>
                        <div class="d-inline-block ml-md-2">
                            <a href="${blog_url!}" title="由${user.nickname!}发布">${user.nickname!}</a>
                        </div>
                        <div class="d-inline-block">
                            <#if post.categories?? && post.categories?size gt 0>
                                <div class="d-inline-block mx-1 mx-md-2"><i class="text-primary">—</i></div>
                                <#list post.categories as category>
                                    <#if category.slug == "recommend">
                                        <#continue>
                                    </#if>
                                    <a href="${category.fullPath!}"
                                       title="${category.name!}">${category.name!}</a>
                                    <#break>
                                </#list>
                            </#if>

                        </div>
                        <div class="flex-fill"></div>
                        <div>${post.editTime?string('yyyy-MM-dd hh:mm')}</div>
                    </div>
                </div>
            </div>
        </div>
    </#list>
</#if>
</div>
