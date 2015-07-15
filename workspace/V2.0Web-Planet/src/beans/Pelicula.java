package beans;
import java.util.*;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable
public class Pelicula {

	@Persistent
	String nombre;
	@Persistent
	String autor;
	@Persistent
	ArrayList<String> horarios;
	

	public Pelicula(String nombre, String autor, ArrayList<String> ho) {
		super();
		this.nombre = nombre;
		this.autor = autor;
		horarios =new ArrayList<String>();
		for(int i=0;i<ho.size();i++){
			horarios.add(ho.get(i));
		}
	}

	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public ArrayList<String> getHorarios() {
		return horarios;
	}

	public void setHorario(String horario) {
		horarios.add(horario);
	}

	
	@Override
	public String toString() {
		String resp = nombre + " : " + autor + " : " + horarios;
		return resp;
	}
	
}