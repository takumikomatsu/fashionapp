function modal(){
  console.log("test")
  setTimeout(function(){
    $('.start p').fadeIn(1600);
  },500);
  setTimeout(function(){
    $('.start').fadeOut(500);
  },2500)
  setTimeout(function(){
    $('#service-title').slideDown(2000);
  },2500)

  setTimeout(function(){
    $('#openModal').slideDown(2000);
  },2500)

  setTimeout(function(){
    $('#openModal2').slideDown(2000);
  },2500)

  $('#openModal').on('click', function(){
    $('#request-modal').slideToggle();
  });
  $('#openModal2').on('click', function(){
    $("#answerModal").slideToggle();
  })
  $('#closeModal').on('click', function(){
    $('#request-modal').fadeOut();
  })
  $('#closeModal2').on('click', function(){
    $('#answerModal').fadeOut();
  })
  $('#request-post').on('mouseover', function(){
    $('#request-post').css({
      color: "#4dc0b2"
    })
  })
  $('#request-post').on('mouseout', function(){
    $('#request-post').css({
      color: ""
    })
  })

  $('#request-post').on('click', function(){
    $('#request-post').css({
      color: ""
    })
  })

  $('#user-nickname').on('mouseover', function(){
    $('#user-nickname').css({
      color: "#4dc0b2"
    })
  })
  $('#user-nickname').on('mouseout', function(){
    $('#user-nickname').css({
      color: ""
    })
  })

  $('#user-nickname').on('click', function(){
    $('#user-nickname').css({
      color: ""
    })
  })

  $('#logout').on('mouseover', function(){
    $('#logout').css({
      color: "#4dc0b2"
    })
  })
  $('#logout').on('mouseout', function(){
    $('#logout').css({
      color: ""
    })
  })

  $('#logout').on('click', function(){
    $('#logout').css({
      color: ""
    })
  })

  $('#login').on('mouseover', function(){
    $('#login').css({
      color: "#4dc0b2"
    })
  })
  $('#login').on('mouseout', function(){
    $('#login').css({
      color: ""
    })
  })

  $('#login').on('click', function(){
    $('#login').css({
      color: ""
    })
  })


  $('#signup').on('mouseover', function(){
    $('#signup').css({
      color: "#4dc0b2"
    })
  })
  $('#signup').on('mouseout', function(){
    $('#signup').css({
      color: ""
    })
  })

  $('#signup').on('click', function(){
    $('#signup').css({
      color: ""
    })
  })

  
}
function modal2(){
  setTimeout(function(){
    $('.start p').fadeIn(1600);
  },500);
  setTimeout(function(){
    $('.start').fadeOut(500);
  },2500)
}
$(window).on('turbolinks:load', modal)
$(window).on('turbolinks:unload', modal2)