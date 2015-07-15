package servlets;
import java.io.IOException;
import java.util.*;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;
import javax.jdo.Query;
import beans.Usuarios;

@SuppressWarnings("serial")
public class BuscarCliente extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Usuarios.class);
		
		String dni = req.getParameter("dni");
		
		q.setOrdering("key descending");
		q.setRange(0, 10);
		q.setFilter("dni == colorParam");
		q.declareParameters("String colorParam");
		
		@SuppressWarnings("unchecked")
		List<Usuarios> personas = (List<Usuarios>) q.execute(dni);
		
		if(personas.size()==0){
			resp.setContentType("text/html");
			resp.getWriter().print("No se encontro cliente");
		}
		else{
			resp.setContentType("text/html");
			resp.getWriter().print("Usuario="+personas.get(0).getUser()+"\n"
					+"Nombre="+personas.get(0).getNombre()+"\n"
					+"Apellido="+personas.get(0).getApellido()+"\n"
					+"DNI="+personas.get(0).getDNI()+"\n");
		}
		

		q.closeAll();
		pm.close();
	}
}
