package com.poll.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.poll.app.model.Poll;
import com.poll.app.service.PollService;

@Controller
public class PollController {

    @Autowired
    private PollService pollService;
    
    @GetMapping("/")
    public String home() {
        return "index"; // Main page with 2 buttons
    }

//    @GetMapping("/")
//    public String home(Model model) {
//        model.addAttribute("polls", pollService.getAllPolls());
//        return "polls";
//    }
    
    @GetMapping("/polls")
    public String showPolls(Model model) {
        model.addAttribute("polls", pollService.getAllPolls());
        return "polls"; // Maps to polls.jsp
    }

    @GetMapping("/create")
    public String createPollForm(Model model) {
        model.addAttribute("poll", new Poll());
        return "create-poll";
    }

    @PostMapping("/create")
    public String createPoll(@ModelAttribute Poll poll) {
        pollService.createPoll(poll);
        return "redirect:/";
    }

    @GetMapping("/poll/{id}")
    public String viewPoll(@PathVariable Long id, Model model) {
        Poll poll = pollService.getPollById(id);
        model.addAttribute("poll", poll);
        return "poll-details";
    }
}