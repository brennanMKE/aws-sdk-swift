// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Provides information that describes a replication task created by the
///             <code>CreateReplicationTask</code> operation.</p>
public struct ReplicationTask: Equatable {
    /// <p>Indicates when you want a change data capture (CDC) operation to start. Use either
    ///          <code>CdcStartPosition</code> or <code>CdcStartTime</code> to specify when you want the CDC operation to start.
    ///          Specifying both values results in an error.</p>
    ///          <p>The value can be in date, checkpoint, or LSN/SCN format.</p>
    ///          <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
    ///          <p>Checkpoint Example: --cdc-start-position
    ///          "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"</p>
    ///          <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
    public let cdcStartPosition: String?
    /// <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    ///          either server time or commit time.</p>
    ///          <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
    ///          <p>Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “</p>
    public let cdcStopPosition: String?
    /// <p>The last error (failure) message generated for the replication task.</p>
    public let lastFailureMessage: String?
    /// <p>The type of migration.</p>
    public let migrationType: MigrationTypeValue?
    /// <p>Indicates the last checkpoint that occurred during a change data capture (CDC)
    ///          operation. You can provide this value to the <code>CdcStartPosition</code> parameter to
    ///          start a CDC operation that begins at that checkpoint.</p>
    public let recoveryCheckpoint: String?
    /// <p>The ARN of the replication instance.</p>
    public let replicationInstanceArn: String?
    /// <p>The Amazon Resource Name (ARN) of the replication task.</p>
    public let replicationTaskArn: String?
    /// <p>The date the replication task was created.</p>
    public let replicationTaskCreationDate: Date?
    /// <p>The user-assigned replication task identifier or name.</p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Must contain 1-255 alphanumeric characters or hyphens.</p>
    ///             </li>
    ///             <li>
    ///                <p>First character must be a letter.</p>
    ///             </li>
    ///             <li>
    ///                <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    ///             </li>
    ///          </ul>
    public let replicationTaskIdentifier: String?
    /// <p>The settings for the replication task.</p>
    public let replicationTaskSettings: String?
    /// <p>The date the replication task is scheduled to start.</p>
    public let replicationTaskStartDate: Date?
    /// <p>The statistics for the task, including elapsed time, tables loaded, and table
    ///          errors.</p>
    public let replicationTaskStats: ReplicationTaskStats?
    /// <p>The Amazon Resource Name (ARN) that uniquely identifies the endpoint.</p>
    public let sourceEndpointArn: String?
    /// <p>The status of the replication task. This response parameter can return one of
    ///          the following values:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>"moving"</code> – The task is being moved in response to running the
    ///                   <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html">
    ///                      <code>MoveReplicationTask</code>
    ///                   </a> operation.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>"creating"</code> – The task is being created in response to running
    ///                the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateReplicationTask.html">
    ///                      <code>CreateReplicationTask</code>
    ///                   </a> operation.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>"deleting"</code> – The task is being deleted in response to running
    ///                the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_DeleteReplicationTask.html">
    ///                      <code>DeleteReplicationTask</code>
    ///                   </a> operation.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>"failed"</code> – The task failed to successfully complete the database
    ///                migration in response to running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html">
    ///                      <code>StartReplicationTask</code>
    ///                   </a> operation.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>"failed-move"</code> – The task failed to move in response to running
    ///                the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html">
    ///                      <code>MoveReplicationTask</code>
    ///                   </a> operation.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>"modifying"</code> – The task definition is being modified in response
    ///                to running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_ModifyReplicationTask.html">
    ///                      <code>ModifyReplicationTask</code>
    ///                   </a> operation.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>"ready"</code> – The task is in a <code>ready</code> state where it can
    ///                respond to other task operations, such as <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html">
    ///                      <code>StartReplicationTask</code>
    ///                   </a> or <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_DeleteReplicationTask.html">
    ///                      <code>DeleteReplicationTask</code>
    ///                   </a>. </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>"running"</code> – The task is performing a database migration in
    ///                response to running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html">
    ///                      <code>StartReplicationTask</code>
    ///                   </a> operation.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>"starting"</code> – The task is preparing to perform a database
    ///                migration in response to running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html">
    ///                      <code>StartReplicationTask</code>
    ///                   </a> operation.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>"stopped"</code> – The task has stopped in response to running the
    ///                   <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StopReplicationTask.html">
    ///                      <code>StopReplicationTask</code>
    ///                   </a> operation.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>"stopping"</code> – The task is preparing to stop in response to
    ///                running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StopReplicationTask.html">
    ///                      <code>StopReplicationTask</code>
    ///                   </a> operation.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>"testing"</code> – The database migration specified for this task is
    ///                being tested in response to running either the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessmentRun.html">
    ///                      <code>StartReplicationTaskAssessmentRun</code>
    ///                   </a> or the
    ///                   <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessment.html">
    ///                      <code>StartReplicationTaskAssessment</code>
    ///                   </a>
    ///                operation.</p>
    ///                <note>
    ///                   <p>
    ///                      <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessmentRun.html">
    ///                         <code>StartReplicationTaskAssessmentRun</code>
    ///                      </a> is
    ///                   an improved premigration task assessment operation. The <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessment.html">
    ///                         <code>StartReplicationTaskAssessment</code>
    ///                      </a>
    ///                   operation assesses data type compatibility only between the source and target
    ///                   database of a given migration task. In contrast, <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessmentRun.html">
    ///                         <code>StartReplicationTaskAssessmentRun</code>
    ///                      </a>
    ///                   enables you to specify a variety of premigration task assessments in addition to
    ///                   data type compatibility. These assessments include ones for the validity of primary key definitions and
    ///                   likely issues with database migration performance, among others.</p>
    ///                </note>
    ///             </li>
    ///          </ul>
    public let status: String?
    /// <p>The reason the replication task was stopped. This response parameter can return one of
    ///          the following values:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>"STOP_REASON_FULL_LOAD_COMPLETED"</code> – Full-load migration
    ///                completed.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>"STOP_REASON_CACHED_CHANGES_APPLIED"</code> – Change data capture (CDC)
    ///                load completed.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>"STOP_REASON_CACHED_CHANGES_NOT_APPLIED"</code> – In a
    ///                full-load and CDC migration, the full load stopped as specified before starting the
    ///                CDC migration.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>"STOP_REASON_SERVER_TIME"</code> – The migration stopped at the
    ///                specified server time.</p>
    ///             </li>
    ///          </ul>
    public let stopReason: String?
    /// <p>Table mappings specified in the task.</p>
    public let tableMappings: String?
    /// <p>The ARN that uniquely identifies the endpoint.</p>
    public let targetEndpointArn: String?
    /// <p>The ARN of the replication instance to which this task is moved in response to running
    ///          the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html">
    ///                <code>MoveReplicationTask</code>
    ///             </a> operation. Otherwise, this response
    ///          parameter isn't a member of the <code>ReplicationTask</code> object.</p>
    public let targetReplicationInstanceArn: String?
    /// <p>Supplemental information that the task requires to migrate the data for certain source and target endpoints.
    ///             For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html">Specifying Supplemental Data for Task Settings</a> in the
    ///          <i>AWS Database Migration Service User Guide.</i>
    ///          </p>
    public let taskData: String?

    public init (
        cdcStartPosition: String? = nil,
        cdcStopPosition: String? = nil,
        lastFailureMessage: String? = nil,
        migrationType: MigrationTypeValue? = nil,
        recoveryCheckpoint: String? = nil,
        replicationInstanceArn: String? = nil,
        replicationTaskArn: String? = nil,
        replicationTaskCreationDate: Date? = nil,
        replicationTaskIdentifier: String? = nil,
        replicationTaskSettings: String? = nil,
        replicationTaskStartDate: Date? = nil,
        replicationTaskStats: ReplicationTaskStats? = nil,
        sourceEndpointArn: String? = nil,
        status: String? = nil,
        stopReason: String? = nil,
        tableMappings: String? = nil,
        targetEndpointArn: String? = nil,
        targetReplicationInstanceArn: String? = nil,
        taskData: String? = nil
    )
    {
        self.cdcStartPosition = cdcStartPosition
        self.cdcStopPosition = cdcStopPosition
        self.lastFailureMessage = lastFailureMessage
        self.migrationType = migrationType
        self.recoveryCheckpoint = recoveryCheckpoint
        self.replicationInstanceArn = replicationInstanceArn
        self.replicationTaskArn = replicationTaskArn
        self.replicationTaskCreationDate = replicationTaskCreationDate
        self.replicationTaskIdentifier = replicationTaskIdentifier
        self.replicationTaskSettings = replicationTaskSettings
        self.replicationTaskStartDate = replicationTaskStartDate
        self.replicationTaskStats = replicationTaskStats
        self.sourceEndpointArn = sourceEndpointArn
        self.status = status
        self.stopReason = stopReason
        self.tableMappings = tableMappings
        self.targetEndpointArn = targetEndpointArn
        self.targetReplicationInstanceArn = targetReplicationInstanceArn
        self.taskData = taskData
    }
}

extension ReplicationTask: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ReplicationTask(cdcStartPosition: \(String(describing: cdcStartPosition)), cdcStopPosition: \(String(describing: cdcStopPosition)), lastFailureMessage: \(String(describing: lastFailureMessage)), migrationType: \(String(describing: migrationType)), recoveryCheckpoint: \(String(describing: recoveryCheckpoint)), replicationInstanceArn: \(String(describing: replicationInstanceArn)), replicationTaskArn: \(String(describing: replicationTaskArn)), replicationTaskCreationDate: \(String(describing: replicationTaskCreationDate)), replicationTaskIdentifier: \(String(describing: replicationTaskIdentifier)), replicationTaskSettings: \(String(describing: replicationTaskSettings)), replicationTaskStartDate: \(String(describing: replicationTaskStartDate)), replicationTaskStats: \(String(describing: replicationTaskStats)), sourceEndpointArn: \(String(describing: sourceEndpointArn)), status: \(String(describing: status)), stopReason: \(String(describing: stopReason)), tableMappings: \(String(describing: tableMappings)), targetEndpointArn: \(String(describing: targetEndpointArn)), targetReplicationInstanceArn: \(String(describing: targetReplicationInstanceArn)), taskData: \(String(describing: taskData)))"}
}