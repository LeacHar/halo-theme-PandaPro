<#macro comment target,type>
    <#if !post.disallowComment!false>
        <div id="comments" class="comments">
            <div class="my-3">
                <i class="text-xl text-primary iconfont icon-message--line mr-2"></i><span
                        class="text-sm align-middle">评论 <small
                            class="font-theme text-muted">(${post.commentCount!})</small></span>
            </div>
            <div class="card">
                <div class="card-body">

                    <script src="${options.comment_internal_plugin_js!'//cdn.jsdelivr.net/gh/LeacHar/halo-comment-PandaPro@1.0/dist/halo-comment.min.js'}"></script>
                    <halo-comment id="${target.id?c}" type="${type}"/>

                    <!-- .comment-list -->
                </div>
            </div>
        </div>
        <!-- #comments -->
    </#if>
</#macro>
