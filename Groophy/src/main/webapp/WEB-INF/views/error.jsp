<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="include/header.jsp"%>
  <section id="breadcrumb">
    <div class="container">
      <div class="row">
        <div class="span12">
          <ul class="breadcrumb notop">
            <li><a href="/groophy/">Home</a><span class="divider">/</span></li>
            <li class="active">error</li>
          </ul>
        </div>
      </div>
    </div>
  </section>
  <section id="maincontent">
    <div class="container">
      <div class="row">
        <div class="span12">
          <div class="centered">
            <h2 class="error">ERROR!</h2>
            <h3>죄송합니다. 서버에 문제가 발생했습니다</h3>
            <p>
              The page you are looking for might have been removed, had its name changed, or is temporarily unavailable.
            </p>
          </div>
        </div>
      </div>
    </div>
  </section>
  <%@include file="include/footer.jsp"%>