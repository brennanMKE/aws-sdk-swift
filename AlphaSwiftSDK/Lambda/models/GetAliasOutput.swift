// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides configuration information about a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">alias</a>.</p>
public struct GetAliasOutput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the alias.</p>
    public let aliasArn: String?
    /// <p>A description of the alias.</p>
    public let description: String?
    /// <p>The function version that the alias invokes.</p>
    public let functionVersion: String?
    /// <p>The name of the alias.</p>
    public let name: String?
    /// <p>A unique identifier that changes when you update the alias.</p>
    public let revisionId: String?
    /**
     <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html">routing
             configuration</a> of the alias.</p>
     */
    public let routingConfig: AliasRoutingConfiguration?

    public init (
        aliasArn: String? = nil,
        description: String? = nil,
        functionVersion: String? = nil,
        name: String? = nil,
        revisionId: String? = nil,
        routingConfig: AliasRoutingConfiguration? = nil
    )
    {
        self.aliasArn = aliasArn
        self.description = description
        self.functionVersion = functionVersion
        self.name = name
        self.revisionId = revisionId
        self.routingConfig = routingConfig
    }
}
