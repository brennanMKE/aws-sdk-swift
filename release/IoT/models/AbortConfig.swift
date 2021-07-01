// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The criteria that determine when and how a job abort takes place.</p>
public struct AbortConfig: Equatable {
    /// <p>The list of criteria that determine when and how to abort the job.</p>
    public let criteriaList: [AbortCriteria]?

    public init (
        criteriaList: [AbortCriteria]? = nil
    )
    {
        self.criteriaList = criteriaList
    }
}

extension AbortConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AbortConfig(criteriaList: \(String(describing: criteriaList)))"}
}