<#import "parts/common.ftl" as c>
<#import "parts/loginUtils.ftl" as l>

<@c.page>
    <div>
        <@l.logout/>
    </div>
    <div>
        <form method="post">
            <input type="text" name="text" placeholder="Enter message">
            <input type="text" name="tag" placeholder="Enter tag">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit">Add</button>
        </form>
    </div>
    <div>Messages List</div>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter}" placeholder="Find by tag">
        <button type="submit">Find</button>
    </form>
    <#list messages as msg>
        <div>
            <b>${msg.id}</b>
            <span>${msg.text}</span>
            <i>${msg.tag}</i>
            <strong>${msg.authorName}</strong>
        </div>
    <#else>
        No messages
    </#list>
</@c.page>
