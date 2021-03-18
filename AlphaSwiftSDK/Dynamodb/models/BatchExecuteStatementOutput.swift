// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct BatchExecuteStatementOutput: Equatable {
    /**
     <p>
     The response to each PartiQL statement in the batch.
     </p>
     */
    public let responses: [BatchStatementResponse]?

    public init (
        responses: [BatchStatementResponse]? = nil
    )
    {
        self.responses = responses
    }
}
