import ballerina/http;
import ballerina/config;

public type Client object {

    public GoogleDriveConfiguration gDriveConfig;
    public GoogleDriveConnector gDriveConnector = new;

    public function init(GoogleDriveConfiguration config);

    public function getCallerActions() returns GoogleDriveConnector;
};

public type GoogleDriveConfiguration record {
    string accessToken;
    string clientId;
    string clientSecret;
    string refreshToken;
    http:ClientEndpointConfig clientConfig;
};

function Client::init(GoogleDriveConfiguration config) {

    //BASE_URL
    config.clientConfig.url = "https://www.googleapis.com/drive/v3";

    http:AuthConfig authConfig = { scheme:http:OAUTH2, accessToken:config.accessToken, clientId:config.clientId , clientSecret:config.clientSecret, refreshToken:config.refreshToken};
    config.clientConfig.auth = authConfig;
    self.gDriveConnector.client.init(config.clientConfig);
}

function Client::getCallerActions() returns GoogleDriveConnector {
    return self.gDriveConnector;
}