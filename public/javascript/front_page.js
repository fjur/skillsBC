
$(document).ready(function(){

  var contactSource = $('#contact-template').html();
  var contactTemplate = Handlebars.compile(contactSource);
  var contactList = $('#contact-list');

  // function displayMentors(array_of_mentors){
  //   array_of_mentors.forEach(function(mentor){
  //     // console.log(mentor);
  //     // console.log(contactList);

  //     contactList.append(contactTemplate(mentor));

  //   });
  // }


  // $('#contact-list').on('click', 'a.contact-mentor', function() {
  //   event.preventDefault();
  //   var mentor = $(this).parent()[0];

  // });

  function displayMentors(mentor){
      contactList.append(contactTemplate(mentor));
  }

  function getMentorDetails(arrayOfMentors){
    arrayOfMentors.forEach(function(mentor){
      $.ajax({
        url: 'http://skillsbc.vansortium.com/mentors/' + mentor._id,
        method: 'GET',
        datatype: 'json',
        success: displayMentors
      });
    });
  }

  // $.ajax(function(){
  //   url: 'skillsbc.vansortium.com/mentors/570e036b7581ece3b767a417',
  //   method: 'GET',
  //   datatype: 'JSON',
  //   success: display_mentors
  // });

  $.ajax({
      url: 'http://skillsbc.vansortium.com/mentors',
      method: 'GET',
      datatype: 'json',
      success: getMentorDetails
    });

  // change maps on click
  $('#contact-list').on('click', 'a.contact-mentor', function() {
   event.preventDefault();
   var mentor = $(this).parent().parent().parent().parent()[0];
   var id = $(mentor).data('contact-id');
   $('#mentor_data').show();
   $('#mentor_details').html('');
 });


});
