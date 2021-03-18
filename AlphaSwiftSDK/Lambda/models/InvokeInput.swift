// Code generated by smithy-swift-codegen. DO NOT EDIT!

import Foundation

public struct InvokeInput: Equatable {
    /**
     <p>Up to 3583 bytes of base64-encoded data about the invoking client to pass to the function in the context
           object.</p>
     */
    public let clientContext: String?
    /**
     <p>The name of the Lambda function, version, or alias.</p>
              <p class="title">
                 <b>Name formats</b>
              </p>
              <ul>
                 <li>
                    <p>
                       <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
                 </li>
                 <li>
                    <p>
                       <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
                 </li>
                 <li>
                    <p>
                       <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
                 </li>
              </ul>
              <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
           If you specify only the function name, it is limited to 64 characters in length.</p>
     */
    public let functionName: String?
    /**
     <p>Choose from the following options.</p>
              <ul>
                 <li>
                    <p>
                       <code>RequestResponse</code> (default) - Invoke the function synchronously. Keep the connection open until
               the function returns a response or times out. The API response includes the function response and additional
               data.</p>
                 </li>
                 <li>
                    <p>
                       <code>Event</code> - Invoke the function asynchronously. Send events that fail multiple times to the
               function's dead-letter queue (if it's configured). The API response only includes a status code.</p>
                 </li>
                 <li>
                    <p>
                       <code>DryRun</code> - Validate parameter values and verify that the user or role has permission to invoke
               the function.</p>
                 </li>
              </ul>
     */
    public let invocationType: InvocationType?
    /// <p>Set to <code>Tail</code> to include the execution log in the response.</p>
    public let logType: LogType?
    /// <p>The JSON that you want to provide to your Lambda function as input.</p>
    public let payload: Data?
    /// <p>Specify a version or alias to invoke a published version of the function.</p>
    public let qualifier: String?

    public init (
        clientContext: String? = nil,
        functionName: String? = nil,
        invocationType: InvocationType? = nil,
        logType: LogType? = nil,
        payload: Data? = nil,
        qualifier: String? = nil
    )
    {
        self.clientContext = clientContext
        self.functionName = functionName
        self.invocationType = invocationType
        self.logType = logType
        self.payload = payload
        self.qualifier = qualifier
    }
}
