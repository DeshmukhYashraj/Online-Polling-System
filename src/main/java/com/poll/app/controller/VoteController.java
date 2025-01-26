package com.poll.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poll.app.model.Vote;
import com.poll.app.service.VoteService;

@Controller
public class VoteController {

    @Autowired
    private VoteService voteService;

    @PostMapping("/vote")
    public String submitVote(@RequestParam Long pollId, @RequestParam String selectedOption) {
        Vote vote = new Vote();
        vote.setPollId(pollId);
        vote.setSelectedOption(selectedOption);
        voteService.submitVote(vote);
        return "vote-confirmation";
    }
}