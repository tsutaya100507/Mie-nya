$(document).on('turbolinks:load', function() {
  $('.fa-plus-square').on('click', function(){
    $(this).parent().parent().parent().next('.task-registration-field').slideToggle(300);
  });
  $('.task-box__name').on('click', function(){
    $(this).parent().next().next().toggle('slow');
  });
});
