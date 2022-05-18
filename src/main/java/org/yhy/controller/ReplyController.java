package org.yhy.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.yhy.model.ReplyDTO;
import org.yhy.service.ReplyService;

@RestController
public class ReplyController {
	@Autowired
	ReplyService rservice;
	
	@RequestMapping(value="/reply/new", method=RequestMethod.POST, consumes="application/json", produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> add(@RequestBody ReplyDTO rdto){
		int result = rservice.add(rdto);
		
		return result == 1? new ResponseEntity<>("success", HttpStatus.OK)
							:
							new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	@RequestMapping(value="/reply/list/{bno}", method=RequestMethod.GET, produces= {MediaType.APPLICATION_JSON_UTF8_VALUE,
																						MediaType.APPLICATION_XML_VALUE})
	public ResponseEntity<ArrayList<ReplyDTO>> list(@PathVariable("bno")int bno){
		System.out.println(bno);
		return new ResponseEntity<>(rservice.list(bno),HttpStatus.OK);
	
	}
	@RequestMapping(value="/reply/detail/{rno}", method=RequestMethod.GET, produces= {MediaType.APPLICATION_JSON_UTF8_VALUE,
																					MediaType.APPLICATION_XML_VALUE})
	public ResponseEntity<ReplyDTO> detail(@PathVariable int rno){
		return new ResponseEntity<>(rservice.detail(rno), HttpStatus.OK);
	}
	@RequestMapping(value="/reply/modify", method=RequestMethod.PUT, consumes="application/json")
	public ResponseEntity<String> modify(@RequestBody ReplyDTO rdto) {
		int result = rservice.modify(rdto);
		
		return result == 1? new ResponseEntity<>("success", HttpStatus.OK)
							:
							new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	@RequestMapping(value="/reply/remove/{rno}", method=RequestMethod.DELETE, produces= {MediaType.TEXT_PLAIN_VALUE})
	
	public ResponseEntity<String> remove(@PathVariable int rno){
		int result = rservice.remove(rno);
		return result == 1? new ResponseEntity<>("success", HttpStatus.OK)
							:
							new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
}
