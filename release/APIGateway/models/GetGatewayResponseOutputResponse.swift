// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A gateway response of a given response type and status code, with optional response parameters and mapping templates.</p>
///         <div class="remarks">
///             For more information about valid gateway response types, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/supported-gateway-response-types.html">Gateway Response Types Supported by API Gateway</a>
///             <div class="example">
///     <h4>Example: Get a Gateway Response of a given response type</h4>
///     <h5>Request</h5>
///     <p>This example shows how to get a gateway response of the <code>MISSING_AUTHENTICATION_TOKEN</code> type.</p>
///     <pre><code>GET /restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN HTTP/1.1
/// Host: beta-apigateway.us-east-1.amazonaws.com
/// Content-Type: application/json
/// X-Amz-Date: 20170503T202516Z
/// Authorization: AWS4-HMAC-SHA256 Credential={access-key-id}/20170503/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=1b52460e3159c1a26cff29093855d50ea141c1c5b937528fecaf60f51129697a
/// Cache-Control: no-cache
/// Postman-Token: 3b2a1ce9-c848-2e26-2e2f-9c2caefbed45
/// </code></pre>
///     <p>The response type is specified as a URL path.</p>
///     <h5>Response</h5>
///     <p>The successful operation returns the <code>200 OK</code> status code and a payload similar to the following:</p>
///     <pre><code>{
///   "_links": {
///     "curies": {
///       "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-gatewayresponse-{rel}.html",
///       "name": "gatewayresponse",
///       "templated": true
///     },
///     "self": {
///       "href": "/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN"
///     },
///     "gatewayresponse:delete": {
///       "href": "/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN"
///     },
///     "gatewayresponse:put": {
///       "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}",
///       "templated": true
///     },
///     "gatewayresponse:update": {
///       "href": "/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN"
///     }
///   },
///   "defaultResponse": false,
///   "responseParameters": {
///     "gatewayresponse.header.x-request-path": "method.request.path.petId",
///     "gatewayresponse.header.Access-Control-Allow-Origin": "'a.b.c'",
///     "gatewayresponse.header.x-request-query": "method.request.querystring.q",
///     "gatewayresponse.header.x-request-header": "method.request.header.Accept"
///   },
///   "responseTemplates": {
///     "application/json": "{\n     \"message\": $context.error.messageString,\n     \"type\":  \"$context.error.responseType\",\n     \"stage\":  \"$context.stage\",\n     \"resourcePath\":  \"$context.resourcePath\",\n     \"stageVariables.a\":  \"$stageVariables.a\",\n     \"statusCode\": \"'404'\"\n}"
///   },
///   "responseType": "MISSING_AUTHENTICATION_TOKEN",
///   "statusCode": "404"
/// }</code></pre>
///     <p></p>
///   </div>
///         </div>
///         <div class="seeAlso">
///           <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/customize-gateway-responses.html">Customize Gateway Responses</a>
///         </div>
public struct GetGatewayResponseOutputResponse: Equatable {
    /// <p>A Boolean flag to indicate whether this <a>GatewayResponse</a> is the default gateway response (<code>true</code>) or not (<code>false</code>). A default gateway response is one generated by API Gateway without any customization by an API developer. </p>
    public let defaultResponse: Bool
    /// <p>Response parameters (paths, query strings and headers) of the <a>GatewayResponse</a> as a string-to-string map of key-value  pairs.</p>
    public let responseParameters: [String:String]?
    /// <p>Response templates of the <a>GatewayResponse</a> as a string-to-string map of key-value pairs.</p>
    public let responseTemplates: [String:String]?
    /// <p>The response type of the associated <a>GatewayResponse</a>. Valid values are <ul><li>ACCESS_DENIED</li><li>API_CONFIGURATION_ERROR</li><li>AUTHORIZER_FAILURE</li><li> AUTHORIZER_CONFIGURATION_ERROR</li><li>BAD_REQUEST_PARAMETERS</li><li>BAD_REQUEST_BODY</li><li>DEFAULT_4XX</li><li>DEFAULT_5XX</li><li>EXPIRED_TOKEN</li><li>INVALID_SIGNATURE</li><li>INTEGRATION_FAILURE</li><li>INTEGRATION_TIMEOUT</li><li>INVALID_API_KEY</li><li>MISSING_AUTHENTICATION_TOKEN</li><li> QUOTA_EXCEEDED</li><li>REQUEST_TOO_LARGE</li><li>RESOURCE_NOT_FOUND</li><li>THROTTLED</li><li>UNAUTHORIZED</li><li>UNSUPPORTED_MEDIA_TYPE</li></ul> </p>
    public let responseType: GatewayResponseType?
    /// <p>The HTTP status code for this <a>GatewayResponse</a>.</p>
    public let statusCode: String?

    public init (
        defaultResponse: Bool = false,
        responseParameters: [String:String]? = nil,
        responseTemplates: [String:String]? = nil,
        responseType: GatewayResponseType? = nil,
        statusCode: String? = nil
    )
    {
        self.defaultResponse = defaultResponse
        self.responseParameters = responseParameters
        self.responseTemplates = responseTemplates
        self.responseType = responseType
        self.statusCode = statusCode
    }
}

extension GetGatewayResponseOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetGatewayResponseOutputResponse(defaultResponse: \(String(describing: defaultResponse)), responseParameters: \(String(describing: responseParameters)), responseTemplates: \(String(describing: responseTemplates)), responseType: \(String(describing: responseType)), statusCode: \(String(describing: statusCode)))"}
}