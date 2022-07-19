.class public Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;
.super Ljava/lang/Object;
.source "TinyAppActionStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager$Holder;
    }
.end annotation


# instance fields
.field private mControllerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            "Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->mControllerMap:Ljava/util/Map;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager$1;

    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;
    .locals 1

    .line 25
    # getter for: Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager$Holder;->INSTANCE:Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager$Holder;->access$100()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroy(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 2
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->mControllerMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    if-nez p1, :cond_0

    .line 97
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->mControllerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;

    .line 101
    .local v1, "stateController":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->destroy()V

    .line 104
    :cond_1
    return-void
.end method

.method public getCurrentState(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;
    .locals 3
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 83
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 84
    return-object v0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->mControllerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;

    move-object v2, v0

    .line 88
    .local v2, "controller":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->getCurrentState()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;

    move-result-object v0

    return-object v0

    .line 91
    :cond_1
    return-object v0
.end method

.method public declared-synchronized registerStateListener(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;)V
    .locals 2
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "listener"    # Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;

    monitor-enter p0

    .line 29
    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->mControllerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;

    const/4 v1, 0x0

    .line 34
    .local v1, "controller":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 35
    new-instance v0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;-><init>()V

    move-object v1, v0

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->mControllerMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .end local p0    # "this":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;
    :cond_1
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->registerListener(Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 28
    .end local v1    # "controller":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;
    .end local p1    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local p2    # "listener":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 30
    .restart local p1    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local p2    # "listener":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public removeAction(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V
    .locals 2
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "action"    # Ljava/lang/String;

    .line 61
    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->mControllerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;

    const/4 v1, 0x0

    .line 66
    .local v1, "controller":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->removeAction(Ljava/lang/String;)V

    .line 69
    :cond_1
    return-void

    .line 62
    .end local v1    # "controller":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;
    :cond_2
    :goto_0
    return-void
.end method

.method public setActionOff(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V
    .locals 1
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "action"    # Ljava/lang/String;

    .line 46
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->setActionOff(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public setActionOff(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 72
    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->mControllerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;

    const/4 v1, 0x0

    .line 77
    .local v1, "controller":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v1, p2, p3}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->setStateOff(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_1
    return-void

    .line 73
    .end local v1    # "controller":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;
    :cond_2
    :goto_0
    return-void
.end method

.method public setActionOn(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V
    .locals 1
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "action"    # Ljava/lang/String;

    .line 42
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->setActionOn(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public setActionOn(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 50
    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->mControllerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;

    const/4 v1, 0x0

    .line 55
    .local v1, "controller":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v1, p2, p3}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;->setStateOn(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_1
    return-void

    .line 51
    .end local v1    # "controller":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateController;
    :cond_2
    :goto_0
    return-void
.end method
