<#if posts.totalPages gt 1>
<@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
    <nav class="navigation pagination" role="navigation" aria-label="Posts Navigation"><h2
                class="screen-reader-text">Posts Navigation</h2>
        <div class="nav-links">
            <#if pagination.hasPrev>
            <a class="prev page-numbers" href="${pagination.prevPageFullPath!}"><span
                        class="btn btn-light btn-icon btn-rounded btn-sm"><span><i
                                class="text-md iconfont icon-arrow-left-s-line"></i></span></span></a>
            </#if>
            <#list pagination.rainbowPages as number>
                <#if number.isCurrent>
                    <span aria-current="page" class="page-numbers current">${number.page!}</span>
                <#else>
                    <a class="page-numbers" href="${number.fullPath!}">${number.page!}</a>
                </#if>
            </#list>
            <#if pagination.hasNext>
                <a class="next page-numbers"
                   href="${pagination.nextPageFullPath!}"><span
                            class="btn btn-light btn-icon btn-rounded btn-sm"><span><i
                                    class="text-md iconfont icon-arrow-right-s-line"></i></span></span></a>
            </#if>
        </div>
    </nav>
</@paginationTag>
</#if>
