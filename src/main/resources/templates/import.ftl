<#import "macro3.ftl" as layout1>
<#import "macro4.ftl" as layout2>
<head>
    <meta charset="UTF-8">
    <title>Freemaker Macro Import Test</title>
</head>
<body>
<h1>Import Test</h1>

<@layout1.macro3 1 2 3 4 5 />

<br>

<@layout1.macro3 a=1 b=2 c=3 d=4 e=5 data\-foo=6 myns\:bar=7 />

<br>

<@layout2.macro4 ; x>
    ${x}.nested 안에 이 내용이 들어감!<br>
</@layout2.macro4>
</body>