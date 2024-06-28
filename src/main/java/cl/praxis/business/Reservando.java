package cl.praxis.business;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.praxis.model.Reservas;

@WebServlet("/Reservando")
public class Reservando extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HabitacionBusiness habitacionBusiness = new HabitacionBusiness();
	ReservaBussines reservaBussines = new ReservaBussines();
    public Reservando() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setAttribute("habitacionBusiness",this.habitacionBusiness.allRooms());
		getServletContext().getRequestDispatcher("/reservar.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String name = (String)request.getParameter("name");
		String lastName = (String)request.getParameter("lastName");
		String email = (String)request.getParameter("email");
		int valor = Integer.parseInt(request.getParameter("monto"));
		String medioPago = (String)request.getParameter("pago");
		String dias = (String)request.getParameter("dias");
		LocalDate fechaEntrada = LocalDate.parse(request.getParameter("entrada"));
		Reservas reserva = new Reservas( name, lastName, email,  medioPago,  dias,
				 fechaEntrada,valor);
		reservaBussines.addReserva(reserva);
		request.setAttribute("reserva",reserva);
		getServletContext().getRequestDispatcher("/proceso.jsp").forward(request, response);
	}

}
