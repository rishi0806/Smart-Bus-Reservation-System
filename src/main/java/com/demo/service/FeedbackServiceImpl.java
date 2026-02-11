package com.demo.service;

import com.demo.dao.FeedbackRepo;
import com.demo.model.Feedback;
import jakarta.transaction.Transactional;
import java.util.List;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@Transactional
@AllArgsConstructor
public class FeedbackServiceImpl implements FeedbackService {

  private final FeedbackRepo feedbackRepo;

  @Override
  public void savefeedback(Feedback feedback) {
    feedbackRepo.save(feedback);
  }

  @Override
  public List<Feedback> getAll() {
    return feedbackRepo.findAll();
  }

  @Override
  public Long countFeedback() {
    return feedbackRepo.count();
  }
}
