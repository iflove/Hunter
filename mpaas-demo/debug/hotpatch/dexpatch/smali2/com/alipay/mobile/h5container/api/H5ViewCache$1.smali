.class final Lcom/alipay/mobile/h5container/api/H5ViewCache$1;
.super Ljava/lang/Object;
.source "H5ViewCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5container/api/H5ViewCache;->initViewCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 35
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    move-object v2, v0

    .line 37
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "h5_openViewCache"

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "config":Ljava/lang/String;
    const-string v3, "NO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    return-void

    .line 43
    .end local v1    # "config":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->isBackgroundRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    return-void

    .line 47
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    # setter for: Lcom/alipay/mobile/h5container/api/H5ViewCache;->sViewCache:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/alipay/mobile/h5container/api/H5ViewCache;->access$002(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 48
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 49
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    # getter for: Lcom/alipay/mobile/h5container/api/H5ViewCache;->VIEW_ID_TO_CACHE:[I
    invoke-static {}, Lcom/alipay/mobile/h5container/api/H5ViewCache;->access$100()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    .line 50
    .local v6, "id":I
    # getter for: Lcom/alipay/mobile/h5container/api/H5ViewCache;->sViewCache:Ljava/util/HashMap;
    invoke-static {}, Lcom/alipay/mobile/h5container/api/H5ViewCache;->access$000()Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    nop

    .end local v6    # "id":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 54
    :cond_2
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    .line 55
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    .line 56
    .local v3, "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    move-object v3, v4

    if-eqz v4, :cond_3

    .line 57
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;->getMiddlePageTitleBarLayoutId()I

    move-result v4

    .line 59
    .local v4, "id":I
    new-instance v5, Lcom/alipay/mobile/h5container/api/H5ViewCache$1$1;

    invoke-direct {v5, p0, v4, v1}, Lcom/alipay/mobile/h5container/api/H5ViewCache$1$1;-><init>(Lcom/alipay/mobile/h5container/api/H5ViewCache$1;ILandroid/view/LayoutInflater;)V

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v3    # "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    .end local v4    # "id":I
    :cond_3
    return-void

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Throwable;
    # setter for: Lcom/alipay/mobile/h5container/api/H5ViewCache;->sViewCache:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/h5container/api/H5ViewCache;->access$002(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 68
    const-string v0, "H5ViewCache, pre inflate view error!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method
