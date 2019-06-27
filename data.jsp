
<%@page import="com.hefshine.services.Account"%>
<%@page import="com.hefshine.services.AccountDAO"%>
<%
	int acc = Integer.parseInt(request.getParameter("accno"));
	AccountDAO dao = new AccountDAO();
	Account account = dao.getAccountInfo(acc);
	
	if (account == null) {
		System.out.println("NULL..................................");
		out.print("Record not fount in database");
		//window.alert("Record not fount in database");
	} else {
		System.out.println("ELSE");
		System.out.println("********************************************");
		out.print(account.getName()+"-"+account.getBalance());
		
	}
%>