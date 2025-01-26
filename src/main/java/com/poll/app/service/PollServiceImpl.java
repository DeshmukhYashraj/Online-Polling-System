package com.poll.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poll.app.model.Poll;
import com.poll.app.repository.PollRepository;

@Service
public class PollServiceImpl implements PollService {

    @Autowired
    private PollRepository pollRepository;

    @Override
    public List<Poll> getAllPolls() {
        return pollRepository.findAll();
    }

    @Override
    public Poll getPollById(Long id) {
        return pollRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid poll Id: " + id));
    }

    @Override
    public void createPoll(Poll poll) {
        pollRepository.save(poll);
    }
}
