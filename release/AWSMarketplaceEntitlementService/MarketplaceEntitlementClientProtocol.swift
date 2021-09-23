// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <fullname>AWS Marketplace Entitlement Service</fullname>
///          This reference provides descriptions of the AWS Marketplace Entitlement Service
///    API.
///          AWS Marketplace Entitlement Service is used to determine the entitlement of a customer to
///       a given product. An entitlement represents capacity in a product owned by the customer. For
///       example, a customer might own some number of users or seats in an SaaS application or some
///       amount of data capacity in a multi-tenant database.
///
///             Getting Entitlement Records
///
///
///
///
///                   GetEntitlements- Gets the entitlements for a Marketplace
///      product.
///
///
public protocol MarketplaceEntitlementClientProtocol {
    /// GetEntitlements retrieves entitlement values for a given product. The results can be
    ///       filtered based on customer identifier or product dimensions.
    func getEntitlements(input: GetEntitlementsInput, completion: @escaping (ClientRuntime.SdkResult<GetEntitlementsOutputResponse, GetEntitlementsOutputError>) -> Void)
}

public enum MarketplaceEntitlementClientTypes {}
