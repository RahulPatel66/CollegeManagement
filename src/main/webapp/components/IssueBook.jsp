
 
  	<div class="modal fade" id="AddBook" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-primary text-white">
        <h5 class="modal-title " id="exampleModalLabel">Issue Book</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" class="text-white">&times;</span>
        </button>
      </div>
      <div class="modal-body">
    <form action="IssueBook" >
  <div class="form-group">
    <label for="NoticeTitle">Book Number</label>
    <input type="text" name="booknumber" id="NoticeTitle" class="form-control" placeholder="Enter Book Number Here" required>
  </div>
  
  <div class="form-group">
    <label for="BookName">Book Name</label>
    <input type="text" name="name" id="BookName" class="form-control" placeholder="Enter Book Name Here" required>
  </div>
  <div class="form-group">
    <label for="BookDate">Book Issued Date</label>
    <input type="date" name="date" id="BookDate" class="form-control" placeholder="Enter Date Here" required>
  </div>
  <div class="form-group">
    <label for="BookWriter">Book Writer Name</label>
    <input type="text" name="writer" id="BookWriter" class="form-control" placeholder="Enter Book Writer Name Here" required>
  </div>
  <div class="form-group">
    <label for="Enumber">Student Enrollment Number</label>
    <input type="text" name="enumber" id="Enumber" class="form-control" placeholder="Enter Student Enrollment Number Here " required>
  </div>
 
  <div class="form-group">
    <label for="StudentNumber">Student Mobile Number</label>
    <input type="number" name="number" id="StudentNumber" class="form-control" placeholder="Enter Student Mobile Number Here" required>
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
  