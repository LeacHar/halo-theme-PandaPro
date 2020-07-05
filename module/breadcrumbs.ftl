<div class="d-none d-md-block breadcrumbs text-muted mb-2">
    <span itemprop="itemListElement"><a href="${blog_url!}" itemprop="item" class="home"><span
                    itemprop="name">主页</span></a></span>

    <#if is_category?? && is_category>
        <span class="sep">›</span> <span itemprop="itemListElement"><a
                href="${category.fullPath!}" itemprop="item"><span
                    itemprop="name">${category.name!}</span></a></span>
    </#if>

    <#if is_sheet?? && is_sheet>
        <span class="sep">›</span> <span itemprop="itemListElement"><a
                href="${post.fullPath!}" itemprop="item"><span
                    itemprop="name">${post.title!}</span></a></span>
    </#if>

    <#if is_post?? && is_post>

        <#list categories as c>
            <span class="sep">›</span> <span itemprop="itemListElement"><a
                    href="${c.fullPath!}" itemprop="item"><span
                        itemprop="name">${c.name!}</span></a></span>
        </#list>

        <span class="sep">›</span> <span itemprop="itemListElement"><a
                href="${post.fullPath!}" itemprop="item"><span
                    itemprop="name">${post.title!}</span></a></span>
    </#if>

</div>
