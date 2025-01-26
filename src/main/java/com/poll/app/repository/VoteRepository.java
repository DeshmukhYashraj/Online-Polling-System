package com.poll.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poll.app.model.Vote;

public interface VoteRepository extends JpaRepository<Vote, Long> {
}