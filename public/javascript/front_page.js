$(document).ready(function(){

  var mentorSource = $('#contact-template').html();
  var mentorTemplate = Handlebars.compile(mentorSource);
  var contactList = $('#contact-list');
  var allMentors;
  var allMentorsSpecific = [];

  //called upon load to store the json api data
  $.ajax({
    url: 'http://skillsbc.vansortium.com/mentors',
    method: 'GET',
    datatype: 'json',
    success: getMentorDetails
  });

  //called after initial API to get more specific details on mentors
  function getMentorDetails(arrayOfMentors){
    allMentors = arrayOfMentors
    arrayOfMentors.forEach(function(mentor){
      $.ajax({
        url: 'http://skillsbc.vansortium.com/mentors/' + mentor._id,
        method: 'GET',
        datatype: 'json',
        success: function(mentor){
          allMentorsSpecific.push(mentor);
          displayMentor(mentor);
        }
      });
    })
  }

  //function to use handlbare template to display mentors
  function displayMentor(mentor){
      contactList.append(mentorTemplate(mentor));
  }

  $('.interest-search').on('click', function(event){
    event.preventDefault();
    var searchedMentors = [];
    var searchTerm = $('#interest').val().toLowerCase();
    var lowerCaseSpecifity = [];

    allMentorsSpecific.forEach(function(mentor){
      //conversion of values to lowercase
      for (var i = 0; i < mentor.specialties.length; i++) {
        lowerCaseSpecifity.push(mentor.specialties[i].toLowerCase());
      }
      //check if array of specifications includes case insensite interest
      if (lowerCaseSpecifity.includes(searchTerm)){
        searchedMentors.push(mentor);
      }
    });
    contactList.empty();
    if (searchedMentors.length === 0){
      $("#result_search").text("No mentors");
    } else {
      searchedMentors.forEach(function(mentor){
        displayMentor(mentor);
      });
    }
  });

});