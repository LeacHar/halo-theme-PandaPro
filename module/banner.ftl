<#if settings.banner_enable>
    <#if posts.number == 0>
        <div class="list-banner list-rounded banner-style-3 banner-has-nav pt-3 pt-md-5 load-hidden">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="owl-carousel owl-theme">
                            <#if settings.banner_one_img??>
                                <div class="card item list-item list-overlay-content m-0">
                                    <div class="media media-2x1">
                                        <a class="media-content" target="_blank"
                                           href="${settings.banner_one_href!}"
                                           style='background-image:url("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7")'
                                           data-bg=" url(${settings.banner_one_img!})"
                                           data-nclazyload="true">
                                            <div class="overlay-grad"></div>
                                        </a>
                                    </div>
                                    <div class="list-content text-center text-lg-left p-2 p-md-3">
                                        <div class="list-body">
                                            <a href="${settings.banner_one_href!}" target="_blank"
                                               class="h4 text-white h-2x m-0">${settings.banner_one_text!}</a>
                                        </div>
                                    </div>
                                </div>
                            </#if>
                            <#if settings.banner_two_img??>
                                <div class="card item list-item list-overlay-content m-0">
                                    <div class="media media-2x1">
                                        <a class="media-content" target="_blank"
                                           href="${settings.banner_two_href!}"
                                           style='background-image:url("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7")'
                                           data-bg=" url(${settings.banner_two_img!})"
                                           data-nclazyload="true">
                                            <div class="overlay-grad"></div>
                                        </a>
                                    </div>
                                    <div class="list-content text-center text-lg-left p-2 p-md-3">
                                        <div class="list-body">
                                            <a href="${settings.banner_two_href!}" target="_blank"
                                               class="h4 text-white h-2x m-0">${settings.banner_two_text!}</a>
                                        </div>
                                    </div>
                                </div>
                            </#if>
                            <#if settings.banner_three_img??>
                                <div class="card item list-item list-overlay-content m-0">
                                    <div class="media media-2x1">
                                        <a class="media-content" target="_blank"
                                           href="${settings.banner_three_href!}"
                                           style='background-image:url("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7")'
                                           data-bg=" url(${settings.banner_three_img!})"
                                           data-nclazyload="true">
                                            <div class="overlay-grad"></div>
                                        </a>
                                    </div>
                                    <div class="list-content text-center text-lg-left p-2 p-md-3">
                                        <div class="list-body">
                                            <a href="${settings.banner_three_href!}" target="_blank"
                                               class="h4 text-white h-2x m-0">${settings.banner_three_text!}</a>
                                        </div>
                                    </div>
                                </div>
                            </#if>
                        </div>
                    </div>
                    <div class="col-lg-4 d-none d-lg-flex">
                        <div class="list-item block list-overlay-content list-overlay-top d-md-flex flex-md-fill mb-0">
                            <div class="media d-md-flex flex-md-fill">
                                <a class="media-content" href="${settings.banner_right_href!}"
                                   target="_blank"
                                   style='background-image:url("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7")'
                                   data-bg=" url(${settings.banner_right_img!})"
                                   data-nclazyload="true">
                                    <div class="overlay-grad-top"></div>
                                </a>
                            </div>
                            <a href="${settings.banner_right_href!}" target="_blank"
                               class="list-content">
                                <div class="list-body ">
                                    <div class="list-title text-sm text-muted">${settings.banner_right_tip!}</div>
                                </div>
                                <div class="list-footer text-xl text-white mt-1">
                                    ${settings.banner_three_text!}
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </#if>
</#if>
