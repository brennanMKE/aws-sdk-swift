// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension ApplicationCostProfilerClient {
    /// <p>Deletes the specified report definition in AWS Application Cost Profiler. This stops the report from being
    ///       generated.</p>
    func deleteReportDefinition(input: DeleteReportDefinitionInput) async throws -> DeleteReportDefinitionOutputResponse
    {
        typealias deleteReportDefinitionContinuation = CheckedContinuation<DeleteReportDefinitionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteReportDefinitionContinuation) in
            deleteReportDefinition(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves the definition of a report already configured in AWS Application Cost Profiler.</p>
    func getReportDefinition(input: GetReportDefinitionInput) async throws -> GetReportDefinitionOutputResponse
    {
        typealias getReportDefinitionContinuation = CheckedContinuation<GetReportDefinitionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getReportDefinitionContinuation) in
            getReportDefinition(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Ingests application usage data from Amazon Simple Storage Service (Amazon S3).</p>
    ///          <p>The data must already exist in the S3 location. As part of the action, AWS Application Cost Profiler
    ///       copies the object from your S3 bucket to an S3 bucket owned by Amazon for processing
    ///       asynchronously.</p>
    func importApplicationUsage(input: ImportApplicationUsageInput) async throws -> ImportApplicationUsageOutputResponse
    {
        typealias importApplicationUsageContinuation = CheckedContinuation<ImportApplicationUsageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: importApplicationUsageContinuation) in
            importApplicationUsage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Retrieves a list of all reports and their configurations for your AWS account.</p>
    ///          <p>The maximum number of reports is one.</p>
    func listReportDefinitions(input: ListReportDefinitionsInput) async throws -> ListReportDefinitionsOutputResponse
    {
        typealias listReportDefinitionsContinuation = CheckedContinuation<ListReportDefinitionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listReportDefinitionsContinuation) in
            listReportDefinitions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates the report definition for a report in Application Cost Profiler.</p>
    func putReportDefinition(input: PutReportDefinitionInput) async throws -> PutReportDefinitionOutputResponse
    {
        typealias putReportDefinitionContinuation = CheckedContinuation<PutReportDefinitionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putReportDefinitionContinuation) in
            putReportDefinition(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates existing report in AWS Application Cost Profiler.</p>
    func updateReportDefinition(input: UpdateReportDefinitionInput) async throws -> UpdateReportDefinitionOutputResponse
    {
        typealias updateReportDefinitionContinuation = CheckedContinuation<UpdateReportDefinitionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateReportDefinitionContinuation) in
            updateReportDefinition(input: input) { result in
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