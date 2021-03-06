<div class="post card">
    <div class="card-body">
        <div class="post-header border-bottom border-light mb-4 pb-3 pb-md-4">
            <#if post.categories?? && post.categories?size gt 0>
                <div class="">
                    <#list post.categories as category>
                        <#if category.id?c != settings.post_recommend>
                        <a href="${category.fullPath!}" class="d-inline-block"><span class="d-block badge badge-primary">#${category.name!}#</span></a>
                        </#if>
                    </#list>
                </div>
            </#if>
            <h1 class="h3 mb-3">${post.title!}</h1>

            <div class="meta d-flex align-items-center text-xs text-muted">
                <div>
                    <time class="d-inline-block">
                        <#assign ct = (.now?long-post.editTime?long)/1000>
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
                <div class="ml-auto text-sm">
                    <span class="mx-1"><i class="text-md iconfont icon-eye-line mx-1"></i><small>${post.visits}</small></span>
                    <#if !post.disallowComment!false>
                    <a class="mx-1" href="#comments"><i class="text-md iconfont icon-chat--line mx-1"></i><small>${post.commentCount!}</small></a>
                    </#if>
                </div>
            </div>                            <div class="border-theme bg-primary"></div>
        </div>
        <div class="post-content">
            <div class="nc-light-gallery">
                ${post.formatContent!}
            </div>
            <#if settings.post_copyright_enable!>
                <div class="post-copyright">
                    ${settings.post_copyright_content!}
                </div>
            </#if>
        </div>
        <div id="post-share-section" class="d-lg-flex align-items-lg-center flex-lg-fill mt-3 mt-lg-3">
            <#--<a href="javascript:;" class=" btn-like btn-link-like mr-4" data-action="like" data-id="4621">
                <i class="text-xl iconfont icon-thumb-up-line mx-1"></i><small class="font-theme like-count text-md">98</small>
            </a>-->
            <#if settings.reward_enable>
                <a href="javascript:;" class="plus-power-popup mr-4"><i class="text-xl iconfont icon-exchange-dollar-fill"></i></a>
                <div id="plus-power-popup-wrap">
                    <div class="popup-inner">
                        <div class="content p-4">
                            <div class="plus-power-tabcontent">
                                <div class="item-qrcode">
                                    <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="${user.nickname}" data-src="${settings.reward!}" data-nclazyload="true">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </#if>
            <div class="flex-fill"></div>
            <div class="post-share-action mt-4 mt-lg-0">
                <button class="btn btn-light btn-light btn-icon btn-rounded">
                    <span><i class="iconfont icon-share-box-fill"></i></span>
                </button>


                <a href="//service.weibo.com/share/share.php?url=${post.fullPath!}&amp;type=button&amp;language=zh_cn&amp;title=${post.summary!}&amp;searchPic=true" target="_blank" class="btn btn-light btn-icon btn-rounded weibo ">
                    <span><i class="iconfont icon-weibo-fill"></i></span>
                </a>

                <a href="javascript:" class="btn btn-light btn-icon btn-rounded weixin single-popup" data-img="http://qr.topscan.com/api.php?text=${post.summary!}" data-title="微信扫一扫 分享朋友圈" data-desc="在微信中请长按二维码">
                    <span><i class="iconfont icon-wechat-fill"></i></span>
                </a>

                <a href="https://connect.qq.com/widget/shareqq/index.html?url=${post.fullPath!}&amp;title=${post.title!}&amp;summary=${post.summary!}" target="_blank" class="btn btn-light btn-icon btn-rounded qq">
                    <span><i class="iconfont icon-qq-fill"></i></span>
                </a>

            </div>

        </div>

    </div>
</div>

<#include "tag.ftl" >

<#if post.tags?? && post.tags[0]??>
    <@postTag method="listByTagId" tagId="${post.tags[0].id}">
        <section class="list-related"><div class="my-3">
                <i class="text-xl text-primary iconfont icon-refresh-line mr-2"></i><span class="text-sm align-middle">相关文章</span>
            </div>
            <div class="content-related card">
                <div class="card-body">
                    <div class="list list-dots my-n2">
                        <#list posts as p>
                            <div class="list-item py-2">
                                <a href="${p.fullPath!}" class="list-title h-2x">${p.title!}</a>
                            </div>
                            <#if p?index == 4>
                                <#break>
                            </#if>
                        </#list>
                    </div>
                </div>
            </div>
        </section>
    </@postTag>
</#if>

<#include "comment.ftl">
<#if is_post??>
    <@comment post,"post" />
<#elseif is_sheet??>
    <@comment sheet,"sheet" />
</#if>
