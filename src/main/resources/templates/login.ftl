<#import "parts/common.ftl" as c>
<#import "parts/loginUtils.ftl" as l>

<@c.page>
    Login page
    <@l.login "/login"/>
    <a href="/registration">Register new user</a>
</@c.page>