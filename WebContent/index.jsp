
<html>
<head>
	<title>Mail Test</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!-- <script type="text/javascript">
	function sendmail(){
		document.com.action="mailJSP.jsp";
		document.com.submit();
	}
	</script> -->
</head>
<body>
<!-- <form action="SendMail">
Email Id:<input type="text" name="to"/><br/>
 Subject:<input type="text" name="subject"><br/>
Text:<textarea rows="10" cols="70" name="msg"></textarea><br/>  
<input type="submit" value="send">


</form> -->


<form name="com" action="#"  method="post">  

<table>
                 <tr><td>To: </td>
                     <td> <input type="text" id="mail" name="mail" value=""/><br/> </td>
                 </tr>

                <tr>
                     <td> Subject: </td>
                    <td> <input type="text" id="sub" name="sub" value=""><br/> </td>
                </tr>

                <tr>
                     <td> Message Text:  </td>
                     <td> <textarea rows="12" cols="80" id="mess" name="mess"></textarea><br/>  </td>
                 </tr>

                <tr>

                    <td>
                         <!-- <input type="button" onclick="sendmail()"  value="Send"/>  -->
                         
                          <!-- using type="button" with out reload the page to send mail -->
                          <input type="button" value="send" id="sendmail"/> 
                     </td>

                    <td>
                         <input type="reset" value="Reset">
                     </td>

                </tr>
 
            </table>

 

</form>

<script>
$(document).ready(function() {
$("#sendmail").click(function() {
/* alert("succeess");
var mail=$('#mail').val();
alert(mail); */
$.ajax({
url: "mailJSP.jsp",
type: "post",
data: {
	mail:$('#mail').val(),
	sub:$('#sub').val(),
	mess:$('#mess').val(),
 success : function(data){
  // alert(data);
	 alert("Your mail sent successfully....");
}
}
});
});
});
</script>
</body>
</html>
