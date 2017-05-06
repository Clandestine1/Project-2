console.log('form.js is working')

$('.delete').on('click', function() {
  let id = $(this).parent().attr('data-id')
  axios.delete("http://localhost:4000/notes/"+id)
  $(this).parent().remove();
})

$('.edit').on('click',function() {
  $(this).prev().removeAttr('readonly')
  $(this).prev().focus();
})
$('.input_item').on('change',function() {
  let id = parseInt($(this).parent().attr('data-id'))
  let val = $(this).val(); console.log(val)
  $(this).attr('readonly',true)
  axios.patch("http://localhost:4000/notes/"+id,{
    first: val,
    id: id
  }).catch(function (err) {
       return next(err);
     });
})
