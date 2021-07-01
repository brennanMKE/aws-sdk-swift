// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateResolverQueryLogConfigInput: Equatable {
    /// <p>A unique string that identifies the request and that allows failed requests to be retried
    /// 			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
    /// 			any unique string, for example, a date/time stamp. </p>
    public var creatorRequestId: String?
    /// <p>The ARN of the resource that you want Resolver to send query logs. You can send query logs to an S3 bucket, a CloudWatch Logs log group,
    /// 			or a Kinesis Data Firehose delivery stream. Examples of valid values include the following:</p>
    /// 		
    /// 		       <ul>
    ///             <li>
    /// 				           <p>
    ///                   <b>S3 bucket</b>: </p>
    /// 				           <p>
    ///                   <code>arn:aws:s3:::examplebucket</code>
    ///                </p>
    /// 				           <p>You can optionally append a file prefix to the end of the ARN.</p>
    /// 				           <p>
    ///                   <code>arn:aws:s3:::examplebucket/development/</code>
    ///                </p>
    /// 			         </li>
    ///             <li>
    /// 				           <p>
    ///                   <b>CloudWatch Logs log group</b>: </p>
    /// 				           <p>
    ///                   <code>arn:aws:logs:us-west-1:123456789012:log-group:/mystack-testgroup-12ABC1AB12A1:*</code>
    ///                </p>
    /// 			         </li>
    ///             <li>
    /// 				           <p>
    ///                   <b>Kinesis Data Firehose delivery stream</b>:</p>
    /// 				           <p>
    ///                   <code>arn:aws:kinesis:us-east-2:0123456789:stream/my_stream_name</code>
    ///                </p>
    /// 			         </li>
    ///          </ul>
    public let destinationArn: String?
    /// <p>The name that you want to give the query logging configuration.</p>
    public let name: String?
    /// <p>A list of the tag keys and values that you want to associate with the query logging configuration.</p>
    public let tags: [Tag]?

    public init (
        creatorRequestId: String? = nil,
        destinationArn: String? = nil,
        name: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.creatorRequestId = creatorRequestId
        self.destinationArn = destinationArn
        self.name = name
        self.tags = tags
    }
}

extension CreateResolverQueryLogConfigInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateResolverQueryLogConfigInput(creatorRequestId: \(String(describing: creatorRequestId)), destinationArn: \(String(describing: destinationArn)), name: \(String(describing: name)), tags: \(String(describing: tags)))"}
}