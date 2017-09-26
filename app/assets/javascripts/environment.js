/* eslint-env node */

module.exports = function(environment) {
  var ENV = {
    modulePrefix: 'agribiz',
    environment: environment,
    rootURL: '/',
    locationType: 'auto',
    EmberENV: {
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. 'with-controller': true
      },
      EXTEND_PROTOTYPES: {
        // Prevent Ember Data from overriding Date.parse.
        Date: false
      }
    },
    firebase : {
    //   apiKey: "AIzaSyCbOIPjUhtRV9ejbpt2rRQ-GWvxvlPAhso",
    // authDomain: "agribiz101-ad354.firebaseapp.com",
    // databaseURL: "https://agribiz101-ad354.firebaseio.com",
    // projectId: "agribiz101-ad354",
    // storageBucket: "agribiz101-ad354.appspot.com",
    // messagingSenderId: "100886671760"
    apiKey: "AIzaSyAre7HIcKGGvYV0NWm7NdoDTx3FFJfSzNg",
      authDomain: "agriculture-25528.firebaseapp.com",
      databaseURL: "https://agriculture-25528.firebaseio.com",
      projectId: "agriculture-25528",
      storageBucket: "agriculture-25528.appspot.com",
      messagingSenderId: "984174692585"
  },

    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
    }
  };

  if (environment === 'development') {
    // ENV.APP.LOG_RESOLVER = true;
    // ENV.APP.LOG_ACTIVE_GENERATION = true;
    // ENV.APP.LOG_TRANSITIONS = true;
    // ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    // ENV.APP.LOG_VIEW_LOOKUPS = true;
  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';
  }

  if (environment === 'production') {

  }

  return ENV;
};
