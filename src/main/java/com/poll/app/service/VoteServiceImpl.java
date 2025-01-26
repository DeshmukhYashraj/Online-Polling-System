package com.poll.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poll.app.model.Vote;
import com.poll.app.repository.VoteRepository;

@Service
public class VoteServiceImpl implements VoteService {

    @Autowired
    private VoteRepository voteRepository;

    @Override
    public void submitVote(Vote vote) {
        voteRepository.save(vote);
    }
}
