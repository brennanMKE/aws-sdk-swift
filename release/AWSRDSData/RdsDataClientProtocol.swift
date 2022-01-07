// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon RDS Data Service Amazon RDS provides an HTTP endpoint to run SQL statements on an Amazon Aurora Serverless DB cluster. To run these statements, you work with the Data Service API. For more information about the Data Service API, see [Using the Data API for Aurora Serverless](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html) in the Amazon Aurora User Guide.
public protocol RdsDataClientProtocol {
    /// Runs a batch SQL statement over an array of data. You can run bulk update and insert operations for multiple records using a DML statement with different parameter sets. Bulk operations can provide a significant performance improvement over individual insert and update operations. If a call isn't part of a transaction because it doesn't include the transactionID parameter, changes that result from the call are committed automatically.
    func batchExecuteStatement(input: BatchExecuteStatementInput, completion: @escaping (ClientRuntime.SdkResult<BatchExecuteStatementOutputResponse, BatchExecuteStatementOutputError>) -> Void)
    /// Starts a SQL transaction. A transaction can run for a maximum of 24 hours. A transaction is terminated and rolled back automatically after 24 hours. A transaction times out if no calls use its transaction ID in three minutes. If a transaction times out before it's committed, it's rolled back automatically. DDL statements inside a transaction cause an implicit commit. We recommend that you run each DDL statement in a separate ExecuteStatement call with continueAfterTimeout enabled.
    func beginTransaction(input: BeginTransactionInput, completion: @escaping (ClientRuntime.SdkResult<BeginTransactionOutputResponse, BeginTransactionOutputError>) -> Void)
    /// Ends a SQL transaction started with the BeginTransaction operation and commits the changes.
    func commitTransaction(input: CommitTransactionInput, completion: @escaping (ClientRuntime.SdkResult<CommitTransactionOutputResponse, CommitTransactionOutputError>) -> Void)
    /// Runs one or more SQL statements. This operation is deprecated. Use the BatchExecuteStatement or ExecuteStatement operation.
    @available(*, deprecated, message: "The ExecuteSql API is deprecated, please use the ExecuteStatement API. API deprecated since 2019-03-21")
    func executeSql(input: ExecuteSqlInput, completion: @escaping (ClientRuntime.SdkResult<ExecuteSqlOutputResponse, ExecuteSqlOutputError>) -> Void)
    /// Runs a SQL statement against a database. If a call isn't part of a transaction because it doesn't include the transactionID parameter, changes that result from the call are committed automatically. The response size limit is 1 MB. If the call returns more than 1 MB of response data, the call is terminated.
    func executeStatement(input: ExecuteStatementInput, completion: @escaping (ClientRuntime.SdkResult<ExecuteStatementOutputResponse, ExecuteStatementOutputError>) -> Void)
    /// Performs a rollback of a transaction. Rolling back a transaction cancels its changes.
    func rollbackTransaction(input: RollbackTransactionInput, completion: @escaping (ClientRuntime.SdkResult<RollbackTransactionOutputResponse, RollbackTransactionOutputError>) -> Void)
}

public enum RdsDataClientTypes {}
