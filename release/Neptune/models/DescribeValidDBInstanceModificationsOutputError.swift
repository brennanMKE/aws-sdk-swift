// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeValidDBInstanceModificationsOutputError: Equatable {
    case dBInstanceNotFoundFault(DBInstanceNotFoundFault)
    case invalidDBInstanceStateFault(InvalidDBInstanceStateFault)
    case unknown(UnknownAWSHttpServiceError)
}