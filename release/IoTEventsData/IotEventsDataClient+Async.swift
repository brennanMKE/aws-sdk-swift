// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension IotEventsDataClient {
    /// <p>Acknowledges one or more alarms. The alarms change to the <code>ACKNOWLEDGED</code> state
    ///       after you acknowledge them.</p>
    func batchAcknowledgeAlarm(input: BatchAcknowledgeAlarmInput) async throws -> BatchAcknowledgeAlarmOutputResponse
    {
        typealias batchAcknowledgeAlarmContinuation = CheckedContinuation<BatchAcknowledgeAlarmOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchAcknowledgeAlarmContinuation) in
            batchAcknowledgeAlarm(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Disables one or more alarms. The alarms change to the <code>DISABLED</code> state after
    ///       you disable them.</p>
    func batchDisableAlarm(input: BatchDisableAlarmInput) async throws -> BatchDisableAlarmOutputResponse
    {
        typealias batchDisableAlarmContinuation = CheckedContinuation<BatchDisableAlarmOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchDisableAlarmContinuation) in
            batchDisableAlarm(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Enables one or more alarms. The alarms change to the <code>NORMAL</code> state after you
    ///       enable them.</p>
    func batchEnableAlarm(input: BatchEnableAlarmInput) async throws -> BatchEnableAlarmOutputResponse
    {
        typealias batchEnableAlarmContinuation = CheckedContinuation<BatchEnableAlarmOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchEnableAlarmContinuation) in
            batchEnableAlarm(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Sends a set of messages to the AWS IoT Events system. Each message payload is transformed into
    ///       the input you specify (<code>"inputName"</code>) and ingested into any detectors that monitor
    ///       that input. If multiple messages are sent, the order in which the messages are processed isn't
    ///       guaranteed. To guarantee ordering, you must send messages one at a time and wait for a
    ///       successful response.</p>
    func batchPutMessage(input: BatchPutMessageInput) async throws -> BatchPutMessageOutputResponse
    {
        typealias batchPutMessageContinuation = CheckedContinuation<BatchPutMessageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchPutMessageContinuation) in
            batchPutMessage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Resets one or more alarms. The alarms return to the <code>NORMAL</code> state after you
    ///       reset them.</p>
    func batchResetAlarm(input: BatchResetAlarmInput) async throws -> BatchResetAlarmOutputResponse
    {
        typealias batchResetAlarmContinuation = CheckedContinuation<BatchResetAlarmOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchResetAlarmContinuation) in
            batchResetAlarm(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Changes one or more alarms to the snooze mode. The alarms change to the
    ///         <code>SNOOZE_DISABLED</code> state after you set them to the snooze mode.</p>
    func batchSnoozeAlarm(input: BatchSnoozeAlarmInput) async throws -> BatchSnoozeAlarmOutputResponse
    {
        typealias batchSnoozeAlarmContinuation = CheckedContinuation<BatchSnoozeAlarmOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchSnoozeAlarmContinuation) in
            batchSnoozeAlarm(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates the state, variable values, and timer settings of one or more detectors
    ///       (instances) of a specified detector model.</p>
    func batchUpdateDetector(input: BatchUpdateDetectorInput) async throws -> BatchUpdateDetectorOutputResponse
    {
        typealias batchUpdateDetectorContinuation = CheckedContinuation<BatchUpdateDetectorOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchUpdateDetectorContinuation) in
            batchUpdateDetector(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves information about an alarm.</p>
    func describeAlarm(input: DescribeAlarmInput) async throws -> DescribeAlarmOutputResponse
    {
        typealias describeAlarmContinuation = CheckedContinuation<DescribeAlarmOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAlarmContinuation) in
            describeAlarm(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns information about the specified detector (instance).</p>
    func describeDetector(input: DescribeDetectorInput) async throws -> DescribeDetectorOutputResponse
    {
        typealias describeDetectorContinuation = CheckedContinuation<DescribeDetectorOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDetectorContinuation) in
            describeDetector(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists one or more alarms. The operation returns only the metadata associated with each
    ///       alarm.</p>
    func listAlarms(input: ListAlarmsInput) async throws -> ListAlarmsOutputResponse
    {
        typealias listAlarmsContinuation = CheckedContinuation<ListAlarmsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAlarmsContinuation) in
            listAlarms(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists detectors (the instances of a detector model).</p>
    func listDetectors(input: ListDetectorsInput) async throws -> ListDetectorsOutputResponse
    {
        typealias listDetectorsContinuation = CheckedContinuation<ListDetectorsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDetectorsContinuation) in
            listDetectors(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

}
#endif