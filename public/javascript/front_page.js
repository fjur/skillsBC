
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

  function searchedMentors(mentors){
    var searchedMentors = [];
    var searchTerm = $('#interest').val().toLowerCase();
    mentors.forEach(function(mentor){
      // console.log(mentor);
      // console.log($('#interest').val());
      // console.log(searchTerm);
      // console.log(mentor.specialties.includes(searchTerm));
      var lowerCaseSpecifity = [];
      for (var i = 0; i < mentor.specialties.length; i++) {
        // console.log(mentor.specialties);
        lowerCaseSpecifity.push(mentor.specialties[i].toLowerCase());
      }
      // console.log(lowerCaseSpecifity);
      if (lowerCaseSpecifity.includes(searchTerm)){
        // console.log(mentor.specialties);
        searchedMentors.push(mentor);
      }
    });

    contactList.empty();
    if (searchedMentors.length === 0){

    } else {
      getMentorDetails(searchedMentors);
        // contactList.append(contactTemplate(mentor));
    }
    // contactList.append(contactTemplate(mentor));
  }


  $('.interest-search').on('click', function(event){
    event.preventDefault();
    // console.log($('#interest').val());
    // console.log("click");
    $.ajax({
        url: 'http://skillsbc.vansortium.com/mentors',
        method: 'GET',
        datatype: 'json',
        success: searchedMentors
    });

  })

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

    function getMentorEmail(mentor){
      $('email-mentor').text(mentor.email);
      $('email-mentor').attr('href',mentor.email);
    };


  $('#contact-list').on('click', 'a.contact-mentor', function() {
   event.preventDefault();
   var mentor = $(this).parent().parent().parent().parent()[0];
   var id = $(mentor).data('contact-id');
   $.ajax({
       url: 'http://skillsbc.vansortium.com/mentors/' + id,
       method: 'GET',
       datatype: 'json',
       success: getMentorEmail
     });
   $('#mentor_data').show();
 });


});
