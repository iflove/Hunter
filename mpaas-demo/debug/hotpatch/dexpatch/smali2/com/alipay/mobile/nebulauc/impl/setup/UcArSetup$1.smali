.class final Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$1;
.super Ljava/lang/Object;
.source "UcArSetup.java"

# interfaces
.implements Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo$VaildCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;->registerDetector(Lcom/uc/webview/export/extension/ARManager;[Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public vaild(Ljava/lang/String;Landroid/view/View;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "coreView"    # Landroid/view/View;

    .line 108
    # invokes: Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;->checkIsTinyApp()Z
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    # invokes: Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;->access$100()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    .line 110
    .local v0, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 112
    return v1

    .line 115
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/WebView;

    .line 116
    .local v2, "ucWebView":Lcom/uc/webview/export/WebView;
    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, p2, :cond_1

    .line 117
    return v1

    .line 121
    .end local v2    # "ucWebView":Lcom/uc/webview/export/WebView;
    :cond_1
    nop

    .line 123
    const-class v1, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    .line 124
    .local v1, "h5TinyAppService":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WA_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$1;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasWebARPermission(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v2

    return v2

    .line 119
    .end local v1    # "h5TinyAppService":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/Exception;
    return v1

    .line 127
    .end local v0    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
