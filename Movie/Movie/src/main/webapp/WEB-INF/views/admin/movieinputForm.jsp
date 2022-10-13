<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="col-12 grid-margin">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Movie 등록</h4>
                <form class="form-sample" action="movieinsert.do" method="post" enctype="multipart/form-data">
  
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
                          <input type="date" value="" id="opendateval" class="form-control" name="opendate" />
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
                    <div class="col-md-6">
                      <div class="form-group">
                        <label>File upload</label>
                        <input type="file" class="file-upload-default" name="file">
                        <div class="input-group col-xs-12">
                          <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image">
                          <span class="input-group-append">
                            <button class="file-upload-browse btn btn-primary" type="button">Upload</button>
                          </span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label for="exampleTextarea1">COMMENTS</label>
                        <textarea class="form-control" id="exampleTextarea1" name="comments" rows="4"></textarea>
                      </div>
                    </div>
                 
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                  <button type="submit" class="btn btn-primary mr-2">Submit</button>
                 
                </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
	<script type="text/javascript">
		document.getElementById("opendateval").value = new Date().toISOString()
				.substring(0, 10);
	</script>
	<script src="resources/admin/js/file-upload.js"></script>
</body>
</html>