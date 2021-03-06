app.constant('AUTH_EVENTS', {
  notAuthenticated: 'auth-not-authenticated',
  notAuthorized: 'auth-not-authorized'
});

app.constant('SERVER_EVENTS', {
  not_found: 'not_found'
});

app.constant('USER_ROLES', {
  seller: 'admin_role',
  simple: 'public_role'
});

app.constant('LOCAL_CURRENT_USER_ID', 'currentUserId');

app.constant('API_URL', 'http://192.168.1.68:3000');
