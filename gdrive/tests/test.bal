import ballerina/test;

endpoint Client gdriveClient {
    accessToken: "your_access_token",
    clientId: "your_client_id",
    clientSecret: "your_client_secret",
    refreshToken: "your_refresh_token"

};

@test:Config
function testAccountDetails() {
    gdriveClient->fileList();
}