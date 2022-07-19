.class Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter$ServiceHelper;
.super Ljava/lang/Object;
.source "TestRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceHelper"
.end annotation


# static fields
.field private static sServiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltest/tinyapp/alipay/com/testlibrary/core/BaseTestService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter$ServiceHelper;->sServiceList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleAction(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p2, "extraParams"    # Landroid/os/Bundle;

    .line 118
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter$ServiceHelper;->sServiceList:Ljava/util/List;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/util/CollectionsUtil;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    return v1

    .line 122
    :cond_0
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter$ServiceHelper;->sServiceList:Ljava/util/List;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v2, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter$ServiceHelper;->sServiceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 126
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltest/tinyapp/alipay/com/testlibrary/core/BaseTestService;

    .line 129
    .local v3, "baseService":Ltest/tinyapp/alipay/com/testlibrary/core/BaseTestService;
    move-object v3, v4

    if-eqz v4, :cond_1

    invoke-interface {v3, p0}, Ltest/tinyapp/alipay/com/testlibrary/core/BaseTestService;->a(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    invoke-interface {v3, p0, p1}, Ltest/tinyapp/alipay/com/testlibrary/core/BaseTestService;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    .line 137
    .end local v3    # "baseService":Ltest/tinyapp/alipay/com/testlibrary/core/BaseTestService;
    :cond_1
    goto :goto_0

    .line 139
    :cond_2
    monitor-exit v0

    return v1

    .line 140
    .end local v2    # "iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static registerService(Ltest/tinyapp/alipay/com/testlibrary/core/BaseTestService;)V
    .locals 1
    .param p0, "baseService"    # Ltest/tinyapp/alipay/com/testlibrary/core/BaseTestService;

    .line 96
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter$ServiceHelper;->sServiceList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter$ServiceHelper;->sServiceList:Ljava/util/List;

    .line 100
    :cond_0
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter$ServiceHelper;->sServiceList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-interface {p0}, Ltest/tinyapp/alipay/com/testlibrary/core/BaseTestService;->a()V

    .line 102
    return-void
.end method

.method static release()V
    .locals 3

    .line 105
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter$ServiceHelper;->sServiceList:Ljava/util/List;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/util/CollectionsUtil;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    return-void

    .line 109
    :cond_0
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter$ServiceHelper;->sServiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltest/tinyapp/alipay/com/testlibrary/core/BaseTestService;

    .line 110
    .local v1, "baseService":Ltest/tinyapp/alipay/com/testlibrary/core/BaseTestService;
    move-object v1, v2

    if-eqz v2, :cond_1

    .line 111
    invoke-interface {v1}, Ltest/tinyapp/alipay/com/testlibrary/core/BaseTestService;->b()V

    .line 113
    .end local v1    # "baseService":Ltest/tinyapp/alipay/com/testlibrary/core/BaseTestService;
    :cond_1
    goto :goto_0

    .line 114
    :cond_2
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/plugin/TestRouter$ServiceHelper;->sServiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    return-void
.end method
