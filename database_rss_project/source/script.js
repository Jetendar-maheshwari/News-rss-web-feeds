$(document).ready(function () {
  $("#submit").click(function () {
    $.LoadingOverlay("show");
    var action = "submit";
    $.ajax({
      url: "../rest_api/test_api.php/",
      method: "GET",
      data: { action: action },
      success: function (data) {
        $.LoadingOverlay("hide");
        alert("Feeds Added Successfully.");
      },
    });
  });

  fetch_data();

  function fetch_data() {
    $.ajax({
      url: "fetch.php",
      success: function (data) {
        $("tbody").html(data);
      },
    });
  }

  function fetch_all_feed() {
    $.ajax({
      url: "fetch_feed.php",
      success: function (data) {
        $("tbody").html(data);
      },
    });
  }

  $(document).ready(function () {
    $("#add_button").click(function () {
      $("#action").val("insert");
      $("#button_action").val("Insert");
      $(".modal-title").text("Add Data");
      $("#apicrudModal").modal("show");
    });
  });

  $("#api_crud_form").on("submit", function (event) {
    event.preventDefault();
    if ($("#channels_name").val() == "") {
      alert("Enter Channel Name");
    } else if ($("#channels_url").val() == "") {
      alert("Enter URL");
    } else if ($("#title").val() == "") {
      alert("Enter News Title");
    } else {
      var form_data = $(this).serialize();
      $.ajax({
        url: "action.php",
        method: "POST",
        data: form_data,
        success: function (data) {
          fetch_data();
          $("#api_crud_form")[0].reset();
          $("#apicrudModal").modal("hide");
          if (data == "insert") {
            alert("Data Inserted using PHP API");
          }
          if (data == "update") {
            alert("Data Updated using PHP API");
          }
        },
      });
    }
  });

  $(document).on("click", ".edit", function () {
    var id = $(this).attr("id");
    var action = "fetch_single";
    $.ajax({
      url: "action.php",
      method: "POST",
      data: { id: id, action: action },
      dataType: "json",
      success: function (data) {
        $("#hidden_id").val(id);
        $("#channels_name").val(data.channels_name);
        $("#channels_url").val(data.channels_url);
        $("#title").val(data.title);
        $("#action").val("update");
        $("#button_action").val("Update");
        $(".modal-title").text("Edit News Channels");
        $("#apicrudModal").modal("show");
      },
    });
  });

  $(document).on("change", ":checkbox", function () {
    var id = $(this).attr("id");
    var action = "channel_status";

    var status = "";
    if (this.checked) {
      console.log("checked now");
      // the checkbox is now checked
      status = "ENABLED";
    } else {
      console.log("unchecked now");
      // the checkbox is now no longer checked
      status = "DISABLED";
    }
    $.ajax({
      url: "../rest_api/test_api.php/",
      method: "GET",
      data: { id: id, status: status, action: action },
      success: function (data) {
        //alert("Channel Status Changed.");
      },
    });
  });

  $(document).on("click", ".delete", function () {
    var id = $(this).attr("id");
    var action = "delete";
    if (confirm("Are you sure you want to remove this data using PHP API?")) {
      $.ajax({
        url: "action.php",
        method: "POST",
        data: { id: id, action: action },
        success: function (data) {
          fetch_data();
          alert("Data Deleted using PHP API");
        },
      });
    }
  });

  $(document).on("click", ".view", function () {
    var id = $(this).attr("id");
    var action = "view";
    {
      $.ajax({
        url: "feed.php",
        method: "POST",
        data: { id: id, action: action },
        success: function (data) {
          //fetch_single_feed(id);
        },
      });
    }
  });
});
