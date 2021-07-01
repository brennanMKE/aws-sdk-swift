// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartCelebrityRecognitionOutputResponse: Equatable {
    /// <p>The identifier for the celebrity recognition analysis job. Use <code>JobId</code> to identify the job in
    ///       a subsequent call to <code>GetCelebrityRecognition</code>.</p>
    public let jobId: String?

    public init (
        jobId: String? = nil
    )
    {
        self.jobId = jobId
    }
}

extension StartCelebrityRecognitionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartCelebrityRecognitionOutputResponse(jobId: \(String(describing: jobId)))"}
}