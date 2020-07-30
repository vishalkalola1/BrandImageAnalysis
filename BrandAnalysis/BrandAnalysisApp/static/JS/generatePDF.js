/* globals Chart:false, feather:false */
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
})();

function getRandomColor() {
    var letters = '0123456789ABCDEF';
    var color = '#';
    for (var i = 0; i < 6; i++) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
}

	function getPDF(){

		var HTML_Width = $(".testPDF").width();
		var HTML_Height = $(".testPDF").height();
		var top_left_margin = 15;
		var PDF_Width = HTML_Width+(top_left_margin*2);
		var PDF_Height = (PDF_Width*1.5)+(top_left_margin*2);
		var canvas_image_width = HTML_Width;
		var canvas_image_height = HTML_Height;

		var totalPDFPages = Math.ceil(HTML_Height/PDF_Height)-1;


		html2canvas($(".testPDF")[0],{allowTaint:true}).then(function(canvas) {
			canvas.getContext('2d');

			console.log(canvas.height+"  "+canvas.width);


			var imgData = canvas.toDataURL("image/jpeg", 1.0);
			var pdf = new jsPDF('p', 'pt',  [PDF_Width, PDF_Height]);
		    pdf.addImage(imgData, 'JPG', top_left_margin, top_left_margin,canvas_image_width,canvas_image_height);


			for (var i = 1; i <= totalPDFPages; i++) {
				pdf.addPage(PDF_Width, PDF_Height);
				pdf.addImage(imgData, 'JPG', top_left_margin, -(PDF_Height*i)+(top_left_margin*4),canvas_image_width,canvas_image_height);
			}

		    pdf.save("Stalk Market Report.pdf");
        });
	};