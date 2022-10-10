
  	<div class="modal fade" id="AddNotice" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-primary text-white">
        <h5 class="modal-title " id="exampleModalLabel">Add Notice</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" class="text-white">&times;</span>
        </button>
      </div>
      <div class="modal-body">
    <form action="AddNotice" enctype="multipart/form-data" method="post">
  <div class="form-group">
    <label for="NoticeTitle">Notice Title</label>
    <input type="text" name="name" id="NoticeTitle" class="form-control" placeholder="Enter Student Name Here" required>
  </div>
  
   <div class="form-group">
    <label for="NoticeFile">Related File</label>
    <input type="file" name="Image"  id="NoticeFile" class="form-control" placeholder="Enter Notice Related file Here" >
  </div>
  <div class="form-group">
  	<label for="about">Notice Message</label>
  	<textarea class="form-control" name="Message" id="about" rows="4" cols="4" placeholder="Enter Notice Message Here"></textarea>
  </div>
  
  <div class="form-group text-center">
  <button type="submit" class="btn btn-primary text-center"  id="btn">Submit</button>
  </div>
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="btn">Close</button>
      
      </div>
    </div>
  </div>
</div>
  