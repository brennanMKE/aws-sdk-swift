// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListAutoMLJobsInput: Equatable {
    /// <p>Request a list of jobs, using a filter for time.</p>
    public let creationTimeAfter: Date?
    /// <p>Request a list of jobs, using a filter for time.</p>
    public let creationTimeBefore: Date?
    /// <p>Request a list of jobs, using a filter for time.</p>
    public let lastModifiedTimeAfter: Date?
    /// <p>Request a list of jobs, using a filter for time.</p>
    public let lastModifiedTimeBefore: Date?
    /// <p>Request a list of jobs up to a specified limit.</p>
    public let maxResults: Int
    /// <p>Request a list of jobs, using a search filter for name.</p>
    public let nameContains: String?
    /// <p>If the previous response was truncated, you receive this token. Use it in your next
    ///          request to receive the next set of results.</p>
    public let nextToken: String?
    /// <p>The parameter by which to sort the results. The default is <code>Name</code>.</p>
    public let sortBy: AutoMLSortBy?
    /// <p>The sort order for the results. The default is <code>Descending</code>.</p>
    public let sortOrder: AutoMLSortOrder?
    /// <p>Request a list of jobs, using a filter for status.</p>
    public let statusEquals: AutoMLJobStatus?

    public init (
        creationTimeAfter: Date? = nil,
        creationTimeBefore: Date? = nil,
        lastModifiedTimeAfter: Date? = nil,
        lastModifiedTimeBefore: Date? = nil,
        maxResults: Int = 0,
        nameContains: String? = nil,
        nextToken: String? = nil,
        sortBy: AutoMLSortBy? = nil,
        sortOrder: AutoMLSortOrder? = nil,
        statusEquals: AutoMLJobStatus? = nil
    )
    {
        self.creationTimeAfter = creationTimeAfter
        self.creationTimeBefore = creationTimeBefore
        self.lastModifiedTimeAfter = lastModifiedTimeAfter
        self.lastModifiedTimeBefore = lastModifiedTimeBefore
        self.maxResults = maxResults
        self.nameContains = nameContains
        self.nextToken = nextToken
        self.sortBy = sortBy
        self.sortOrder = sortOrder
        self.statusEquals = statusEquals
    }
}

extension ListAutoMLJobsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListAutoMLJobsInput(creationTimeAfter: \(String(describing: creationTimeAfter)), creationTimeBefore: \(String(describing: creationTimeBefore)), lastModifiedTimeAfter: \(String(describing: lastModifiedTimeAfter)), lastModifiedTimeBefore: \(String(describing: lastModifiedTimeBefore)), maxResults: \(String(describing: maxResults)), nameContains: \(String(describing: nameContains)), nextToken: \(String(describing: nextToken)), sortBy: \(String(describing: sortBy)), sortOrder: \(String(describing: sortOrder)), statusEquals: \(String(describing: statusEquals)))"}
}