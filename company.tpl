<!DOCTYPE html>
<html>
<head>
	<title>xd</title>
	<link rel="stylesheet" type="text/css" href="/Myndir/css.css">
	<meta charset="utf-8">
	<h1>Bensínstöðvar</h1>
</head>
<body>

	%for i in data["results"]:
	%	if name == i["company"]:
		<table class="bordi">
  <tr>
    <th>Fyrirtæki</th>
    <th>Staður</th>
    <th>95</th>
    <th>Diesel</th>
  </tr>
  <tr>
    <td>{{i["company"]}}</td>
    <td>{{i["name"]}}</td>
    <td>{{i["bensin95"]}} KR/L</td>
    <td>{{i["diesel"]}} KR/L</td>
  </tr>
</table>
		% end
	% end
</body>
<a href="/">Heim</a> 
</html>