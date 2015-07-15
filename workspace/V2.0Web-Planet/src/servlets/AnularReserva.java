package servlets;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.Reserva;
@SuppressWarnings("serial")
public class AnularReserva extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/plain");		
		
		if( req.getParameter("nombre")!=null ){
			String pelicula = req.getParameter("nombre");
			final PersistenceManager pm = PMF.get().getPersistenceManager();
			final Query q = pm.newQuery(Reserva.class);
			q.setFilter("nombre == nombreParam");
			q.declareParameters("String nombreParam");	
			try{
				q.deletePersistentAll(pelicula);
				resp.getWriter().println("Se han borrado personas.");
				resp.sendRedirect("controljsp?v=4");
  			}catch(Exception e){
					System.out.println(e);
					resp.getWriter().println("No se han podido borrar.");
					resp.sendRedirect("controljsp?v=1");
			}finally{
				q.closeAll();
				pm.close();
			}			
		}else {		
			resp.getWriter().println("No se ha especificado el nombre.");
			resp.sendRedirect("controljsp?v=1");
		}		
	}

}
