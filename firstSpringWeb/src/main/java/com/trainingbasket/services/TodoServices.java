package com.trainingbasket.services;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;

import com.trainingbasket.model.Todo;

@Service
public class TodoServices {

	private static List<Todo> todos = new ArrayList<>();
	private static int todoCount = 3;
	static {
		todos.add(new Todo(1, "GOPAL", "Learning Springframework", LocalDate.now(), false));
		todos.add(new Todo(2, "GOPAL", "Learning Springframework", LocalDate.now(), false));
	}

	public List<Todo> retrieveTodos(String user) {
		List<Todo> filteredTodo = new ArrayList<>();
		for (Todo todo : todos) {
			if (todo.getUser().equals(user)) {
				filteredTodo.add(todo);
			}
		}
		return filteredTodo;
	}

	public void addTodo(String user, String desc, LocalDate targetDate, Boolean isDone) {
		todos.add(new Todo(++todoCount, user, desc, targetDate, isDone));
	}

	public void deleteTodo(Integer id) {
		Iterator<Todo> iterator = todos.iterator();
		while (iterator.hasNext()) {
			Todo todo = (Todo) iterator.next();
			if (todo.getId() == id) {
				iterator.remove();
			}
		}
	}

	public List<Todo> retrieveAllTodo() {
		return todos;
	}
}
