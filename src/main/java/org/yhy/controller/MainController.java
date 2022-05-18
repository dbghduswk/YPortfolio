package org.yhy.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
//	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	@RequestMapping(value="/main", method = RequestMethod.GET)
	public String main() {
		return "main";
	}
	@RequestMapping(value="/main", method = RequestMethod.POST)
	public String login() {
		return "member/join";
	}
}

