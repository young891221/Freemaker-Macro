<#--<#import "macro1.ftl" as macro1>-->
<head>
    <meta charset="UTF-8">
    <title>Freemaker Macro Test</title>
</head>
<body>
<h1>Macro Test</h1>

<h2>macro 간단 생성</h2>
<#--macro1 생성-->
<#macro macro1>
macro1 간단 호출
</#macro>
<#-- 메크로 호출 -->
<@macro1/>

<h2>macro1 파라미터 사용하기</h2>
<#macro macro2 a b c="I'm default parameter">
macro1 파라미터 사용: ${a}, ${b}, ${c}
</#macro>
<@macro2 a="a" b=4 />

<h2>macro2 배열 넘겨주기</h2>
<#macro list title language>
<p>${title?cap_first}:
<ul>
    <#list language as x>
    <li>${x?cap_first}
    </#list>
</ul>
</#macro>
<@list language=["java", "javascript", "freemarker"] title="Language"/>


<#--
<@macro1 1 2 3 4 5 />

<@macro1 a=1 b=2 c=3 d=4 e=5 data\-foo=6 myns\:bar=7 />
-->

</body>