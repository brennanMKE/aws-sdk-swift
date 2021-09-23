// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension MarketplaceEntitlementClient {
    /// GetEntitlements retrieves entitlement values for a given product. The results can be
    ///       filtered based on customer identifier or product dimensions.
    func getEntitlements(input: GetEntitlementsInput) async throws -> GetEntitlementsOutputResponse
    {
        typealias getEntitlementsContinuation = CheckedContinuation<GetEntitlementsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getEntitlementsContinuation) in
            getEntitlements(input: input) { result in
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
