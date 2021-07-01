// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about a Savings Plan.</p>
public struct SavingsPlan: Equatable {
    /// <p>The hourly commitment, in USD.</p>
    public let commitment: String?
    /// <p>The currency.</p>
    public let currency: CurrencyCode?
    /// <p>The description.</p>
    public let description: String?
    /// <p>The EC2 instance family.</p>
    public let ec2InstanceFamily: String?
    /// <p>The end time.</p>
    public let end: String?
    /// <p>The ID of the offering.</p>
    public let offeringId: String?
    /// <p>The payment option.</p>
    public let paymentOption: SavingsPlanPaymentOption?
    /// <p>The product types.</p>
    public let productTypes: [SavingsPlanProductType]?
    /// <p>The recurring payment amount.</p>
    public let recurringPaymentAmount: String?
    /// <p>The AWS Region.</p>
    public let region: String?
    /// <p>The Amazon Resource Name (ARN) of the Savings Plan.</p>
    public let savingsPlanArn: String?
    /// <p>The ID of the Savings Plan.</p>
    public let savingsPlanId: String?
    /// <p>The plan type.</p>
    public let savingsPlanType: SavingsPlanType?
    /// <p>The start time.</p>
    public let start: String?
    /// <p>The state.</p>
    public let state: SavingsPlanState?
    /// <p>One or more tags.</p>
    public let tags: [String:String]?
    /// <p>The duration of the term, in seconds.</p>
    public let termDurationInSeconds: Int
    /// <p>The up-front payment amount.</p>
    public let upfrontPaymentAmount: String?

    public init (
        commitment: String? = nil,
        currency: CurrencyCode? = nil,
        description: String? = nil,
        ec2InstanceFamily: String? = nil,
        end: String? = nil,
        offeringId: String? = nil,
        paymentOption: SavingsPlanPaymentOption? = nil,
        productTypes: [SavingsPlanProductType]? = nil,
        recurringPaymentAmount: String? = nil,
        region: String? = nil,
        savingsPlanArn: String? = nil,
        savingsPlanId: String? = nil,
        savingsPlanType: SavingsPlanType? = nil,
        start: String? = nil,
        state: SavingsPlanState? = nil,
        tags: [String:String]? = nil,
        termDurationInSeconds: Int = 0,
        upfrontPaymentAmount: String? = nil
    )
    {
        self.commitment = commitment
        self.currency = currency
        self.description = description
        self.ec2InstanceFamily = ec2InstanceFamily
        self.end = end
        self.offeringId = offeringId
        self.paymentOption = paymentOption
        self.productTypes = productTypes
        self.recurringPaymentAmount = recurringPaymentAmount
        self.region = region
        self.savingsPlanArn = savingsPlanArn
        self.savingsPlanId = savingsPlanId
        self.savingsPlanType = savingsPlanType
        self.start = start
        self.state = state
        self.tags = tags
        self.termDurationInSeconds = termDurationInSeconds
        self.upfrontPaymentAmount = upfrontPaymentAmount
    }
}

extension SavingsPlan: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SavingsPlan(commitment: \(String(describing: commitment)), currency: \(String(describing: currency)), description: \(String(describing: description)), ec2InstanceFamily: \(String(describing: ec2InstanceFamily)), end: \(String(describing: end)), offeringId: \(String(describing: offeringId)), paymentOption: \(String(describing: paymentOption)), productTypes: \(String(describing: productTypes)), recurringPaymentAmount: \(String(describing: recurringPaymentAmount)), region: \(String(describing: region)), savingsPlanArn: \(String(describing: savingsPlanArn)), savingsPlanId: \(String(describing: savingsPlanId)), savingsPlanType: \(String(describing: savingsPlanType)), start: \(String(describing: start)), state: \(String(describing: state)), tags: \(String(describing: tags)), termDurationInSeconds: \(String(describing: termDurationInSeconds)), upfrontPaymentAmount: \(String(describing: upfrontPaymentAmount)))"}
}