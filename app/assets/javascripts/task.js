$(function(){
  $('.fa-plus-square').on('click', function(){
    $('.form-controll').slideToggle(500);
  });
  $('.task-box__name').on('click', function(){
    $('.child_task-field').slideToggle(800);
  });
  // $('child_task-form').on('submit', function(){
  //   console.log("aaa");
  // $('.child_task-field').slideToggle(400);
  // });
});
