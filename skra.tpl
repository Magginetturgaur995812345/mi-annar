<!DOCTYPE html>
<html>
<head>
	<title>Midannarverkefni</title>
	<link rel="stylesheet" type="text/css" href="/Myndir/css.css">
	<meta charset="utf-8">
</head>
<body>
	<h1>Söluaðilar eldsneytis á Íslandi</h1>
	<div class="image">
		<img src="/Myndir/AO.png">
		<img src="/Myndir/Costco.png">
		<img src="/Myndir/Dælan.png">
		<img src="/Myndir/N1.png">
		<img src="/Myndir/OB.png">
		<img src="/Myndir/Olís.png">
		<img src="/Myndir/Orkan.png">
		<img src="/Myndir/Orkanx.png">
	</div>
	<br>
	<%
	listi=[]
	for i in data["results"]:
		if i["company"] not in listi:
			listi.append(i["company"])
		end
	end
	%>
	<div class="wrapper">
	%for i in listi:
		<div>
			<a href="/company/{{i}}">{{i}}</a>
		</div>	
	%end
	</div>
	
	
</body>
</html>