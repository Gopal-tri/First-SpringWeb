package com.trainingbasket.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.trainingbasket.model.Todo;
import com.trainingbasket.services.TodoServices;

@Controller
public class TodoController {

	@Autowired
	TodoServices todoServices;

	@RequestMapping(value = "/list-todo", method = RequestMethod.GET)
	public String shwoTodos(ModelMap model) {
		model.addAttribute("todos", todoServices.retrieveTodos("GOPAL"));
		return "todo";
	}

	@RequestMapping(value = "/add-todo", method = RequestMethod.GET)
	public String addTodo(Model model) {
		model.addAttribute("todo", new Todo());
		return "addtodo";
	}

	@RequestMapping(value = "/add-todo", method = RequestMethod.POST)
	public String addTodo(ModelMap model, @Valid @ModelAttribute Todo todo) {
		todoServices.addTodo(todo);
		model.addAttribute("todos", todoServices.retrieveAllTodo());
		return "todo";
	}

	@RequestMapping(value = "/deletetodo", method = RequestMethod.POST)
	public String deleteTodo(ModelMap model, @RequestParam Integer id) {
		todoServices.deleteTodo(id);
		model.addAttribute("todos", todoServices.retrieveAllTodo());
		return "todo";
	}

}
