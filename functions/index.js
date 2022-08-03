// eslint-disable-next-line no-unused-vars

const functions = require("firebase-functions");
const firebaseAdmin = require("firebase-admin");

firebaseAdmin.initializeApp();

const firestore = firebaseAdmin.firestore();

// // Create and Deploy Your First Cloud Functions
// // https://firebase.google.com/docs/functions/write-firebase-functions
//
// exports.helloWorld = functions.https.onRequest((request, response) => {
//   functions.logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });

// exports.createUserDataAndUpdateUsername = functions.auth
//   .user()
//   .onCreate((userRecord, _) => {
//     // want to create an entry for the user
//     // in the database
//     const { displayName } = userRecord;
//     return firestore.doc(`users/${displayName}`).set({
//       username: displayName,
//       signedup: true,
//     });
//   });
