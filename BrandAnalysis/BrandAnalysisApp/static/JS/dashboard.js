/* globals Chart:false, feather:false */


google.charts.load("current", {packages:["corechart"]});

(function () {
      'use strict'
      feather.replace()
      // Graphs
//---------------------------------- pie Start --------------------------------------
      var colors = []
      var j;
      for(j=0;j<=7;j++){
        colors.push(getRandomColor())
      }

      var ctx1 = document.getElementById('myChart1').getContext('2d');
      // eslint-disable-next-line no-unused-vars
      var piedata = JSON.parse(document.getElementById('piedata').textContent);
      var pielabels = JSON.parse(document.getElementById('pielabels').textContent);
      var myChart1 = new Chart(ctx1, {
            type: 'pie',
            data: {
                datasets: [{
                data: piedata,
                backgroundColor: colors
            }],
                labels: pielabels
            },
            options: {
                legend: {
                    display: true,
                    position: 'right'
                },
                title: {
                    display: true,
                    text: 'Text Annotation( in % )',
                    fontSize:15
                },
                layout: {
                    padding: {
                        left: 0,
                        right: 0,
                        top: -10,
                        bottom: -10
                    }
                },
                responsive: true
            },
      })
//---------------------------------- pie end --------------------------------------

//---------------------------------- pie Start --------------------------------------
      var colors = []
      var j;
      for(j=0;j<=7;j++){
        colors.push(getRandomColor())
      }

      var ctx2 = document.getElementById('myChart2').getContext('2d');
      // eslint-disable-next-line no-unused-vars
      var piedata = JSON.parse(document.getElementById('piedata').textContent);
      var pielabels = JSON.parse(document.getElementById('pielabels').textContent);
      var myChart1 = new Chart(ctx2, {
            type: 'pie',
            data: {
                datasets: [{
                data: piedata,
                backgroundColor: colors
            }],
                labels: pielabels
            },
            options: {
                legend: {
                    display: true,
                    position: 'right'
                },
                title: {
                    display: true,
                    text: 'Text Annotation( in % )',
                    fontSize:15
                },
                layout: {
                    padding: {
                        left: 0,
                        right: 0,
                        top: -10,
                        bottom: -10
                    }
                },
                responsive: true
            },
      })
//---------------------------------- pie end --------------------------------------

//---------------------------------- pie Start --------------------------------------
      var colors = []
      var j;
      for(j=0;j<=7;j++){
        colors.push(getRandomColor())
      }

      var ctx3 = document.getElementById('myChart3').getContext('2d');
      // eslint-disable-next-line no-unused-vars
      var piedata = JSON.parse(document.getElementById('piedata').textContent);
      var pielabels = JSON.parse(document.getElementById('pielabels').textContent);
      var myChart1 = new Chart(ctx3, {
            type: 'pie',
            data: {
                datasets: [{
                data: piedata,
                backgroundColor: colors
            }],
                labels: pielabels
            },
            options: {
                legend: {
                    display: true,
                    position: 'right'
                },
                title: {
                    display: true,
                    text: 'Text Annotation( in % )',
                    fontSize:15
                },
                layout: {
                    padding: {
                        left: 0,
                        right: 0,
                        top: -10,
                        bottom: -10
                    }
                },
                responsive: true
            },
      })
//---------------------------------- pie end --------------------------------------

//---------------------------------- pie Start --------------------------------------
      var colors = []
      var j;
      for(j=0;j<=7;j++){
        colors.push(getRandomColor())
      }

      var ctx4 = document.getElementById('myChart4').getContext('2d');
      // eslint-disable-next-line no-unused-vars
      var piedata = JSON.parse(document.getElementById('piedata').textContent);
      var pielabels = JSON.parse(document.getElementById('pielabels').textContent);
      var myChart1 = new Chart(ctx4, {
            type: 'pie',
            data: {
                datasets: [{
                data: piedata,
                backgroundColor: colors
            }],
                labels: pielabels
            },
            options: {
                legend: {
                    display: true,
                    position: 'right'
                },
                title: {
                    display: true,
                    text: 'Text Annotation( in % )',
                    fontSize:15
                },
                layout: {
                    padding: {
                        left: 0,
                        right: 0,
                        top: -10,
                        bottom: -10
                    }
                },
                responsive: true
            },
      })
//---------------------------------- pie end --------------------------------------


//---------------------------------- pie Start --------------------------------------
      var colors = []
      var j;
      for(j=0;j<=7;j++){
        colors.push(getRandomColor())
      }

      var ctx = document.getElementById('myChart').getContext('2d');
      // eslint-disable-next-line no-unused-vars
      var piedata = JSON.parse(document.getElementById('piedata').textContent);
      var pielabels = JSON.parse(document.getElementById('pielabels').textContent);
      var myChart = new Chart(ctx, {
            type: 'pie',
            data: {
                datasets: [{
                data: piedata,
                backgroundColor: colors
            }],
                labels: pielabels
            },
            options: {
                title: {
                    display: true,
                    text: 'Text Annotation( in % )',
                    fontSize:35
                },
                responsive: true
            },
      })
//---------------------------------- pie end --------------------------------------

//---------------------------------- group bar end --------------------------------------
      var ctx = document.getElementById("groupbarchart").getContext("2d");
      var groupbardata = JSON.parse(document.getElementById('groupbardata').textContent);
      var groupbarlabel = JSON.parse(document.getElementById('groupbarlabel').textContent);
      var grouplikelyhood = JSON.parse(document.getElementById('grouplikelyhood').textContent);
      var i;
      var dataYaxis = []
      for (i = 0; i < grouplikelyhood.length; i++) {
           dataYaxis.push({
                label: grouplikelyhood[i],
                backgroundColor: getRandomColor(),
                data: groupbardata[i]
            });
      }

      var data = {
            labels: groupbarlabel,
            datasets: dataYaxis
       };

       var myBarChart = new Chart(ctx, {
            type: 'bar',
            data: data,
            options: {
                barValueSpacing: 15,
                scales: {
                    yAxes: [{
                        ticks: {
                            min: 0,
                        }
                    }]
                },
                title: {
                    display: true,
                    text: 'Face Annotation( in % )',
                    fontSize:35
                }
            }
       });
//---------------------------------- group bar end --------------------------------------
//---------------------------------- group bar end --------------------------------------
      var ctx1 = document.getElementById("groupbarchart1").getContext("2d");
      var groupbardata = JSON.parse(document.getElementById('groupbardata').textContent);
      var groupbarlabel = JSON.parse(document.getElementById('groupbarlabel').textContent);
      var grouplikelyhood = JSON.parse(document.getElementById('grouplikelyhood').textContent);
      var i;
      var dataYaxis = []
      for (i = 0; i < grouplikelyhood.length; i++) {
           dataYaxis.push({
                label: grouplikelyhood[i],
                backgroundColor: getRandomColor(),
                data: groupbardata[i]
            });
      }

      var data = {
            labels: groupbarlabel,
            datasets: dataYaxis
       };

       var myBarChart = new Chart(ctx1, {
            type: 'bar',
            data: data,
            options: {
                barValueSpacing: 15,
                scales: {
                    yAxes: [{
                        ticks: {
                            min: 0,
                        }
                    }]
                },
                title: {
                    display: true,
                    text: 'Face Annotation( in % )',
                    fontSize:35
                }
            }
       });
//---------------------------------- group bar end --------------------------------------


    new Chart(document.getElementById("bar-chart-horizontal"), {
    type: 'horizontalBar',
    data: {
    labels: ["A", "B", "C", "D", "E"],
    datasets: [{
      label: "Dataset 1",
      backgroundColor: "rgba(154,178,96,0.5)",
      hoverBackgroundColor: "rgba(154,178,96,1)",
      data: [10, 15, 5, 81, 55],
    }, {
      label: "Dataset 2",
      backgroundColor: "rgba(197,213,167,0.5)",
      hoverBackgroundColor: "rgba(197,213,167,1)",
      data: [90, 85, 95, 19, 45]
    }]
  },
    options: {
      legend: { display: false },
      title: {
        display: true,
        text: 'Predicted world population (millions) in 2050'
      },
      scales: {
           xAxes: [{
                stacked: true,
           }],
           yAxes: [{
                stacked: true
           }]
      }
    }
});

//---------------------------------- pie Start --------------------------------------
google.charts.setOnLoadCallback(drawChart);

//---------------------------------- pie end --------------------------------------
//---------------------------------- Map Start --------------------------------------
google.maps.event.addDomListener(window, 'load', initialize);
//---------------------------------- Map end --------------------------------------
}())

function getRandomColor() {
  var letters = '0123456789ABCDEF';
  var color = '#';
  for (var i = 0; i < 6; i++) {
    color += letters[Math.floor(Math.random() * 16)];
  }
  return color;
}

function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Work',     11],
          ['Eat',      2],
          ['Commute',  2],
          ['Watch TV', 2],
          ['Sleep',    7]
        ]);

        var options = {
          title: 'My Daily Activities',
          is3D: true,
          chartArea:{left:10,top:40,width:'70%',height:'100%'},
          legend:{position:'left',alignment:'center'},
          titleTextStyle:{ color: '#666666',fontSize: 35,bold: true}
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);

        var chart1 = new google.visualization.PieChart(document.getElementById('piechart_3d1'));
        chart1.draw(data, options);
}

function initialize() {
    var myCenter = new google.maps.LatLng(48.7867584, 2.3551161);
    var locations = [
        ['Bondi Beach', -33.890542, 151.274856, 4],
        ['Coogee Beach', -33.923036, 151.259052, 5],
        ['Cronulla Beach', -34.028249, 151.157507, 3],
        ['Manly Beach', -33.80010128657071, 151.28747820854187, 2],
        ['Maroubra Beach', -33.950198, 151.259302, 1]
    ];
    var myCenter = new google.maps.LatLng(locations[0][1], locations[0][2]);
    var mapProp = {
        center:myCenter,
        zoom:2,
        mapTypeId:google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
    for (i = 0; i < locations.length; i++) {
        marker = new google.maps.Marker({
            position: new google.maps.LatLng(locations[i][1], locations[i][2]),
            map: map,
            icon: {
                icon: 'http://maps.google.com/mapfiles/ms/icons/blue-dot.png',
                size: new google.maps.Size(70, 86), //marker image size
                origin: new google.maps.Point(0, 0), // marker origin
                anchor: new google.maps.Point(35, 86) // X-axis value (35, half of marker width) and 86 is Y-axis value (height of the marker).
            }
        });
        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infowindow.setContent(locations[i][0]);
                infowindow.open(map, marker);
            }
        })(marker, i));
    }
}