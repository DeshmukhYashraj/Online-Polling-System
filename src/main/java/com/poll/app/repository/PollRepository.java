package com.poll.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poll.app.model.Poll;

public interface PollRepository extends JpaRepository<Poll, Long> {
	
}
