
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ArithmeticCalculatorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setAttribute("result", "Result: ---");
        getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String tempFirst = request.getParameter("first");
        String tempLast = request.getParameter("last");
        String operation = request.getParameter("operation");
        
        try {
            int first = Integer.parseInt(tempFirst);
            int last = Integer.parseInt(tempLast);
            
            request.setAttribute("firstNumber", first);
            request.setAttribute("lastNumber", last);
        
            switch (operation){
                case "+":
                    request.setAttribute("result", "Result: " + (first + last));
                    break;
                case "-":
                    request.setAttribute("result", "Result: " + (first - last));
                    break;
                case "*":
                    request.setAttribute("result", "Result: " + (first * last));
                    break;
                case "%":
                    request.setAttribute("result", "Result: " + (first % last));
                    break;
                default:
                    request.setAttribute("result", "Result: ---");
            }
        } catch (Exception e) {
            
            request.setAttribute("firstNumber", tempFirst);
            request.setAttribute("lastNumber", tempLast);
            request.setAttribute("result", "Result: invalid");
            
        }

        getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
        
    }


}
