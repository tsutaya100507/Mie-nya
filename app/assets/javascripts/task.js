$(function(){
  $('.fa-plus-square').on('click', function(){
    $(this).parent().parent().parent().next('.form-controll').slideToggle(300);
  });
  $('.task-box__name').on('click', function(){
    $(this).parent().next().next().toggle('slow');
  });
  // $('child_task-form').on('submit', function(){
  //   console.log("aaa");
  // $('.child_task-field').slideToggle(400);
  // });
});
