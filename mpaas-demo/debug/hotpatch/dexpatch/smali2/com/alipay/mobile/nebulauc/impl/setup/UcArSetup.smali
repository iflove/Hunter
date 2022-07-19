.class public Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;
.super Ljava/lang/Object;
.source "UcArSetup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "H5UcService::UcArSetup"

.field private static sHasInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;->sHasInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 26
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;->checkIsTinyApp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1

    .line 26
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    return-object v0
.end method

.method private static checkIsTinyApp()Z
    .locals 5

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "rs":Z
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    .line 67
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    .line 69
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz v2, :cond_0

    .line 70
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "parentAppId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "parentAppId":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 76
    .end local v2    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v3    # "parentAppId":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public static disableAR()Z
    .locals 2

    .line 60
    const-string v0, "h5_disableUcAR"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "ucARConfig":Ljava/lang/String;
    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 2

    .line 31
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 32
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    .line 34
    .local v1, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz v1, :cond_0

    .line 35
    return-object v1

    .line 38
    .end local v1    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static init()V
    .locals 8

    .line 80
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;->sHasInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    const-string v0, "H5UcService::UcArSetup"

    const-string v1, "WebAR init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "registerARDetector"

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/uc/webview/export/extension/ARManager;->getInstance()Lcom/uc/webview/export/extension/ARManager;

    move-result-object v2

    .line 84
    .local v2, "arManager":Lcom/uc/webview/export/extension/ARManager;
    if-eqz v2, :cond_1

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;

    .line 87
    .local v0, "infos":[Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v3, "faceDetectorMap":Ljava/util/HashMap;
    const-string v4, "version"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/4 v4, 0x0

    new-instance v5, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;

    const-class v6, Lcom/alipay/mobile/nebulauc/webar/FaceDetector;

    const-string v7, "FaceDetector"

    invoke-direct {v5, v7, v6, v3}, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/HashMap;)V

    aput-object v5, v0, v4

    .line 91
    new-instance v4, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;

    const-class v5, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    const/4 v6, 0x0

    const-string v7, "XNNDetector"

    invoke-direct {v4, v7, v5, v6}, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/HashMap;)V

    const/4 v5, 0x1

    aput-object v4, v0, v5

    .line 92
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;->registerDetector(Lcom/uc/webview/export/extension/ARManager;[Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;)V

    .line 93
    sput-boolean v5, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup;->sHasInit:Z

    .line 94
    .end local v0    # "infos":[Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;
    .end local v3    # "faceDetectorMap":Ljava/util/HashMap;
    goto :goto_0

    .line 95
    :cond_1
    const-string v3, "get aRManager fail, register MarkerDetector fail"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private static registerDetector(Lcom/uc/webview/export/extension/ARManager;[Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;)V
    .locals 5
    .param p0, "aRManager"    # Lcom/uc/webview/export/extension/ARManager;
    .param p1, "infos"    # [Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;

    .line 101
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 102
    .local v2, "info":Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;
    if-eqz v2, :cond_0

    .line 103
    iget-object v3, v2, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;->name:Ljava/lang/String;

    .line 104
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$1;

    invoke-direct {v4, v3}, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$1;-><init>(Ljava/lang/String;)V

    iput-object v4, v2, Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;->vaildCallback:Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo$VaildCallback;

    .line 131
    invoke-virtual {p0, v2}, Lcom/uc/webview/export/extension/ARManager;->registerARDetector(Ljava/lang/Object;)V

    .line 101
    .end local v2    # "info":Lcom/alipay/mobile/nebulauc/impl/setup/UcArSetup$DetectorInfo;
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_1
    return-void
.end method
