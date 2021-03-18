// Code generated by smithy-swift-codegen. DO NOT EDIT!

import Foundation

@available(*, deprecated)
public struct InvokeAsyncInput: Equatable {
    /**
     <p>The name of the Lambda function.</p>
              <p class="title">
                 <b>Name formats</b>
              </p>
              <ul>
                 <li>
                    <p>
                       <b>Function name</b> - <code>my-function</code>.</p>
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
              <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
           characters in length.</p>
     */
    public let functionName: String?
    /// <p>The JSON that you want to provide to your Lambda function as input.</p>
    public let invokeArgs: Data?

    public init (
        functionName: String? = nil,
        invokeArgs: Data? = nil
    )
    {
        self.functionName = functionName
        self.invokeArgs = invokeArgs
    }
}
