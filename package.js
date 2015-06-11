Package.describe({
  name: 'vilango:detect-app-environment',
  summary: 'Detect and expose the app environment we are running in right now',
  version: '1.0.0',
  git: 'https://github.com/Vilango/detect-app-environment'
});

Package.onUse(function(api) {
  api.versionsFrom('1.0');
  api.use(['coffeescript']);
  api.use('standard-app-packages');
  api.addFiles('detect-app-environment.coffee');
  api.addFiles('detect-app-helper.coffee');
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('detect-app-environment');
  api.addFiles('detect-app-environment-tests.coffee');
});
