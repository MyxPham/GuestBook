package Coreservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BALayer.DBGuestBook;

@WebServlet("/DeleteGuestBook")
public class DeleteGuestBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteGuestBook() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DBGuestBook db = new DBGuestBook();
		PrintWriter out = response.getWriter();	
		
		try {
			int ID = Integer.parseInt(request.getParameter("ID"));
			if (db.DeleteGuestBook(ID)) {
				response.sendRedirect("GuestBook.jsp");
			}
			else {
				response.setContentType("text/html");
				out.println("<html lang=\"en\"><head><meta charset=\"utf-8\"><title>Error</title></head><body>");
				out.println("<p>Error 1</p>");
				out.println("<a href=\"GuestBook.jsp\">Trở lại....!</a>");
				out.println("</body></html>");
			}
		}catch (Exception e) {
		}
	}

}
