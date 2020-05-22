<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${errors != null}">
  <div id="flush_error">
    入力内容にエラーがあります。<br />
    <c:forEach var="error" items="${errors}">
      <c:out value="${error}" />
      <br />
    </c:forEach>

  </div>
</c:if>
<label class="form" for="content">新規タスクを入力</label>
<br />
<input type="text" name="content" size="40" maxlength="20"
  value="${task.content}" />
<br />
<br />

<input type="hidden" name="_token" value="${_token}" />
<button class="form" type="submit">入力</button>