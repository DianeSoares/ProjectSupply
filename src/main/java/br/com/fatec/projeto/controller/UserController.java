package br.com.fatec.projeto.controller;

import java.util.HashMap;

/**
 * @author Diane
 *
 * 24 de jul de 2015
 */

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fatec.projeto.dao.UserDAO;
import br.com.fatec.projeto.model.User;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {

	@Autowired
	private UserDAO userDao;


	@RequestMapping("/listUser")
	public ModelAndView listUser() throws Exception {
		List<User> listUsers = userDao.findAll();
		ModelAndView model = new ModelAndView("User/list");
		model.addObject("userList", listUsers);
		return model;
	}

	@RequestMapping(value = "/newUser", method = RequestMethod.GET)
	public ModelAndView newUser() {
		ModelAndView model = new ModelAndView("User/form");
		model.addObject("user", new User());
		return model;
	}

	@RequestMapping(value = "/editUser", method = RequestMethod.GET)
	public ModelAndView editUser(HttpServletRequest request) {
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = userDao.findById(userId);
		ModelAndView model = new ModelAndView("User/form");
		model.addObject("user", user);
		return model;
	}

	@RequestMapping(value = "/deleteUser", method = RequestMethod.GET)
	public ModelAndView deleteUser(HttpServletRequest request) {
		int userId = Integer.parseInt(request.getParameter("id"));
		userDao.remove(userId);
		return new ModelAndView("redirect:/listUser");
	}

	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public ModelAndView saveUser(@Valid @ModelAttribute("user") User user, BindingResult result,  final RedirectAttributes redirectAttributes) {


		if (result.hasErrors()) {
			return new ModelAndView("User/form");
		}
		userDao.saveOrUpdate(user);
		redirectAttributes.addFlashAttribute("user", user);		 
		redirectAttributes.addFlashAttribute("message","Usu�rio adicionado com sucesso.");
		return new ModelAndView("redirect:/listUser");
	}
}
