package beans;
import java.util.*;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
 
@PersistenceCapable
public class Reserva {
	ArrayList<String> hor = new ArrayList<String>(); 
	
	@Persistent
	Pelicula pelicula = new Pelicula(null,null,hor);
	@Persistent
	String usuario;
	@Persistent
	String dia;
	@Persistent
	String horario;

	
	public Reserva(String us,String nombre, String dia, String hora){
		super();
		this.usuario=us;
		pelicula.nombre=nombre;
		this.dia=dia;
		this.horario=hora;
	}
	public String getNombre(){
		return pelicula.nombre;
	}
	public void setNombre(String nombre) {
		pelicula.nombre = nombre;
	}
	public String getUsuario(){
		return usuario;
	}
	public void setUsuario(String user) {
		this.usuario = user;
	}
	public String getDia(){
		return dia;
	}
	public void setDia(String dia) {
		this.dia = dia;
	}
	public String getHora(){
		return horario;
	}
	public void setHora(String hora) {
		this.horario = hora;
	}

	@Override
	public String toString() {
		String resp = pelicula.nombre + "  : " + dia + " : " + horario;  
		return resp;
	}
}
