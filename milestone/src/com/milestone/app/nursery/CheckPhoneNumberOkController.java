package com.milestone.app.nursery;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.nursery.dao.NurseryDAO;

public class CheckPhoneNumberOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		
		String nurserySchoolMemberPhoneNumber = req.getParameter("nurserySchoolMemberPhoneNumber");
		PrintWriter out = resp.getWriter();
		JSONObject jsonObject = new JSONObject();
		
		try {
			jsonObject.put("result", new NurseryDAO().checkPhoneNumber(nurserySchoolMemberPhoneNumber));
			out.print(jsonObject);
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
		out.close();
		
		return null;
	}

}
