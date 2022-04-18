import Foundation

public class SearchTicketBuilder: Builder<SearchTicketDependency> {

    public override func build<BuildType: Scene>(sceneFactory: SceneFactory<BuildType>, navigator: Navigator<BuildType>) -> BuildType {
        let router = SearchTicketRouter(sceneFactory: sceneFactory, navigator: navigator, outBoundBuilder: dependency.outBoundBuilder)
        let presenter = SearchTicketPresenter(router: router)
        let scene = sceneFactory.searchTicket(presenter)
        router.source = scene
        return scene
    }
}
