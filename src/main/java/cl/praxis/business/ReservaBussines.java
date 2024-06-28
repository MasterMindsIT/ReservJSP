package cl.praxis.business;

import java.util.ArrayList;
import java.util.List;

import cl.praxis.model.Reservas;

public class ReservaBussines {
	List<Reservas> lista = new ArrayList<>();

	public ReservaBussines() {
		super();
		
	}
	public void addReserva(Reservas reservas) {
		lista.add(reservas);
	}
	public List<Reservas> allReservas(){
		return lista;
	}
}
