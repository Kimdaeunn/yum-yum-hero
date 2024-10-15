const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.createCustomToken = functions
  .region("asia-northeast3")
  .https.onCall(async (data, context) => {
    const user = data.user;
    // Write your code below!
    try {
      await admin.auth().createUser(user);
      functions.logger.log(`# createUser success`, user.uid);
    } catch (error) {
      functions.logger.log(`# createUser failed`, user.uid);
      await admin.auth().updateUser(user.uid, user);
      functions.logger.log(`# updateUser success`, user.uid);
    }

    try {
      const token = await admin.auth().createCustomToken(user.uid);
      functions.logger.log(`# token`, token);
      return { token };
    } catch (error) {
      functions.logger.error(`Error creating custom token:`, error);
      throw new functions.https.HttpsError(
        "internal",
        "Failed to create custom token",
        error,
      );
    }

    // Write your code above!
  });
