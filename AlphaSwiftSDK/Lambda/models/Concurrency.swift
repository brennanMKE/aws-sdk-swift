// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct Concurrency: Equatable {
    /// <p>The number of concurrent executions that are reserved for this function. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html">Managing Concurrency</a>.</p>
    public let reservedConcurrentExecutions: Int?

    public init (
        reservedConcurrentExecutions: Int? = nil
    )
    {
        self.reservedConcurrentExecutions = reservedConcurrentExecutions
    }
}
