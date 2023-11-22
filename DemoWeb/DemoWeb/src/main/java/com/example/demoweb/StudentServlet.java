package com.example.demoweb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "studentServlet", value = "/listStudent")
public class StudentServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        ArrayList<Student> list = new ArrayList<>();
        list.add(new Student(1, "Đức","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR03j-rNOvAqAZuQIN5cg-0gvbuAPGmbgQyGg&usqp=CAU"));
        list.add(new Student(2, "Linh","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtoBPVFi2pqe1q2_CL5EgBXXtbqNSI0vEr3TwKIrvQGg&s"));
        list.add(new Student(3, "Đề","https://ngheantrade.com/wp-content/uploads/2021/06/chup-anh-the-o-vinh-3.jpg"));
        response.setContentType("text/html");
        PrintWriter printWriter = response.getWriter();
        String result = "<table border=\"1\"><tr>\n" +
                "        <th>Id</th>\n" +
                "        <th>Name</th>\n" +
                "        <th>Image</th>\n" +
                "    </tr>";
        for (Student s :
                list) {
            result += "    <tr style=\"text-align:center\">\n" +
                    "        <td style=\"padding: 20px 20px\">"+s.getId()+"</td>\n" +
                    "        <td style=\"padding: 20px 20px\">"+s.getName()+"</td>\n" +
                    "        <td style=\"padding: 20px 20px\"><img src=\""+s.getImage()+"\" width=\"100px\"></td>\n" +
                    "    </tr>";
        }
        result += "</table>";
        printWriter.write(result);
        String form = "<form action=\"/listStudent\" method=\"post\">\n" +
                "    <input type=\"text\" name=\"id\">\n" +
                "    <input type=\"text\" name=\"name\">\n" +
                "    <input type=\"text\" name=\"image\">\n" +
                "    <button>Thêm mới</button>\n" +
                "</form>";
        printWriter.write(form);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String image = req.getParameter("image");
        resp.setContentType("text/html");
        PrintWriter printWriter = resp.getWriter();

    }
}