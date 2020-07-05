<#assign title="友情链接  - ${blog_title!}">
<#include "module/header.ftl">

<body class="page-template page-template-pages page-template-page-links page-template-pagespage-links-php page page-id-5 <#if settings.dark_mode>nice-dark-mode</#if>"">

<#include "module/nav.ftl">

<main class="py-4 py-md-5 h-v-75">
    <div class="container">
        <div class="list-links-item">
            <h2 class="text-lg mt-4 mb-3">友情链接</h2>
            <div class="row-sm list-grouped my-n2">

				<@linkTag method="list">
					<#list links as link>
						<div class="col-md-3 d-flex py-2">
							<div class="block p-3 d-flex flex-fill align-items-center m-0">

								<a href="${link.url!}" target="_blank" class="flex-avatar w-64 mr-3">
									<img src="<#if link.logo??>${theme_base}/source/images/default-avatar.png<#else>${link.logo!}</#if>"></a>

								<div class="flex-fill">
									<a href="${link.url!}" target="_blank" class="h6 h-1x m-0" title="${link.description!}">${link.name!}</a>
								</div>

							</div>
						</div>
                	</#list>
				</@linkTag>
            </div>
        </div>
    </div>
</main>

<#include "module/footer.ftl">
