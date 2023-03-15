package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Calculadora;

/**
 * Servlet implementation class CalculadoraServlet
 */
@WebServlet("/calculadora")
public class CalculadoraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Recebe os valores enviados pelo formulário
				double valor1 = Double.parseDouble(request.getParameter("valor1"));
				double valor2 = Double.parseDouble(request.getParameter("valor2"));
				String operacao = request.getParameter("operacao");

				// Cria o objeto Calculadora e faz a operação solicitada
				Calculadora calculadora = new Calculadora();
				calculadora.setValor1(valor1);
				calculadora.setValor2(valor2);
				
				if (operacao.equals("soma")) {
		            calculadora.setResultado(valor1 + valor2);
		        } else if (operacao.equals("subtrai")) {
		            calculadora.setResultado(valor1 - valor2);
		        }
		        
		        // Envia o objeto Calculadora para a página JSP
		        request.setAttribute("calculadora", calculadora);
		        request.getRequestDispatcher("resultado.jsp").forward(request, response);
	}

}
