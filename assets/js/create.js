$("#customizeForm").submit(e => {
  e.preventDefault();

  url = $("#customizeForm").attr("action");
  $.ajax({
    url: url,
    method: "POST",
    enctype: "multipart/form-data",
    data: $("#customizeForm").serialize(),
    success: function(data) {
      if (data.error == false) {
        alert(data.message);
      }
    }
  });
});

$(".joo")
  .unbind()
  .change(function(e) {
    e.target.classList.toggle("active");
    $(".ded-form").hide();
    $(".pay").hide();
    var url = "/Job/catechange/";
    var category = $(this).val();

    $.ajax({
      url: url,
      data: {
        category: category
      },
      success: function(data) {
        $(".new-form").html(data);
        $("#subc").show();
        $("#load_cat").load(location.href + " #load_cat");
        $("#total_sum").load(location.href + " #total_sum");
        $("#load_sub").hide();
        $(".totals").hide();
        $("#load_sub2").hide();
        $("#coupondiv").hide();
      }
    });
  });

function payWithPaystack(proceed) {
  let email = $("#email_hid").val();
  let total = $("#total_sum").text() * 100;
  let category = $(".cate_sum").text();
  let sub_cat_sum = $("#sub_span").text();
  let dead_sum = $(".dead_sum").text();
  let phone = $("#phone").val();
  let title = $(".titles").val();
  let name = $("#fullname").val();
  let id = $("#user_id").val();
  let phoneS = `${phone}`;
  var description = CKEDITOR.instances.editor1.getData();
  if (id == "None") {
    $("#notification").modal("show");
  }
  if (proceed == true) {
    if (
      phoneS === "" ||
      phoneS.match(/\+?234[789][0-2]\d{8}|0[87][0-2]\d{8}/) === null
    ) {
      $("#phone").addClass("invalid");
      $("#notification").modal("hide");
    }
    if (email === "") {
      $(".email_hid").addClass("invalid");
      $("#notification").modal("hide");
    }
    if (title === "") {
      $(".titles").addClass("invalid");
      $("#notification").modal("hide");
    }
    if (name === "") {
      $("#fullname").addClass("invalid");
      $("#notification").modal("hide");
    }

    if (
      phoneS !== "" &&
      phoneS.match(/\+?234[789][0-2]\d{8}|0[87][0-2]\d{8}/) !== null &&
      email !== "" &&
      (title !== "") & (name !== "")
    ) {
      $("#phone").removeClass("invalid");
      $(".email_hid").removeClass("invalid");
      $(".titles").removeClass("invalid");
      $("#fullname").removeClass("invalid");
      var handler = PaystackPop.setup({
        key: "pk_live_94249b86d23ef8c4ae4a2bbc63139a0df96514c9",
        email: email,
        amount: total,
        currency: "NGN",
        callback: function(response) {
          $.ajax({
            url: "/Job/payin/",
            data: {
              email: email,
              total: total,
              category: category,
              sub_cat_sum: sub_cat_sum,
              dead_sum: dead_sum,
              phone: phone,
              title: title,
              description: description,
              reference: response.reference,
              name: name,
              id: id
            },
            success: function(data) {
              data = parseInt(data);

              if (data == 0) {
                location.assign("/Track");
              } else if (data > 0) {
                location.assign("/dashboard");
              }
            }
          });
        },
        onClose: function() {}
      });

      handler.openIframe();
    }
  }
}

$(".quote").click(e => {
  let email = $("#email_hid").val();
  let total = $("#total_sum").text() * 100;
  let category = $(".cate_sum").text();
  let sub_cat_sum = $("#sub_span").text();
  let phone = $("#phone").val();
  let title = $(".titles").val();
  let name = $("#fullname").val();
  let id = $("#user_id").val();
  let phoneS = `${phone}`;

  var description = CKEDITOR.instances.editor1.getData();
  if (
    phoneS === "" ||
    phoneS.match(/\+?234[789][0-2]\d{8}|0[87][0-2]\d{8}/) === null
  ) {
    $("#phone").addClass("invalid");
  }
  if (email === "") {
    $(".email_hid").addClass("invalid");
  }
  if (title === "") {
    $(".titles").addClass("invalid");
  }
  if (name === "") {
    $("#fullname").addClass("invalid");
  }

  if (
    phoneS !== "" &&
    phoneS.match(/\+?234[789][0-2]\d{8}|0[87][0-2]\d{8}/) !== null &&
    email !== "" &&
    (title !== "") & (name !== "")
  ) {
    $(".frame").show();
    let shown = 1;
    $("#phone").removeClass("invalid");
    $(".email_hid").removeClass("invalid");
    $(".titles").removeClass("invalid");
    $("#fullname").removeClass("invalid");
    $.ajax({
      url: "/Job/payin/",
      data: {
        email: email,
        total: total,
        category: category,
        sub_cat_sum: sub_cat_sum,
        phone: phoneS,
        title: title,
        description: description,
        reference: "quote",
        name: name,
        id: id
      },
      check: setTimeout(function() {
        if (shown === 1) {
          $(".frame").hide();
          shown = 0;
          alert(
            "Sorry we can't process your bokking right now try again in a bit thanks"
          );
        } else {
          return;
        }
      }, 10000),
      success: data => {
        $(".frame").hide();
        shown = 0;
        alert("successfully booked");
      }
    });
  }
});

$(".couponBtn").click(e => {
  let code = $("#couponinp").val();

  $.ajax({
    url: "/Job/coupons",
    method: "GET",
    data: {
      code: code
    },
    success: e => {
      if (e.error == true) {
        $("#couponinp").addClass("invalid");
        $(".coupError")
          .show()
          .text(e.status);
      } else {
        $(".coupError")
          .show()
          .text(e.message);
        $(".discount_value").show();
        $(".diSpan").text(e.discount);
        $("#total_sum").load(location.href + " #total_sum");
      }
    }
  });
});
