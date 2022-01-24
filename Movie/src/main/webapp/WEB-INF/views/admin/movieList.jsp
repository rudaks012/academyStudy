<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.hide {
	display: none;
}

.atag:vlink {
	text-decoration: none;
}

.atag:link {
	color: black;
}

.off-screen {
	display: none;
}

#pagebtn {
	width: 500px;
	left: 0%;
}

#pagebtn a.active {
	background: #0457b4;
	color: #fff;
}
</style>
</head>
<body>
	<div class="col-lg-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">Movie List</h4>

				<div class="table-responsive">
					<table class="table table-striped" id="tableEl">
						<thead>
							<tr>
								<th>
									<div class="form-check form-check-info">
										<label class="form-check-label"> <input
											type="checkbox" id="chkall" class="form-check-input">

										</label>
									</div>
								</th>
								<th>poster</th>

								<th>mtitle</th>
								<th>opendate</th>

								<th>rate</th>

								<th>likeit</th>


								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${movies }" var="movie" varStatus="status">
								<tr>
									<td><div class="form-check form-check-warning">
											<label class="form-check-label"> <input
												type="checkbox" class="form-check-input" id="chk"
												value="{status.count}">

											</label>
										</div></td>
									<td class="py-1"><img
										src="resources/movieposter/${movie.pfilename }" alt="image" /></td>

									<td><a href="javascript:movietitle('${movie.mcode}')"
										class="atag">${movie.mtitle }</a></td>
									<td>${fn:substring(movie.opendate,0,11)}</td>

									<td>
										<div>${movie.rate }</div>
										<div class="progress">
											<div class="progress-bar bg-success" role="progressbar"
												style="width: ${movie.rate }%" aria-valuenow="25"
												aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</td>

									<td>${movie.likeit }</td>


									<td align="center">

										<button type="button" class="btn btn-inverse-info btn-fw"
											onclick="Edit('${movie.mcode}', '${status.count }')">변경</button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>



	</div>

	<div class="hide">
		<div class="col-12 grid-margin">
			<div class="card">
				<div class="card-body">
					<h4 class="card-title">Movie 상세정보</h4>
					<form class="form-sample" action="adminMovieUpdate.do" method="post"
						enctype="multipart/form-data">

						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">CODE</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="mcode" />
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">TITLE</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="mtitle" />
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">OPEN DATE</label>
									<div class="col-sm-9">
										<!-- value 기본날짜 -->
										<input type="date" id="opendateval"
											class="form-control" name="opendate" />
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">GRADE</label>
									<div class="col-sm-9">
										<select class="form-control" name="grade">
											<option>ALL</option>
											<option>12세</option>
											<option>15세</option>
											<option>19세</option>
										</select>
									</div>
								</div>
							</div>
						</div>


						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">DOLBY</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="dolby" />
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">MK</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="mx" />
									</div>
								</div>
							</div>

						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">RATE</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="rate" />
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">LIKEIT</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="likeit" />
									</div>
								</div>
							</div>

						</div>

						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label for="exampleTextarea1">COMMENTS</label>
									<textarea class="form-control" id="exampleTextarea1"
										name="comments" rows="4"></textarea>
								</div>
							</div>

						</div>
						<div class="row">
							<div class="col-md-6">
								<button type="submit" class="btn btn-primary mr-2">수정하기</button>
								<button type="button" onclick="cancelbtn()" class="btn btn-primary mr-2">취 소</button>

							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		const chkall = document.querySelector("#chkall");
		chkall.addEventListener("change", function(e) {
			let chkd = document.querySelectorAll("#chk");
			for (let i = 0; i < chkd.length; i++) {
				chkd[i].checked = e.target.checked;
			}
		})

		function movietitle(mcode) {
			$.ajax({
				url : "adminMovieSelect.do",
				data : {
					mcode : mcode
				},
				success : function(data) {
					movieinfoselect(data)
				}
			})
		}

		function movieinfoselect(data) {
			$(".hide").slideDown();
			$("input[name='mcode']").val(data.mcode)
			$("input[name='mtitle']").val(data.mtitle)		
			$("input[name='opendate']").val(data.opendate.substring(0, 10));		
			$("select[name='grade']").val(data.grade);
			$("input[name='rate']").val(data.rate)
			$("input[name='dolby']").val(data.dolby)
			$("input[name='mx']").val(data.mx)
			$("input[name='likeit']").val(data.likeit)
			$("textarea[name='comments']").val(data.comments)

		}
		function cancelbtn(){
			$(".hide").slideUp();
		}

		var pagenumber = 3
		var pageCount = 5
		var currentPage = 1;

		function page(pagenumber, pageCount, currentPage) {

			var tableEl = $('#tableEl');
			var tr = tableEl.find('tbody tr');
			var trtotal = tr.length;
			
			if(trtotal == 0) return;
			var pagetotal = Math.ceil(trtotal / pagenumber);
			var pageGroup = Math.ceil(currentPage / pageCount);
			var last = pageGroup * pageCount;
			if (last > pagetotal){				
				last = pagetotal;
			}
			var first;
			if (last % pageCount == 0) {
				first = last - (pageCount - 1);
			} else {
				first = last + 1 - last % pageCount
			}
			var next = last + 1;
			var prev = first - 1;
			$('#pagebtn').remove();
			tableEl.after('<div id="pagebtn">');
			if (prev > 0) {
				$('<a href="#"></a>').addClass("btn btn-inverse-info btn-fw")
						.attr('data', 'prev').html("<").appendTo('#pagebtn');
			}
			for (let i = first; i <= last; i++) {
				$('<a href="#"></a>').addClass("btn btn-inverse-info btn-fw")
						.attr('data', i).html(i).appendTo('#pagebtn');
			}
			if (last < pagetotal) {
				$('<a href="#"></a>').addClass("btn btn-inverse-info btn-fw")
						.attr('data', 'next').html(">").appendTo('#pagebtn');
			}
			var paginglink = $('#pagebtn a');
			paginglink.removeClass('active');
			$("[data=" + currentPage + "]").addClass("active")
			var startval = (currentPage - 1) * pagenumber;
			var endval = startval + pagenumber;
			tr.css('opacity', '0.0').addClass('off-screen').slice(startval,
					endval).removeClass('off-screen').animate({
				opacity : 1
			}, 500);

			paginglink.on('click', function(e) {
				e.preventDefault();
				var thisval = $(this);
				var data = thisval.attr("data");
				var selectedPage = thisval.text();
				if (data == "next")
					selectedPage = next;
				if (data == "prev")
					selectedPage = prev;

				page(pagenumber, pageCount, selectedPage);
			});
		}
		page(pagenumber, pageCount, currentPage);
	</script>


</body>
</html>