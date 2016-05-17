﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="googlechart.aspx.vb" Inherits="WebApplication1.googlechart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {

     // $.get("USAccidentsBasedonTime.csv", function(csvString) {
      // transform the CSV string into a 2-dimensional array
     // var arrayData = $.csv.toArrays(csvString, {onParseValue: $.csv.hooks.castToScalar});
//        var data = google.visualization.arrayToDataTable([
//          ['Year', 'Sales', 'Expenses', 'Profit'],
//          ['2014', 1000, 400, 200],
//          ['2015', 1170, 460, 250],
//          ['2016', 660, 1120, 300],
//          ['2017', 1030, 540, 350]
//        ]);

        var data = google.visualization.arrayToDataTable([
        ['weekday','Midnight to 259 am','3 am to 559 am','6 am to 859am','9 am to 1159','Noon to 259pm','3pm to 559 pm','6pm to 859pm','9pm to 1159pm','Unknown'],
            ['Sunday',902,569,322,340,535,667,738,556,49],
            ['Monday',290,289,454,409,540,654,621,476,25],
            ['Tuesday',251,266,455,380,519,618,594,505,28],
            ['Wednesday',324,295,461,444,510,625,660,503,26],
            ['Thursday',334,272,452,407,527,656,597,583,32],
            ['Friday',460,317,465,442,577,735,840,879,28],
            ['Saturday',878,547,413,474,611,794,858,876,35]
            ]);
        var options = {
          chart: {
            title: 'US Traffic Accidents',
            subtitle: 'Report to compare the number of accidents in different times of week',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, options);
      }
    </script>

    <title></title>
  </head>
  <body>
    <div id="columnchart_material" style="width: 900px; height: 500px;"></div>
  </body>
</html>
