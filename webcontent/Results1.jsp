<%@page import ="java.sql.*"%>
<%
try
{

	Class.forName("com.mysql.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ams","root","root");


ResultSet rs=connection.createStatement().executeQuery("select rollno,count(rollno) from att group by rollno");
%><html>
<head>
<title>Transaction Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<div id="graph">Loading graph...xxxx</div>

<body>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	out.println("xx");
	int i=0;
	
	String s1=null;
	
	while(rs.next())
	{
	out.println("xx");
	 s1=rs.getString(1);
	int s3=rs.getInt(2);
	
	out.println(s3);
	out.println(s1);
	%>
	
	myData["<%=i%>"]=["<%= s1%>",<%= s3%>];
        
	<%
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#42aBdB');
	myChart.setBarOpacity(0.8);
	myChart.setSize(500, 350);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#777E81');
	myChart.draw();
	
</script>

</body>
</html>
<%
}
catch(Exception e)
{
out.println(e);
}
%>

