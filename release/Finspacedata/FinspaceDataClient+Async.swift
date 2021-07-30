// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension FinspaceDataClient {
    /// <p>Creates a new changeset in a FinSpace dataset.</p>
    func createChangeset(input: CreateChangesetInput) async throws -> CreateChangesetOutputResponse
    {
        typealias createChangesetContinuation = CheckedContinuation<CreateChangesetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createChangesetContinuation) in
            createChangeset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Request programmatic credentials to use with Habanero SDK.</p>
    func getProgrammaticAccessCredentials(input: GetProgrammaticAccessCredentialsInput) async throws -> GetProgrammaticAccessCredentialsOutputResponse
    {
        typealias getProgrammaticAccessCredentialsContinuation = CheckedContinuation<GetProgrammaticAccessCredentialsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getProgrammaticAccessCredentialsContinuation) in
            getProgrammaticAccessCredentials(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>A temporary Amazon S3 location to copy your files from a source location to stage or use
    ///       as a scratch space in Habanero notebook.</p>
    func getWorkingLocation(input: GetWorkingLocationInput) async throws -> GetWorkingLocationOutputResponse
    {
        typealias getWorkingLocationContinuation = CheckedContinuation<GetWorkingLocationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getWorkingLocationContinuation) in
            getWorkingLocation(input: input) { result in
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