package servlets;

import java.io.IOException;
import java.util.*;
import javax.jdo.PersistenceManager;
import javax.servlet.http.*;
import javax.jdo.Query;
import beans.Usuarios;

@SuppressWarnings("serial")
public class Login extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");


		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Usuarios.class);

		HttpSession sesion = req.getSession(true);
		
		String usuario = req.getParameter("user");
		String password = req.getParameter("pass");
		//q.setOrdering("key ascending");
		q.setOrdering("key descending");
		q.setRange(0, 10);
		q.setFilter("user == colorParam");
		q.declareParameters("String colorParam");
		
		@SuppressWarnings("unchecked")
		List<Usuarios> personas = (List<Usuarios>) q.execute(usuario);
		
		if(personas.size()==0)
			//usuario no existe
			resp.sendRedirect("controljsp?v=9");
		else if(personas.size()!=0 && usuario.equals(personas.get(0).getUser()) && password.equals(personas.get(0).getPass()) && sesion.getAttribute("usuario") == null){
			//usuario y contrase�a existen ademas de sesion no iniciada
			sesion.setAttribute("usuario", usuario);
			resp.sendRedirect("controljsp?v=11");
		}
		else if(personas.size()!=0 && usuario.equals(personas.get(0).getUser()) && password != personas.get(0).getPass())
			//usuario correcto pero contrase�a incorrecta
			resp.sendRedirect("controljsp?v=9");
		
		

		q.closeAll();
		pm.close();
	}
	
}

			
		
			


	

