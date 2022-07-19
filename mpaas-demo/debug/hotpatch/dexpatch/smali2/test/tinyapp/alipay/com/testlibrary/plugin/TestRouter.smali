.class public Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "TestRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter$ServiceHelper;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TestRouter"


# instance fields
.field private mActionsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pageSwitchNotifyTestService:Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;

.field private performancePanelTestService:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter;->mActionsSet:Ljava/util/Set;

    .line 33
    new-instance v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;

    invoke-direct {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;-><init>()V

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter;->performancePanelTestService:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;

    .line 34
    new-instance v0, Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;

    invoke-direct {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;-><init>()V

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter;->pageSwitchNotifyTestService:Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;

    return-void
.end method


# virtual methods
.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receive action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter;->mActionsSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "can not handle action: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return v2

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "can handle action: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :try_start_0
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {p1, p2, v0}, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter$ServiceHelper;->handleAction(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 88
    :goto_0
    return v2
.end method

.method public onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 2
    .param p1, "coreNode"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 38
    const-string v0, "TestRouter"

    const-string v1, "onInitialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter;->performancePanelTestService:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter$ServiceHelper;->registerService(Ltest/tinyapp/alipay/com/testlibrary/core/BaseTestService;)V

    .line 41
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter;->pageSwitchNotifyTestService:Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter$ServiceHelper;->registerService(Ltest/tinyapp/alipay/com/testlibrary/core/BaseTestService;)V

    .line 43
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter;->mActionsSet:Ljava/util/Set;

    iget-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter;->performancePanelTestService:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;

    invoke-virtual {v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 44
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter;->mActionsSet:Ljava/util/Set;

    iget-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter;->pageSwitchNotifyTestService:Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;

    invoke-virtual {v1}, Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 45
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 2
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 50
    const-string v0, "TestRouter"

    const-string v1, "onPrepare"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter;->performancePanelTestService:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;

    invoke-virtual {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->setEventsList(Ljava/util/List;)V

    .line 52
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter;->pageSwitchNotifyTestService:Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;

    invoke-virtual {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/pageswitchnotify/PageSwitchNotifyTestService;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->setEventsList(Ljava/util/List;)V

    .line 53
    return-void
.end method

.method public onRelease()V
    .locals 0

    .line 57
    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter$ServiceHelper;->release()V

    .line 58
    return-void
.end method
