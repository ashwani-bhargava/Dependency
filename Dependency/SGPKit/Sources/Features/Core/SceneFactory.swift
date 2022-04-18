public struct SceneFactory<T: Scene> {

    let sceneA: (FeatureAPresentable) -> T
    let sceneB: (FeatureBPresentable) -> T
    let checkout: (CheckoutPresentable) -> T
    let outBound: (OutBoundPresentable) -> T
    let preview: (PreviewPresentable) -> T
    let searchTicket: (SearchTicketPresentable) -> T
    public init(sceneA: @escaping (FeatureAPresentable) -> T,
                sceneB: @escaping(FeatureBPresentable) -> T,
                checkout: @escaping(CheckoutPresentable) -> T,
                outBound: @escaping (OutBoundPresentable) -> T,
                preview: @escaping (PreviewPresentable) -> T,
                searchTicket: @escaping (SearchTicketPresentable) -> T) {
        self.sceneA = sceneA
        self.sceneB = sceneB
        self.checkout = checkout
        self.outBound = outBound
        self.preview = preview
        self.searchTicket = searchTicket
    }

}
