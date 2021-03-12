<#import "parts/common.ftl" as c>
<#import "parts/loginUtils.ftl" as l>

<@c.page>
    <div>Add new user</div>
    <div>
        <#if message??>
            ${message}
        </#if>
    </div>
    <@l.login "/registration"/>
</@c.page>
