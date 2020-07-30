
(function () {
      'use strict'
      // Graphs
//---------------------------------- pie Start --------------------------------------

      var labeldata = JSON.parse(document.getElementById('labeldata').textContent);
      var labellabels = JSON.parse(document.getElementById('labellabels').textContent);

      var colors = []
      var j;
      for(j=0;j<labeldata[0].length;j++){
        colors.push(getRandomColor())
      }

      var ctx1 = document.getElementById('myChart1').getContext('2d');
      // eslint-disable-next-line no-unused-vars

      var myChart1 = new Chart(ctx1, {
            type: 'pie',
            data: {
                datasets: [{
                data: labeldata[0],
                backgroundColor: colors
            }],
                labels: labellabels[0]
            },
            options: {
                legend: {
                    display: true,
                    position: 'right'
                },
                title: {
                    display: true,
                    text: 'Product Category',
                    fontSize:20
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
      for(j=0;j<labeldata[1].length;j++){
            colors.push(getRandomColor())
      }
      var ctx2 = document.getElementById('myChart2').getContext('2d');
      var myChart1 = new Chart(ctx2, {
            type: 'pie',
            data: {
                datasets: [{
                data: labeldata[1],
                backgroundColor: colors
            }],
                labels: labellabels[1]
            },
            options: {
                legend: {
                    display: true,
                    position: 'right'
                },
                title: {
                    display: true,
                    text: 'Body parts visible',
                    fontSize:20
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
      for(j=0;j<labeldata[2].length;j++){
            colors.push(getRandomColor())
      }

      var ctx3 = document.getElementById('myChart3').getContext('2d');
      var myChart1 = new Chart(ctx3, {
            type: 'pie',
            data: {
                datasets: [{
                data: labeldata[2],
                backgroundColor: colors
            }],
                labels: labellabels[2]
            },
            options: {
                legend: {
                    display: true,
                    position: 'right'
                },
                title: {
                    display: true,
                    text: 'Major Colors',
                    fontSize:20
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
      for(j=0;j<labeldata[3].length;j++){
            colors.push(getRandomColor())
      }

      var ctx4 = document.getElementById('myChart4').getContext('2d');
      var myChart1 = new Chart(ctx4, {
            type: 'pie',
            data: {
                datasets: [{
                data: labeldata[3],
                backgroundColor: colors
            }],
                labels: labellabels[3]
            },
            options: {
                legend: {
                    display: true,
                    position: 'right'
                },
                title: {
                    display: true,
                    text: 'Objects Detected',
                    fontSize:20
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
                    text: 'Text Annotation( Each over % )',
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
      var color1 = getRandomColor()
      var color2 = getRandomColor()
      var myHorizontalBarChart = new Chart(ctx, {
            type: 'horizontalBar',
            data: {
                labels: groupbarlabel,
                datasets: [{
                  label: "Yes",
                  backgroundColor: color1,
                  hoverBackgroundColor: color1,
                  data: groupbardata[1],
                }, {
                  label: "No",
                  backgroundColor: color2,
                  hoverBackgroundColor: color2,
                  data: groupbardata[0]
                }]
            },
            options: {
                  legend: { display: true },
                  title: {
                        display: true,
                        text: 'Face Annotations ( Each over % )',
                        fontSize:35
                  },
                  scales: {
                       xAxes: [{
                            stacked: true,
                            ticks: {
                                min: 0
                            }
                       }],
                       yAxes: [{
                            stacked: true,

                       }]
                  },

            }
      });
//---------------------------------- group bar end --------------------------------------

    var horizontalbarchartdata = JSON.parse(document.getElementById('horizontalbarchartdata').textContent);
    var horizontalbarchartlabel = JSON.parse(document.getElementById('horizontalbarchartlabel').textContent);
    var color1 = getRandomColor()
    var color2 = getRandomColor()
    var myHorizontalBarChart = new Chart(document.getElementById("bar-chart-horizontal"), {
        type: 'horizontalBar',
        data: {
            labels: horizontalbarchartlabel,
            datasets: [{
              label: "Yes",
              backgroundColor: color1,
              hoverBackgroundColor: color1,
              data: horizontalbarchartdata[1],
            }, {
              label: "No",
              backgroundColor: color2,
              hoverBackgroundColor: color2,
              data: horizontalbarchartdata[0]
            }]
        },
        options: {
              legend: { display: true },
              title: {
                    display: true,
                    text: 'Safe search Annotations ( Each over % )',
                    fontSize:35
              },
              scales: {
                   xAxes: [{
                        stacked: true,
                        ticks: {
                            min: 0
                        }
                   }],
                   yAxes: [{
                        stacked: true,

                   }]
              },

        }
    });

//---------------------------------- pie Start --------------------------------------
    var piechart_3d = document.getElementById('piechart_3d').getContext('2d');
    // eslint-disable-next-line no-unused-vars
    var logodata = JSON.parse(document.getElementById('logodata').textContent);
    var logolabel = JSON.parse(document.getElementById('logolabel').textContent);
    var colors = []
    for(var j=0;j<logodata.length;j++){
       colors.push(getRandomColor())
    }
     var myChartpiechart_3d = new Chart(piechart_3d, {
            type: 'pie',
            data: {
                datasets: [{
                data: logodata,
                backgroundColor: colors
            }],
                labels: logolabel
            },
            options: {
                legend: {
                    display: true,
                    position: 'right'
                },
                title: {
                    display: true,
                    text: 'Logo Annotation ( Each over % )',
                    fontSize:20
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
    var piechart_3d1 = document.getElementById('piechart_3d1').getContext('2d');
    // eslint-disable-next-line no-unused-vars
    var localizedData = JSON.parse(document.getElementById('localizedData').textContent);
    var localizedLabel = JSON.parse(document.getElementById('localizedLabel').textContent);
    var colors = []
    for(var j=0;j<localizedData.length;j++){
       colors.push(getRandomColor())
    }
     var myChartpiechart_3d = new Chart(piechart_3d1, {
            type: 'pie',
            data: {
                datasets: [{
                data: localizedData,
                backgroundColor: colors
            }],
                labels: localizedLabel
            },
            options: {
                legend: {
                    display: true,
                    position: 'right'
                },
                title: {
                    display: true,
                    text: 'Localizedobject Annotations ( Each over % )',
                    fontSize:20
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
//---------------------------------- Map Start --------------------------------------
google.maps.event.addDomListener(window, 'load', initialize);
//---------------------------------- Map end --------------------------------------
//getPDF()
}())

function getRandomColor() {
    var letters = '0123456789ABCDEF';
    var color = '#';
    for (var i = 0; i < 6; i++) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
}

function initialize() {
    var mapdata = JSON.parse(document.getElementById('mapdata').textContent);
    var myCenter = new google.maps.LatLng(48.7867584, 2.3551161);
    var locations = mapdata
    var myCenter = new google.maps.LatLng(locations[0][1], locations[0][2]);
    var mapProp = {
        center:myCenter,
        zoom:2,
        mapTypeId:google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
    for (i = 0; i < locations.length; i++) {
        var icons = {
          pin: {
            icon: '/Users/vishal/Documents/Projects/PRI/BrandAnalysis/BrandAnalysisApp/static/assets/blue-dot.png'
          },
        };
        marker = new google.maps.Marker({
            position: new google.maps.LatLng(locations[i][1], locations[i][2]),
            map: map,

            icon: {
                icon:icons['pin'].icon,
                size: new google.maps.Size(70, 86), //marker image size
                origin: new google.maps.Point(0, 0), // marker origin
                anchor: new google.maps.Point(35, 86) // X-axis value (35, half of marker width) and 86 is Y-axis value (height of the marker).
            }
        });
        var infowindow = new google.maps.InfoWindow({
                content: "This is a test marker"
        });
        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infowindow.setContent(locations[i][0]);
                infowindow.open(map, marker);
            }
        })(marker, i));
    }
}