<#macro comment target,type>
    <#if !post.disallowComment!false>
        <script src="${theme_base!}/source/js/halo-comment.min.js"></script>
        <halo-comment id="${target.id?c}" type="${type}" />
    </#if>
</#macro>
