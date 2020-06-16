/* globals Chart:false, feather:false */

(function () {
  'use strict'

  feather.replace()

  // Graphs
  var ctx = document.getElementById('myChart').getContext('2d');
  // eslint-disable-next-line no-unused-vars
  var piedata = JSON.parse(document.getElementById('piedata').textContent);
  var pielabels = JSON.parse(document.getElementById('pielabels').textContent);
  var myChart = new Chart(ctx, {
    type: 'pie',
    data: {
      datasets: [{
          data: piedata,
          backgroundColor: [
            "#ff0000",
            '#ffa500',
            '#ffff00',
            '#008000',
            '#0000ff',
            '#4b0082',
            '#ee82ee',
            '#00FFFF'
          ],
      }],
      labels: pielabels
    },
    options: {
      responsive: true
    },
  })
}())
