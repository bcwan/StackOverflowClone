import {
  RECEIVE_ALL_QUESTIONS,
  REMOVE_QUESTION,
  RECEIVE_QUESTION
} from '../actions/questions_actions';

import {
  UPDATE_UPVOTE
} from '../actions/upvote_actions';

import {
  UPDATE_DOWNVOTE
} from '../actions/downvote_actions';

const QuestionReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  let nextState = Object.assign({}, oldState);
  switch (action.type) {
    case RECEIVE_QUESTION:
      nextState[action.question.id] = action.question;
      return nextState;
    case REMOVE_QUESTION:
      delete nextState[action.questionId];
      return nextState;
    case RECEIVE_ALL_QUESTIONS:
      return action.questions;
    case UPDATE_UPVOTE:
      debugger;
      nextState[action.question.id].downvotes = action.question.downvotes;
      nextState[action.question.id].upvotes = action.question.upvotes;
      debugger;
      return nextState;
    case UPDATE_DOWNVOTE:
      debugger;
      nextState[action.question.id].downvotes = action.question.downvotes;
      nextState[action.question.id].upvotes = action.question.upvotes;
      debugger;
    default:
      return oldState;
  }
}

export default QuestionReducer;