// Code generated by smithy-swift-codegen. DO NOT EDIT!



/**
 <p>The results of an operation to update or read environment variables. If the operation is successful, the
       response contains the environment variables. If it failed, the response contains details about the error.</p>
 */
public struct EnvironmentResponse: Equatable {
    /// <p>Error messages for environment variables that couldn't be applied.</p>
    public let error: EnvironmentError?
    /// <p>Environment variable key-value pairs.</p>
    public let variables: [String:String]?

    public init (
        error: EnvironmentError? = nil,
        variables: [String:String]? = nil
    )
    {
        self.error = error
        self.variables = variables
    }
}
