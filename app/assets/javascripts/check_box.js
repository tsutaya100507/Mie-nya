$(function() {
  $("input[type=checkbox]").click(function(){
    console.log(this);
    $.post('/tasks/' + $(this).data('task_id') + '/child_tasks/' + $(this).data('id') + '/toggle');
  });
});
