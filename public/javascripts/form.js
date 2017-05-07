console.log('form.js is working')

$('.delete').on('click', function() {
  let id = $(this).parent().attr('data-id')
  axios.delete("https://bossshauna.herokuapp.com/notes/"+id)
  $(this).parent().remove();
  location.reload();
})

$('.edit').on('click',function() {
  $(this).prev().removeAttr('readonly')
  $(this).prev().focus();
})
$('.input_item').on('change',function() {
  let id = parseInt($(this).parent().attr('data-id'))
  let val = $(this).val(); console.log(val)
  $(this).attr('readonly',true)
  axios.patch("https://bossshauna.herokuapp.com/notes/"+id,{
    first: val,
    id: id
  }).catch(function (err) {
       return next(err);
     });
  location.reload();
})
