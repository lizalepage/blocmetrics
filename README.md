# README

Added two javascript tags to Lizapedia that tracks the amount of clicks on the wiki page and home page.

Have the follow piece of javascript on the wiki page

<script>blocmetrics.report('wiki page loaded');</script>

and on the home page

<script>blocmetrics.report('home page loaded');</script>

The following snippet is on the application.js file

var blocmetrics = {};
  blocmetrics.report = function(eventName){
    var event = {event: {name: eventName}};

    var request = new XMLHttpRequest();

    request.open("POST", "http://localhost:3000/api/events", true);

    request.setRequestHeader('Content-Type', 'application/json');

    request.send(JSON.stringify(event));

  };
