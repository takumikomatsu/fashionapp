function modal(){
  const request_btn = document.getElementById("openModal");
  const close_btn =document.getElementById("closeModal");
  
  request_btn.addEventListener('click', function(){
    const request_modal = document.getElementById("request-modal")
    request_modal.style.display = 'block';
  })

  close_btn.addEventListener('click', function(){
    const request_modal = document.getElementById("request-modal")
    request_modal.style.display = 'none';
  })
}

window.addEventListener('load', modal)