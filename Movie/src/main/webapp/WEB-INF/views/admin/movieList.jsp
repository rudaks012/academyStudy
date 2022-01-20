<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Movie List</h4>
                <p class="card-description">
                  Add class
                  <code>.table-striped</code>
                </p>
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                       	<th> <div class="form-check form-check-info">
                            <label class="form-check-label">
                              <input type="checkbox" class="form-check-input" >
                            
                            </label>
                          </div>
                          </th>   
                        <th>poster</th>
                        <th>mcode</th>
                        <th>mtitle</th>
                        <th>opendate</th>
                        <th>grade</th>
                        <th>rate</th>
                        <th>dolby</th>
                        <th>mx</th>
                        <th>likeit</th>
                   
                        <th>filename</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${movies }" var="movie" varStatus="status">
                      <tr>
                      	<td><div class="form-check form-check-warning">
                            <label class="form-check-label">
                              <input type="checkbox" class="form-check-input" value="{status.count}">
                            
                           	</label>
                          </div></td> 
                        <td class="py-1"><img src="movieposter/${movie.pfilename }"
                          alt="image" /></td>
                        <td>${movie.mcode }</td>
                        <td>${movie.mtitle }</td>
                        <td>${movie.opendate }</td>
                        <td>${movie.grade }</td>
                        <td>
                          <div>${movie.rate }</div>
                          <div class="progress">
                            <div class="progress-bar bg-success" role="progressbar"
                              style="width: ${movie.rate }%" aria-valuenow="25" aria-valuemin="0"
                              aria-valuemax="100"></div>
                          </div>
                        </td>
                        <td>${movie.dolby }</td>
                        <td>${movie.mx }</td>
                        <td>${movie.likeit }</td>
               
                        <td>${movie.filename }</td>
                        <td align="center">
                    
                        <button type="button"class="btn btn-inverse-info btn-fw" onclick="Edit('${member.id}', '${status.count }')">변경</button>
                      </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
</body>
</html>