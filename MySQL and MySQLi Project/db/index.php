<?php 
require("./database.php");
?>
<!DOCTYPE html>
<html>
<head>
  <title>Library System</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="./formjs.js"></script>
</head>
<body>

<div class="container">
  <h2>Project 2 - Part 2 - Queries</h2>
  <p>Please select from the drop downs below for the result of the queries:</p>
  <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">1. Write queries to retrieve and print all the data you entered. Try to print the data so that it is easy to understand (for example, print appropriate headings, such as: Authors, Book Title, Subject area etc.</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse">
        <div class="panel-body">
            <p><strong>Available_Books</strong> Table: <a href="./available_books.php">Display Table</a>
            </p>
            <p>
                <q>Query: SELECT * FROM Available_Books;</q>
            </p>
            <hr style="height:2px;border-width:0;color:gray;background-color:gray">
            <p><strong>Books_To_Acquire</strong> Table: <a href="./books_to_acquire.php">Display Table</a>
            </p>
            <p>
                <q>Query: SELECT * FROM Books_To_Acquire;</q>
            </p>
            <hr style="height:2px;border-width:0;color:gray;background-color:gray">
            <p><strong>borrow</strong> Table: <a href="./borrow.php">Display Table</a>
            </p>
            <p>
                <q>Query: SELECT * FROM borrow;</q>
            </p>
            <hr style="height:2px;border-width:0;color:gray;background-color:gray">
            <p><strong>Institute_members</strong> Table: <a href="./Institute_members.php">Display Table</a>
            </p>
            <p>
                <q>SELECT * FROM Institute_members;</q>
            </p>
            <hr style="height:2px;border-width:0;color:gray;background-color:gray">
            <p><strong>members</strong> Table: <a href="./members.php">Display Table</a>
            </p>
            <p>
                <q>SELECT * FROM members;</q>
            </p>
            <hr style="height:2px;border-width:0;color:gray;background-color:gray">
            <p><strong>notice</strong> Table: <a href="./notice.php">Display Table</a>
            </p>
            <p>
                <q>SELECT * FROM notice;</q>
            </p>
            <hr style="height:2px;border-width:0;color:gray;background-color:gray">
            <p><strong>other_members</strong> Table: <a href="./other_members.php">Display Table</a>
            </p>
            <p>
                <q>SELECT * FROM other_members;</q>
            </p>
            <hr style="height:2px;border-width:0;color:gray;background-color:gray">
            <p><strong>staff</strong> Table: <a href="./staff.php">Display Table</a>
            </p>
            <p>
                <q>SELECT * FROM staff;</q>
            </p>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">3. Write a query that will prepare a report for weekly Borrowing activity by Subject area, by Author, number of copies and number of days loaned out.</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">
            <p>Weekly Borrowing activity by Subject area: <a href="./weekly_borrow_report_subject_area.php">Generate Report</a></p>
            <p>Weekly Borrowing activity by Author: <a href="./weekly_borrow_report_author.php">Generate Report</a></p>
            <p>Weekly Borrowing activity by number of copies: <a href="./weekly_borrow_report_no_of_copies.php">Generate Report</a></p>
            <p>Weekly Borrowing activity by Days loaned out: <a href="./weekly_borrow_report_days_l_o.php">Generate Report</a></p>
            </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">4.1. The first transaction is to add information about a new MEMBER.</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body">
            <form onsubmit="member_create()" name="memberCreate">
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="input_SSN">Member SSN</label>
      <input type="text" class="form-control" id="input_SSN" placeholder="SSN" name="input_member_SSN" required>
    </div>
    <div class="form-group col-md-4">
      <label for="name">Name of member</label>
      <input type="text" class="form-control" id="name" placeholder="Name" name="input_member_name" required>
    </div>
    <div class="form-group col-md-4">
      <label for="input_phone">Phone</label>
      <input type="text" class="form-control" id="input_phone" placeholder="123456789" name="input_phone" required>
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-4">
        <label for="input_flat_no">Flat number</label>
        <input type="text" class="form-control" id="input_flat_no" placeholder="123" name = "flat_no" required>
    </div>
    <div class="form-group col-md-4">
        <label for="input_street_no">Street number</label>
        <input type="text" class="form-control" id="input_street_no" placeholder="123" name="input_street_no" required>
    </div>
    <div class="form-group col-md-4">
      <label for="input_Bldg_name">Building Name</label>
      <input type="text" class="form-control" id="input_Bldg_name" name = "input_Bldg_name" placeholder="Building name" required>
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-4">
        <label for="input_Pincode">Pincode</label>
        <input type="text" class="form-control" id="input_Pincode" name = "input_Pincode" placeholder="123123" required>
    </div>
    <div class="form-group col-md-4">
      <label for="input_Card_number">Card number</label>
      <input type="text" class="form-control" id="input_Card_number" name="input_Card_number" placeholder="123" required>
    </div>
    <div class="form-group col-md-4">
      <label for="input_photo">Photo url</label>
      <input type="text" class="form-control" id="input_photo" name="input_photo" placeholder="https:// url" required>
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-4">
        <label for="input_out_mem">Is Outside Member:</label>
        <select class="form-control" id="input_out_mem" name="input_out_mem" onchange="toggle_field_mem_oth()" required>
            <option value = "">Please select</option>
        <option value = "True">True</option>
        <option value = "False">False</option>
        </select>
    </div>
    <div class="form-group col-md-8">
      <label for="input_Email_Id_oth">Email ID:</label>
      <input type="email" class="form-control" id="input_Email_Id_oth" name="input_Email_Id_oth" placeholder="xyz@g.com" required>
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-4">
        <label for="input_Campus_flat_no">Campus flat number:</label>
        <input type="text" class="form-control" id="input_Campus_flat_no" name = "input_Campus_flat_no" placeholder="123" required>
    </div>
    <div class="form-group col-md-8">
      <label for="input_Campus_bldg_name">Campus building name:</label>
      <input type="text" class="form-control" id="input_Campus_bldg_name" name="input_Campus_bldg_name" placeholder="abc de" required>
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-4">
        <label for="input_is_proff">Is Proffessor:</label>
        <select class="form-control" id="input_is_proff" name="input_is_proff" onchange="toggle_field('input_is_proff','input_EID')" required>
        <option value = "True">True</option>
        <option value = "False">False</option>
        </select>
    </div>
    <div class="form-group col-md-8">
      <label for="input_EID">Employee ID:</label>
      <input type="text" class="form-control" id="input_EID" name="input_EID" placeholder="123456" required>
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-4">
        <label for="input_is_student">Is Student:</label>
        <select class="form-control" id="input_is_student" name="input_is_student" onchange="toggle_field('input_is_student','input_SID')" required>
        <option value = "True">True</option>
        <option value = "False">False</option>
        </select>
    </div>
    <div class="form-group col-md-8">
      <label for="input_SID">Student ID:</label>
      <input type="text" class="form-control" id="input_SID" name="input_SID" placeholder="123456" required>
    </div>
  </div>
  <div class="form-group col-md-12">
  <button type="submit" class="btn btn-primary">Create Member</button>
  </div>
</form>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">4.2.The second transaction is to add all the information about a new BOOK.</a>
        </h4>
      </div>
      <div id="collapse4" class="panel-collapse collapse">
        <div class="panel-body">
             <form onsubmit="book_create()" name="bookCreate">
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="input_ISBN">ISBN</label>
      <input type="text" class="form-control" id="input_ISBN" placeholder="1234567891234" name="input_ISBN" required>
    </div>
    <div class="form-group col-md-4">
      <label for="input_subject_area">Subject Area</label>
      <input type="text" class="form-control" id="input_subject_area" placeholder="xyz....abc.." name="input_subject_area" required>
    </div>
    <div class="form-group col-md-4">
      <label for="input_title">Title</label>
      <input type="text" class="form-control" id="input_title" placeholder="xyz" name="input_title" required>
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
        <label for="input_author">Author</label>
        <input type="text" class="form-control" id="input_author" placeholder="ABCD" name = "input_author" required>
    </div>
    <div class="form-group col-md-6">
        <label for="input_count_of_books">Count of books</label>
        <input type="text" class="form-control" id="input_count_of_books" placeholder="10" name="input_count_of_books" required>
    </div>
    <div class="form-group col-md-12">
      <label for="input_description">Description</label>
      <textarea class="form-control" id="input_description" name="input_description" rows="3" required></textarea>
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-4">
        <label for="input_edition">Edition</label>
        <input type="text" class="form-control" id="input_edition" name = "input_edition" placeholder="Title 4" required>
    </div>
    <div class="form-group col-md-4">
      <label for="input_Binding_type">Binding type</label>
      <input type="text" class="form-control" id="input_Binding_type" name="input_Binding_type" placeholder="hard or soft" required>
    </div>
    <div class="form-group col-md-4">
    <label for="input_can_lend">Can Lend</label>
    <select class="form-control" id="input_can_lend" name="input_can_lend" required>
      <option value = "True">True</option>
      <option value = "False">False</option>
    </select>
  </div>
  </div>
  <div class="form-row">
      <div class="form-group col-md-12">
      <label for="input_reason">Reason</label>
      <input type="text" class="form-control" id="input_reason" name="input_reason" placeholder="Reason to not issue book">
    </div>
  </div>
  <div class="form-group col-md-12">
  <button type="submit" class="btn btn-primary">Create Book</button>
  </div>
</form>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">4.3.The third transaction is to add all the information about a new BORROW (LOAN) (this must find the book from the catalog).</a>
        </h4>
      </div>
      <div id="collapse5" class="panel-collapse collapse">
        <div class="panel-body">
            <form onsubmit="borrow_book()" name="borrowBook">
  <div class="form-row">
    <div class="form-group col-md-4">
        <label for="issue_ISBN">ISBN</label>
        <select class="form-control" id="issue_ISBN" name="issue_ISBN">
            <?php
            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }
        
            $sql = "SELECT ISBN FROM Available_Books";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo '<option value="'.$row['ISBN'].'">'.$row['ISBN'].'</option>';
                    }
            }
            else {
                echo "<option>No books to list</option>";
            }
            ?>
        </select>
    </div>
    <div class="form-group col-md-4">
      <label for="input_member">Member</label>
      <select class="form-control" id="input_member" name="input_member">
            <?php
            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }
        
            $sql = "SELECT SSN FROM members";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo '<option value="'.$row['SSN'].'">'.$row['SSN'].'</option>';
                    }
            }
            else {
                echo "<option>No members to list</option>";
            }
            ?>
        </select>
    </div>
    <div class="form-group col-md-4">
      <label for="input_Issuer">Issuer</label>
      <select class="form-control" id="input_Issuer" name="input_Issuer">
            <?php
            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }
        
            $sql = "SELECT SSN FROM staff";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo '<option value="'.$row['SSN'].'">'.$row['SSN'].'</option>';
                    }
            }
            else {
                echo "<option>No staff members to list</option>";
            }
            ?>
        </select>
    </div>
  </div>
  <div class="form-group col-md-12">
  <button type="submit" class="btn btn-primary">Issue Book</button>
  </div>
</form>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">4.4. The fourth transaction is to handle the return of a book. This transaction should print a return receipt with the details of the book and days when it was borrowed and returned etc.</a>
        </h4>
      </div>
      <div id="collapse6" class="panel-collapse collapse">
        <div class="panel-body">
            <form onsubmit="return_book()" name="returnBook">
  <div class="form-row">
    <div class="form-group col-md-4">
        <label for="issue_ISBN">ISBN</label>
        <select class="form-control" id="issue_ISBN" name="issue_ISBN">
            <?php
            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }
        
            $sql = "SELECT ISBN FROM borrow";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo '<option value="'.$row['ISBN'].'">'.$row['ISBN'].'</option>';
                    }
            }
            else {
                echo "<option>No books to list</option>";
            }
            ?>
        </select>
    </div>
    <div class="form-group col-md-4">
      <label for="input_member">Member</label>
      <select class="form-control" id="input_member" name="input_member">
            <?php
            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }
        
            $sql = "SELECT Member_SSN FROM borrow WHERE Returned_On IS NULL";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo '<option value="'.$row['Member_SSN'].'">'.$row['Member_SSN'].'</option>';
                    }
            }
            else {
                echo "<option>No members to list</option>";
            }
            ?>
        </select>
    </div>
    <div class="form-group col-md-4">
      <label for="input_Issuer">Issuer</label>
      <select class="form-control" id="input_Issuer" name="input_Issuer">
            <?php
            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }
        
            $sql = "SELECT Staff_SSN FROM borrow";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo '<option value="'.$row['Staff_SSN'].'">'.$row['Staff_SSN'].'</option>';
                    }
            }
            else {
                echo "<option>No staff members to list</option>";
            }
            ?>
        </select>
    </div>
  </div>
  <div class="form-group col-md-12">
  <button type="submit" class="btn btn-primary">Return Book</button>
  </div>
</form>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse7">4.5.The fifth transaction is to renew the membership.</a>
        </h4>
      </div>
      <div id="collapse7" class="panel-collapse collapse">
        <div class="panel-body">
          <form onsubmit="renew_membership()" name="renewMembership">
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="input_member">Member</label>
      <select class="form-control" id="input_member" name="input_member">
            <?php
            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }
        
            $sql = "SELECT SSN FROM members WHERE DATEDIFF(Expiry_date,CURRENT_DATE()) <= 0";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo '<option value="'.$row['SSN'].'">'.$row['SSN'].'</option>';
                    }
            }
            else {
                echo "<option>No membership to renew</option>";
            }
            ?>
        </select>
    </div>
  </div>
  <div class="form-group col-md-12">
  <button type="submit" class="btn btn-primary">Renew membership</button>
  </div>
</form>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse8">5.1. To notify a member about the outstanding overdue book.</a>
        </h4>
      </div>
      <div id="collapse8" class="panel-collapse collapse">
        <div class="panel-body">
            <h2>Notice Table:</h2>
  <p>The Trigger <strong>overdue_book</strong> executes and generates records in the notice table.</p>
  <div class="table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>SSN of Staff(who sent the message)</th>
        <th>SSN of Member(to whom notice was sent)</th>
        <th>Date of issuing the notice</th>
        <th>Message body</th>
      </tr>
    </thead>
    <tbody>
        <?php
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        
        $sql = "SELECT * FROM notice WHERE Issue_Msg LIKE \"%is overdue%\"";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo'<tr>
                        <td>'.$row['Staff_SSN'].'</td>
                        <td>'.$row['Member_SSN'].'</td>
                        <td>'.$row['Date_Of_Issue'].'</td>
                        <td>'.$row['Issue_Msg'].'</td>
                    </tr>';
                    }
        }
        else {
            echo "<tr colspan = '4'><td>No Notices To Display</td><tr>";
        }
        ?>
    </tbody>
  </table>
</div>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse9">5.2. To notify a member about his membership renewal.</a>
        </h4>
      </div>
      <div id="collapse9" class="panel-collapse collapse">
        <div class="panel-body">
            <h2>Notice Table:</h2>
  <p>The Trigger <strong>membership_expiry</strong> executes and generates records in the notice table.</p>
  <div class="table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>SSN of Staff(who sent the message)</th>
        <th>SSN of Member(to whom notice was sent)</th>
        <th>Date of issuing the notice</th>
        <th>Message body</th>
      </tr>
    </thead>
    <tbody>
        <?php
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        
        $sql = "SELECT * FROM notice WHERE Issue_Msg LIKE \"membership expired\"";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo'<tr>
                        <td>'.$row['Staff_SSN'].'</td>
                        <td>'.$row['Member_SSN'].'</td>
                        <td>'.$row['Date_Of_Issue'].'</td>
                        <td>'.$row['Issue_Msg'].'</td>
                    </tr>';
                    }
        }
        else {
            echo "<tr colspan = '4'><td>No Notices To Display</td><tr>";
        }
        ?>
    </tbody>
  </table>
</div>
        </div>
      </div>
    </div>
  </div> 
</div>
    
</body>
</html>
<?php $conn->close(); ?>