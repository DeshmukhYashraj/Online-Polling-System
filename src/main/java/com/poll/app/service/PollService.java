package com.poll.app.service;

import java.util.List;

import com.poll.app.model.Poll;

public interface PollService {
	List<Poll> getAllPolls();

	Poll getPollById(Long id);

	void createPoll(Poll poll);
}
