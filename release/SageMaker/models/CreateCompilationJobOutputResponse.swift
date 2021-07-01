// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateCompilationJobOutputResponse: Equatable {
    /// <p>If the action is successful, the service sends back an HTTP 200 response. Amazon SageMaker returns
    ///             the following data in JSON format:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                   <code>CompilationJobArn</code>: The Amazon Resource Name (ARN) of the compiled
    ///                     job.</p>
    ///             </li>
    ///          </ul>
    public let compilationJobArn: String?

    public init (
        compilationJobArn: String? = nil
    )
    {
        self.compilationJobArn = compilationJobArn
    }
}

extension CreateCompilationJobOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateCompilationJobOutputResponse(compilationJobArn: \(String(describing: compilationJobArn)))"}
}