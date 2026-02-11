package com.demo.service;

import java.util.List;

import com.demo.model.Feedback;

public interface FeedbackService {

	void savefeedback(Feedback feedback);
	
	List<Feedback> getAll();
	Long countFeedback();
}
