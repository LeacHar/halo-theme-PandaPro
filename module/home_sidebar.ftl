<#include "widget/recommend_post.ftl">
<#if settings.siderbar_ad_enable>
    <div id="media_image-2" class="card card-sm widget widget_media_image"><a
                href="${settings.siderbar_ad_href}"><img width="600" height="449"
                                                         src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                                         class="image wp-image-4914  attachment-full size-full"
                                                         alt=""
                                                         style="max-width: 100%; height: auto;"
                                                         data-src="${settings.siderbar_ad_img}"
                                                         data-nclazyload="true"
                                                         data-srcset="${settings.siderbar_ad_img}"
                                                         data-sizes="(max-width: 600px) 100vw, 600px"></a>
    </div>
</#if>
<#include "widget/hot_post.ftl">

