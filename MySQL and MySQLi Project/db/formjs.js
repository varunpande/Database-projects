function member_create(){
    let formData = new FormData(document.forms.memberCreate);
    var xhttp = new XMLHttpRequest();
    xhttp.open("POST", "create_member.php", false);
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            alert(this.responseText);
        }
    }
    xhttp.send(formData);
}

function book_create(){
    let formData = new FormData(document.forms.bookCreate);
    var xhttp = new XMLHttpRequest();
    xhttp.open("POST", "create_book.php", false);
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            alert(this.responseText);
        }
    }
    xhttp.send(formData);
}

function borrow_book(){
    let formData = new FormData(document.forms.borrowBook);
    var xhttp = new XMLHttpRequest();
    xhttp.open("POST", "borrow_book.php", false);
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            alert(this.responseText);
        }
    }
    xhttp.send(formData);
}

function return_book(){
    let formData = new FormData(document.forms.returnBook);
    var xhttp = new XMLHttpRequest();
    xhttp.open("POST", "return_book.php", false);
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            str = "\n Returned the book :" + formData.get("issue_ISBN");
            var receipt_id = formData.get("issue_ISBN") + formData.get("input_member") + "-" +Date.now();
            str += "\n receipt id: " + receipt_id;
            alert(this.responseText + str);
        }
    }
    xhttp.send(formData);
}

function renew_membership(){
    let formData = new FormData(document.forms.renewMembership);
    var xhttp = new XMLHttpRequest();
    xhttp.open("POST", "renew_membership.php", false);
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            alert(this.responseText);
        }
    }
    xhttp.send(formData);
}

function toggle_field(decision_maker,disable_field){
    var option_sel = document.getElementById(decision_maker).value;
    if (option_sel == "False"){
        document.getElementById(disable_field).value = "";
        document.getElementById(disable_field).disabled = true;
    }
    else{
        document.getElementById(disable_field).disabled = false;
    }
}

function toggle_field_mem_oth(){
    var option_sel = document.getElementById('input_out_mem').value;
    if (option_sel == "False"){
        document.getElementById('input_Email_Id_oth').value = "";
        document.getElementById('input_Email_Id_oth').disabled = true;
        document.getElementById('input_Campus_flat_no').disabled = false;
        document.getElementById('input_Campus_bldg_name').disabled = false;
        document.getElementById('input_is_proff').disabled = false;
        document.getElementById('input_EID').disabled = false;
        document.getElementById('input_is_student').disabled = false;
        document.getElementById('input_SID').disabled = false;
    }
    else{
        document.getElementById('input_Email_Id_oth').disabled = false;
        document.getElementById('input_Campus_flat_no').value = "";
        document.getElementById('input_Campus_flat_no').disabled = true;
        document.getElementById('input_Campus_bldg_name').value = "";
        document.getElementById('input_Campus_bldg_name').disabled = true;
        document.getElementById('input_is_proff').value = "";
        document.getElementById('input_is_proff').disabled = true;
        document.getElementById('input_EID').value = "";
        document.getElementById('input_EID').disabled = true;
        document.getElementById('input_is_student').value = "";
        document.getElementById('input_is_student').disabled = true;
        document.getElementById('input_SID').value = "";
        document.getElementById('input_SID').disabled = true;
    }
}