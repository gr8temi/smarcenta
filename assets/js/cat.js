let payWithPaystack = proceed => {
    if (proceed === true) {
      let email = $("#email").val();
      let name = $("#name").val();
      let phone = $("#phone").val();
      let packageName = $("#packageName").text()
      let packageAmount = parseInt($("#packagePrice").text())*100
      
      if (
        phone === "" ||
        phone.match(/\+?234[789][0-2]\d{8}|0[87][0-2]\d{8}/) === null
      ) {
        $("#phone").addClass("invalid");
        $("#phoneInvalid").show()        
      }
    //   console.log(email.length);
      
      if (email.length <10 || email.length >40) {
      $("#email").addClass("invalid");
      $("#emailInvalid").show()
      
        }
        if (name.length <5|| name.length >40) {
      $("#name").addClass("invalid");
      $("#nameInvalid").show()
    }
    if (
      phone !== "" &&
      phone.match(/\+?234[789][0-2]\d{8}|0[87][0-2]\d{8}/) !== null &&
      email !== "" && (name !== "")
    ){
        $("#phone").removeClass("invalid");
        $("#email").removeClass("invalid");
        $("#name").removeClass("invalid");
        $("#userInfo").modal("hide");
        var handler = PaystackPop.setup({
        key: "pk_live_94249b86d23ef8c4ae4a2bbc63139a0df96514c9",
        email: email,
        amount: packageAmount,
        currency: "NGN",
        callback: function(response) {
          $.ajax({
            url: "/Job/payin_package/",
            // method:"POST",
            data: {
              email: email,
              packageAmount: packageAmount,
              packageName: packageName,
              phone: phone,
              reference: response.reference,
              name: name,
            },
            // success: function(data) {
            //   // alert("success");
            //   // $(".ko").html(data)
            //   if (data.error === false) {
                
            //     $("#modelId").modal("show");
            //     $(".modal-body").text(`${data.message}`)
            //   }
            // }
          });
        },
        onClose: function() {}
      });

      handler.openIframe();

    }
    } else {

      $("#userInfo").modal("show");
    }
  };