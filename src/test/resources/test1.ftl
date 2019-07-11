<html>
<head>
    <title>Welcome!</title>
</head>
<body>
    <#list fruits>
        <ul>
            <#items as fruit>
            <li>${fruit}
            </#items>
        </ul>
    </#list>
</body>
</html>