package com.usatu.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

public class MainServlet extends HttpServlet {
    /**
     * Основной метод класса HttpServlet, вызывается сервером для обработки GET запросов.
     *
     * @param req q{@link HttpServletRequest} объект, хранящий запрос,
     *                  сделанный клиентом к сервлету
     *
     * @param resp {@link HttpServletResponse} объект, хранящий ответ,
     *                  который сервлет отправляет на клиент
     *
     * @exception IOException вызывается, если обнаружена ошибка
     *                              ввода-вывода при обработке GET запроса
     *
     * @exception ServletException вызывается, если GET запрос
     *                                  не может быть обработан
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String reqAttribute = req.getParameter("age");
        try {
            double age = Integer.parseInt(reqAttribute);
            String answer;
             /*
            Проверка - Если количество гостей больше 7, то вес торта будет больше 1 кг,
            и значит необходимо массу измерить в килограммах, если гостей меньше 7, то масса торта
            будет измеряться в граммах
             */
            if (age >= 7){
                answer = ((age * 150)/ 1000) + " кг";
            } else {
                answer = ((age * 150)) + " г";
            }

            req.setAttribute("answer", "Вам понадобится торт на " +  answer);
        } catch (NumberFormatException exception) {
             /* Если в поле будут введены символы, не являющиеся числом, то будет выведена ошибка */
            req.setAttribute("answer", "- Нужно написать цифрами. Попробуйте снова.");
        }
        /*
        Перенаправляем наш запрос на вторую страницу,
        где и будем выводить наш ответ
         */
        req.getRequestDispatcher("result.jsp").forward(req, resp);
    }
}
