<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%  request.setCharacterEncoding("UTF-8"); 

	String username_sess = (String)session.getAttribute("username_sess");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
	<link href="css/nivo-slider.css" rel="stylesheet" type="text/css" />
    <!--[if IE]><link href="css/style-ie.css" rel="stylesheet" type="text/css" /><![endif]-->
	<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
	<script type="text/javascript">
		$(window).load(function() {
			$('#slideshow').nivoSlider('<div id="nav" class="nav">').cycle({
				fx:     'fade',
				speed:  300,
				timeout: 5000,
				pager:  '#nav'
			});
		});
	</script>
	
	
	<script type="text/javascript">
		$(window).load(function() {
			$('#slideshow').nivoSlider({
				directionNav: false
			});
		});
	</script>
<script>
var xmlhttp = new XMLHttpRequest();//สร้าง object
xmlhttp.onreadystatechange=function(){ //จับ event พอเกิด event ให้เรียก functionไม่มีชื่อ
if(xmlhttp.readyState==4 && xmlhttp.status==200){
document.getElementById("result").innerHTML = xmlhttp.responseText;//ใช่ domเข้าถึง <div>ผ่าน ID=resultโดยต้องการเปลี่ยนค่าที่ <div>
}
}
var url = "loadtxt.jsp";
//เปิด connection
xmlhttp.open("GET",url,true);
xmlhttp.send();

</script>


</head>
<body bgcolor="#FFFFCC">

<div align="center">
  <table width="1024" border="0">
    <tr>
      <td><img src="images/logo.png" width="1024" height="150" alt=""/></td>
    </tr>
    
    <tr>
   <td><a href="index.jsp" ><img src="images/Button/btn1.png" width="170" height="30" alt=""/></a>
   <a href="index.jsp" ><img src="images/Button/btn2.png" width="150" height="30" alt=""/></a>
   <a href="index.jsp" ><img src="images/Button/btn3.png" width="150" height="30" alt=""/></a>
   <a href="index.jsp" ><img src="images/Button/btn4.png" width="150" height="30" alt=""/></a>
   <a href="index.jsp" ><img src="images/Button/btn5.png" width="150" height="30" alt=""/></a>
   <a href="PeckMean.jsp" ><img src="images/Button/btn7.jpg" width="150" height="30" alt=""/></a></td>
   </tr>
    

    <tr>
    <td>
    <h3 align = 'center'>
    <font face="Tahoma" COLOR="black" size="6">  "สุพรรณบุรี     เมืองยุทธหัตถี     วรรณคดีขึ้นชื่อ     เลื่องลือพระเครื่อง     รุ่งเรืองเกษตรกรรม     สูงล้ำประวัติศาสตร์     แหล่งปราชญ์ศิลปิน     ภาษาถิ่นชวนฟัง"</FONT><br>
    </h3>
</td>
</tr>


    
    <tr>
    <td>
    <h3 align = 'center'>
  <div id="slideshow">
			<img src="images/Slideshow/sp1.jpg"alt="Slideshow Image" />
			<img src="images/Slideshow/sp2.jpg"alt="Slideshow Image" />
			<img src="images/Slideshow/sp3.jpg"alt="Slideshow Image" />
			<img src="images/Slideshow/sp4.jpg"alt="Slideshow Image" />
			<img src="images/Slideshow/sp5.jpg"alt="Slideshow Image" />
			<img src="images/Slideshow/sp6.JPG"alt="Slideshow Image" />
		</div><!-- // end #slideshow -->
		</h3>
		</td>
		</tr>
		
		 <ul class="nav navbar-nav navbar-right">

        
      
       <li class="dropdown">
            <a class="dropdown-toggle" href="#" data-toggle="dropdown"><strong class="caret"></strong></a>
            <div class="dropdown-menu" style="padding: 15px; padding-bottom: 0px;">
              <!-- Login form here -->
              <% if(username_sess==null) { %>

              <form action="SPlogin.jsp" method="post" >
              	<input type="text" class="form-control" style="margin-bottom: 15px;" id="username" name="username" placeholder="ชื่อผู้ใช้" size="30" required>
              	<input type="password" class="form-control" style="margin-bottom: 15px;" id="password" name="password" placeholder="รหัสผ่าน" size="30" required>
				  <input class="btn btn-block"  style="margin-bottom: 15px;" type="submit" name="submit" value="เข้าสู่ระบบ" />
				</form>
				<% } else { %>  	
          <% out.println(username_sess); %><a href="SPlogout.jsp">ออกจากระบบ</a>
 		<% } %>
			
			
		
            </div>
          </li>
    
      </ul>
      
      <marquee behavior="scroll" scrolldelay="100"><div id="result"></div></marquee>

</table>
</div>

			<h2>แนะนำสถานที่ท่องเที่ยว</h2>
<div id="SPplace"></div>

</div>	

		<script>
$(document).ready(function(){
var data = '{"location":['+
'{"SPname":"ตลาดเก่าร้อยปีสามชุก","SPpic":"spb1.jpg","SPdetail":"ถวิลหาอดีตความทรงจำ ที่ตลาดแห่งนี้เคยเนืองแน่นด้วยผู้คน แต่ยังคงเสน่ห์ของคนสุพรรณบุรี พ่อค้าแม่ขายใจดี ของกินชิมฟรีได้ทั้งตลาด" },'+
'{"SPname":"อนุสรณ์ดอนเจดีย์","SPpic":"spb2.jpg","SPdetail":"กราบไหว้พระบรมราชานุสรณ์สมเด็จพระนเรศรทรงยุทธหัตถีบนหลังช้าง เป็นเคารพนับถือของปวงชนชาวไทย ผ่านไปมาดอนเจดีย์ อย่าลืมไปเยี่ยมชม กราบไหว้เพื่อเป็นสิริมงคลกัน" },'+
'{"SPname":"อุทยานมังกรสวรรค์","SPpic":"spb3.jpg","SPdetail":"ณ ศาลหลักเมืองสุพรรณบุรี ชมมังกรสวรรค์ยามพลบค่ำ กลายแสงเป็นสีทองเหลืองอร่าม สวยสง่างามต้องบอกต่อ" },'+
'{"SPname":"พิพิธภัณฑ์บ้านควายไทย","SPpic":"spb4.jpg","SPdetail":"ชมวิถีของแผ่นดินไทย บรรยากาศภาพเก่าๆ ความทรงจำในอดีต ของไอ้ทุยเพื่อนยากไถนา การดำนา ลงแขกเกี่ยวข้าวด้วยมือ ที่ชักจะเลือนลางจางหายไปจากวิถีชีวิตคนไทยจนจะกลายเป็นอดีตไปแล้ว แต่กลับหาชมได้ที่นี่" }]}';
	var obj = eval ("("+data+")");
	for (var i = 0;i<obj.location.length;i++){
		$("#SPplace").append("<div><h4>"+obj.location[i].SPname+"</h4></div>");
		$("#SPplace").append("<div><img src=\"images/"+obj.location[i].SPpic+"\" width=\"700px;\" height=\"500px;\"><br><br>");		
		$("#SPplace").append("<div>"+obj.location[i].SPdetail+"</div>");
		$("#SPplace").append("<br><br></div>");
	
	}//forloop	
});//document-ready block
</script>

</body>
</html>