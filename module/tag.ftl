<@tagTag method="listByPostId" postId="${post.id}">
    <#if (tags?size > 0)>
        <div class="post-tags block d-flex text-sm p-4">
            <i class="text-xl text-primary iconfont icon-price-tag--line mr-3"></i>
            <div class="flex-fill">
                <#list tags as tag>
                    <span class="d-inline-block text-muted mr-2"># <a
                            href="${context!}/tags/${tag.slugName!}" rel="tag">${tag.name}</a></span>
                </#list>
            </div>
        </div>
    </#if>
</@tagTag>
