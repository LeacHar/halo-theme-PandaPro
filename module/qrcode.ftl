<div class="mt-3 mt-lg-0 mx-n1 flex-shrink-0">
    <#if settings.qq_qun_enable>
                    <span class="d-inline-block p-1"><a href="javascript:"
                                                        data-img="${settings.qq_qun_img}"
                                                        data-title="${settings.qq_qun_text}" data-desc="QQ扫一扫"
                                                        class="single-popup btn btn-secondary btn-qq btn-icon">
        <span><i class="text-lg iconfont icon-qq-fill"></i></span>
    </a></span>
    </#if>
    <#if settings.wechat_qun_enable>
    <span class="d-inline-block p-1"><a href="javascript:"
                                        data-img="${settings.wechat_qun_img}"
                                        data-title="${settings.wechat_qun_text}" data-desc="微信扫一扫"
                                        class="single-popup btn btn-secondary btn-weixin btn-icon">
        <span><i class="text-lg iconfont icon-wechat-fill"></i></span>
    </a></span>
    </#if>
</div>
