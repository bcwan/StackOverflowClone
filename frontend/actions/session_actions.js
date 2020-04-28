import * as UserAPIUtil from '../util/session_api_util';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const LOGOUT_CURRENT_USER = 'LOGOUT_CURRENT_USER';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

// action creators

const receiveCurrentUser = (currentUser) => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});

const logoutCurrentUser = () => ({
  type: LOGOUT_CURRENT_USER,
});

const receiveErrors = (errors) => ({
  type: RECEIVE_ERRORS,
  errors
});

// thunk action
export const login = (user) => (dispatch) => (
  UserAPIUtil.login(user)
    .then(currentUser => dispatch(receiveCurrentUser(currentUser)))
);

export const logout = () => (dispatch) => (
  UserAPIUtil.logout()
    .then(() => dispatch(logoutCurrentUser()))
);

export const signup = (user) => (dispatch) => (
  UserAPIUtil.signup(user)
    .then(newUser => dispatch(receiveCurrentUser(newUser)))
);

