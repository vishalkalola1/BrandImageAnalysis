/* globals Chart:false, feather:false */

(function () {
  'use strict'

  feather.replace()

  // Graphs
  var ctx = document.getElementById('myChart').getContext('2d');
  // eslint-disable-next-line no-unused-vars
  var myChart = new Chart(ctx, {
    type: 'pie',
    data: {
      datasets: [{
          data: [
            12131,
            56565,
            23823,
            23282,
            64378,
          ],
          backgroundColor: [
           '#FF5733',
            '#D89600',
            '#E1BD07',
            '#07CAE1',
            '#07E1B9',
          ],
      }],
      labels: [
        'Facebook',
        'Instagram',
        'Twitter',
        'linkedin',
        'Snapchat'
      ]
    },
    options: {
      responsive: true
    },
  })
}())
