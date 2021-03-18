// Code generated by smithy-swift-codegen. DO NOT EDIT!

import Foundation

/// <p>The description of the server-side encryption status on the specified table.</p>
public struct SSEDescription: Equatable {
    /**
     <p>Indicates the time, in UNIX epoch date format, when DynamoDB detected that the table's
              AWS KMS key was inaccessible. This attribute will automatically be cleared when DynamoDB
              detects that the table's AWS KMS key is accessible again. DynamoDB will initiate the table
              archival process when table's AWS KMS key remains inaccessible for more than seven days
              from this date.</p>
     */
    public let inaccessibleEncryptionDateTime: Date?
    /// <p>The AWS KMS customer master key (CMK) ARN used for the AWS KMS encryption.</p>
    public let kMSMasterKeyArn: String?
    /**
     <p>Server-side encryption type. The only supported value is:</p>
              <ul>
                 <li>
                   <p>
                       <code>KMS</code> - Server-side encryption that uses AWS Key Management Service. The
                    key is stored in your account and is managed by AWS KMS (AWS KMS charges
                    apply).</p>
                 </li>
              </ul>
     */
    public let sSEType: SSEType?
    /**
     <p>Represents the current state of server-side encryption. The only supported values are:</p>
              <ul>
                 <li>
                    <p>
                       <code>ENABLED</code> - Server-side encryption is enabled.</p>
                 </li>
                 <li>
                   <p>
                       <code>UPDATING</code> - Server-side encryption is being updated.</p>
                 </li>
              </ul>
     */
    public let status: SSEStatus?

    public init (
        inaccessibleEncryptionDateTime: Date? = nil,
        kMSMasterKeyArn: String? = nil,
        sSEType: SSEType? = nil,
        status: SSEStatus? = nil
    )
    {
        self.inaccessibleEncryptionDateTime = inaccessibleEncryptionDateTime
        self.kMSMasterKeyArn = kMSMasterKeyArn
        self.sSEType = sSEType
        self.status = status
    }
}
