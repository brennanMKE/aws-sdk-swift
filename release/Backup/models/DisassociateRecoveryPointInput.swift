// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisassociateRecoveryPointInput: Equatable {
    /// <p>The unique name of an AWS Backup vault. Required.</p>
    public let backupVaultName: String?
    /// <p>An Amazon Resource Name (ARN) that uniquely identifies an AWS Backup recovery point.
    ///          Required.</p>
    public let recoveryPointArn: String?

    public init (
        backupVaultName: String? = nil,
        recoveryPointArn: String? = nil
    )
    {
        self.backupVaultName = backupVaultName
        self.recoveryPointArn = recoveryPointArn
    }
}

extension DisassociateRecoveryPointInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisassociateRecoveryPointInput(backupVaultName: \(String(describing: backupVaultName)), recoveryPointArn: \(String(describing: recoveryPointArn)))"}
}