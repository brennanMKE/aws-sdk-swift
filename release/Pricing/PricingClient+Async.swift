// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension PricingClient {
    /// <p>Returns the metadata for one service or a list of the metadata for all services. Use
    ///          this without a service code to get the service codes for all services.
    ///          Use it with a service code, such as <code>AmazonEC2</code>, to get information specific to
    ///          that service, such as the attribute
    ///          names available for that service. For example, some of the attribute names available for EC2 are
    ///          <code>volumeType</code>, <code>maxIopsVolume</code>, <code>operation</code>,
    ///          <code>locationType</code>, and <code>instanceCapacity10xlarge</code>.</p>
    func describeServices(input: DescribeServicesInput) async throws -> DescribeServicesOutputResponse
    {
        typealias describeServicesContinuation = CheckedContinuation<DescribeServicesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeServicesContinuation) in
            describeServices(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a list of attribute values. Attibutes are similar to the details
    ///           in a Price List API offer file. For a list of available attributes, see
    ///          <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/reading-an-offer.html#pps-defs">Offer File Definitions</a>
    ///          in the <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html">AWS Billing and Cost Management User Guide</a>.</p>
    func getAttributeValues(input: GetAttributeValuesInput) async throws -> GetAttributeValuesOutputResponse
    {
        typealias getAttributeValuesContinuation = CheckedContinuation<GetAttributeValuesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAttributeValuesContinuation) in
            getAttributeValues(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a list of all products that match the filter criteria.</p>
    func getProducts(input: GetProductsInput) async throws -> GetProductsOutputResponse
    {
        typealias getProductsContinuation = CheckedContinuation<GetProductsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getProductsContinuation) in
            getProducts(input: input) { result in
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