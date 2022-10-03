function modal(){
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
window.addEventListener('turbolinks:load', modal)
window.addEventListener('turbolinks:unload', modal2)

document.addEventListener('turbolinks:load', function(){
  // 新規投稿・編集ページのフォームを取得
  const postForm = document.getElementById('answers_form');
  // プレビューを表示するためのスペースを取得
  const previewList = document.getElementById('previews');
  // 新規投稿・編集ページのフォームがないならここで終了。
  if (!postForm) return null;
  // input要素を取得
  const fileField = document.querySelector('input[type="file"][name="answer[image]"]');
  // input要素で値の変化が起きた際に呼び出される関数
  fileField.addEventListener('change', function(e){
    // 古いプレビューが存在する場合は削除
    const alreadyPreview = document.querySelector('.preview');
    if (alreadyPreview) {
      alreadyPreview.remove();
    };
    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);
    // 画像を表示するためのdiv要素を生成
    const previewWrapper = document.createElement('div');
    previewWrapper.setAttribute('class', 'preview');
    // 表示する画像を生成
    const previewImage = document.createElement('img');
    previewImage.setAttribute('class', 'preview-image');
    previewImage.setAttribute('src', blob);
    // 生成したHTMLの要素をブラウザに表示させる
    previewWrapper.appendChild(previewImage);
    previewList.appendChild(previewWrapper);
  });
});