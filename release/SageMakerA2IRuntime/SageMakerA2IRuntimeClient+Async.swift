// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension SageMakerA2IRuntimeClient {
    /// <p>Deletes the specified human loop for a flow definition.</p>
    ///          <p>If the human loop was deleted, this operation will return a
    ///         <code>ResourceNotFoundException</code>. </p>
    func deleteHumanLoop(input: DeleteHumanLoopInput) async throws -> DeleteHumanLoopOutputResponse
    {
        typealias deleteHumanLoopContinuation = CheckedContinuation<DeleteHumanLoopOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteHumanLoopContinuation) in
            deleteHumanLoop(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns information about the specified human loop. If the human loop was deleted, this
    ///       operation will return a <code>ResourceNotFoundException</code> error. </p>
    func describeHumanLoop(input: DescribeHumanLoopInput) async throws -> DescribeHumanLoopOutputResponse
    {
        typealias describeHumanLoopContinuation = CheckedContinuation<DescribeHumanLoopOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeHumanLoopContinuation) in
            describeHumanLoop(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns information about human loops, given the specified parameters. If a human loop was deleted, it will not be included.</p>
    func listHumanLoops(input: ListHumanLoopsInput) async throws -> ListHumanLoopsOutputResponse
    {
        typealias listHumanLoopsContinuation = CheckedContinuation<ListHumanLoopsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listHumanLoopsContinuation) in
            listHumanLoops(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Starts a human loop, provided that at least one activation condition is met.</p>
    func startHumanLoop(input: StartHumanLoopInput) async throws -> StartHumanLoopOutputResponse
    {
        typealias startHumanLoopContinuation = CheckedContinuation<StartHumanLoopOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startHumanLoopContinuation) in
            startHumanLoop(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Stops the specified human loop.</p>
    func stopHumanLoop(input: StopHumanLoopInput) async throws -> StopHumanLoopOutputResponse
    {
        typealias stopHumanLoopContinuation = CheckedContinuation<StopHumanLoopOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopHumanLoopContinuation) in
            stopHumanLoop(input: input) { result in
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