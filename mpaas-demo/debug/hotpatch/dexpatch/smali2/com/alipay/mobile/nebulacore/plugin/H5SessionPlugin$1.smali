.class Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;
.super Ljava/lang/Object;
.source "H5SessionPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->c(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    .line 769
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 772
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 773
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    .line 774
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 775
    .local v2, "h5SessionTabManager":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;
    move-object v2, v0

    .line 776
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getTabFragments()Ljava/util/Map;

    move-result-object v0

    .line 777
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 778
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v4

    .line 779
    .local v3, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v3, v4

    if-eqz v4, :cond_0

    .line 780
    const-string v4, "h5PageClose_tab"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 783
    .end local v3    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_0
    goto :goto_0

    .line 784
    :cond_1
    if-eqz v2, :cond_2

    .line 785
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->clearTabFragments()V

    .line 787
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 788
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabBar()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    move-result-object v1

    .line 789
    .local v0, "sessionTabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    move-object v0, v1

    if-eqz v1, :cond_3

    .line 790
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->setHasShowTab(Z)V

    .line 795
    .end local v0    # "sessionTabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .end local v2    # "h5SessionTabManager":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;
    :cond_3
    return-void
.end method
