<#import "../../layout/defaultLayout.ftl" as layout>
<@layout.layout "List of groups">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="${urlFor('net.unit8.bouncr.web.controller.IndexController', 'home')}">Administration</a></li>
    <li class="breadcrumb-item active">OAuth2 applications</li>
  </ol>
  <h1>List of oauth2 applications</h1>

  <#list groups>
  <table class="table">
    <thead>
      <tr>
        <th>Name</th>
        <th>Homepage URL</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <#items as group>
        <tr>
          <td>
            <a href="${urlFor('edit?id='+ oauth2Application.id)}">${oauth2Application.name}</a>
            </#if>
          </td>
          <td>${oauth2Application.homepageUrl}</td>
          <td>${oauth2Application.description}</td>
        </tr>
      </#items>
    </tbody>
  </table>
  <#else>
  <div class="alert alert-info" role="alert">
     <p>No groups</p>
  </div>
  </#list>

  <a href="${urlFor('newForm')}">New register</a>
</@layout.layout>