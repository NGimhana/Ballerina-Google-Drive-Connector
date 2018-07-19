import ballerina/test;

endpoint Client gdriveClient {
    accessToken: "ya29.Glv9BfaSVi19lByl5Mz32x1Rw8Xz-JCfENcCeG-RBjxmlPJ19xEW6uIthFWQRz5Xmv-SQikcdY8Y14RD2uJDDHwsjjLeBn_7r51QacRGFAWfkacCirN2_9Dr1nMz",
    clientId: "974848880643-3870gclab5i1vq2j0lhhhf6jcj6fag99.apps.googleusercontent.com",
    clientSecret: "3m2qS-VIe4N_29LM9H4bFLQo",
    refreshToken: "1/jHCE--XtrncRvtIVXloWyQcPmEUp04OS7xGMVMe6LzA"

};

@test:Config
function testAccountDetails() {
    gdriveClient->fileList();
}