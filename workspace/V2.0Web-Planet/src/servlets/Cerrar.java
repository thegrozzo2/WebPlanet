package servlets;
import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

import beans.Reserva;

@SuppressWarnings("serial")
public class Cerrar extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		HttpSession sesion = req.getSession(true);
		String user=(String) sesion.getAttribute("usuario");
		String nombre = req.getParameter("nombre");
		String dia = req.getParameter("dia");
		String horario = req.getParameter("horario");
		
		
		Reserva r = new Reserva(user,nombre, dia, horario);	
		PersistenceManager pm = PMF.get().getPersistenceManager();
		
		pm.makePersistent(r);
		resp.getWriter().println("Datos grabados correctamente");
		resp.sendRedirect("controljsp?v=11");
		
		pm.close();
	}
}




