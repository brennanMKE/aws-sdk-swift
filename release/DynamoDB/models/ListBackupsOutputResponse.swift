// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListBackupsOutputResponse: Equatable {
    /// <p>List of <code>BackupSummary</code> objects.</p>
    public let backupSummaries: [BackupSummary]?
    /// <p>
    ///         The ARN of the backup last evaluated when the current page of results was returned,
    ///         inclusive of the current page of results. This value may be specified as the
    ///         <code>ExclusiveStartBackupArn</code> of a new <code>ListBackups</code> operation in order to fetch the next page of results.
    ///      </p>
    ///          <p>
    ///         If <code>LastEvaluatedBackupArn</code> is empty, then the last page of results has been processed and there are no
    ///         more results to be retrieved.
    ///      </p>
    ///          <p> If <code>LastEvaluatedBackupArn</code> is not empty, this may or may not indicate that
    ///             there is more data to be returned. All results are guaranteed to have been returned if
    ///             and only if no value for <code>LastEvaluatedBackupArn</code> is returned. </p>
    public let lastEvaluatedBackupArn: String?

    public init (
        backupSummaries: [BackupSummary]? = nil,
        lastEvaluatedBackupArn: String? = nil
    )
    {
        self.backupSummaries = backupSummaries
        self.lastEvaluatedBackupArn = lastEvaluatedBackupArn
    }
}

extension ListBackupsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListBackupsOutputResponse(backupSummaries: \(String(describing: backupSummaries)), lastEvaluatedBackupArn: \(String(describing: lastEvaluatedBackupArn)))"}
}