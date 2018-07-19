import ballerina/http;
import ballerina/io;

public type GoogleDriveConnector object {
    public http:Client client;
    function fileList();
};


function GoogleDriveConnector::fileList() {
    endpoint http:Client httpClient = self.client;
    string requestPath = "/files" ;
    var response = httpClient->get(requestPath);
    match response {
        http:Response httpResponse => {
            var jsonPayload = httpResponse.getJsonPayload();
            match jsonPayload {
                json payload => io:println(jsonPayload);
                error err=> io:println(err);
            }
        }
        error  err=>io:println(err);
    }

}