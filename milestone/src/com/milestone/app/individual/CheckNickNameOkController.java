package com.milestone.app.individual;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.individual.dao.IndividualDAO;

public class CheckNickNameOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		
		String nickName = req.getParameter("nickName");
		PrintWriter out = resp.getWriter();
		JSONObject jsonObject = new JSONObject();
		
		try {
			jsonObject.put("result", new IndividualDAO().checkNickName(nickName));
			out.print(jsonObject.toString());
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
		out.close();
		return null;
	}

}
