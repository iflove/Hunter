.class public Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5ScanPlugin.java"


# static fields
.field private static final ACTIONTYPE_SCANANDROUTE:Ljava/lang/String; = "scanAndRoute"

.field public static final SCAN:Ljava/lang/String; = "scan"

.field private static final SCAN_BAR:Ljava/lang/String; = "bar"

.field private static final SCAN_QR:Ljava/lang/String; = "qr"

.field public static final TAG:Ljava/lang/String; = "H5ScanPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;->checkAndLaunchUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkAndLaunchUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "actionType"    # Ljava/lang/String;
    .param p2, "barcode"    # Ljava/lang/String;

    .line 125
    const-string/jumbo v0, "scanAndRoute"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 127
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    const/4 v1, 0x0

    .line 128
    .local v1, "service":Lcom/alipay/mobile/framework/service/common/SchemeService;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "H5ScanPlugin"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "service":Lcom/alipay/mobile/framework/service/common/SchemeService;
    :cond_0
    return-void
.end method

.method private scan(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 10
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 52
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 53
    .local v2, "parseObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "type":Ljava/lang/String;
    const-string v3, "bar"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    sget-object v3, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;->BARCODE:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    .local v3, "scanType":Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;
    goto :goto_0

    .line 57
    .end local v3    # "scanType":Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;
    :cond_0
    const-string/jumbo v3, "qr"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    sget-object v3, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;->QRCODE:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    .line 64
    .restart local v3    # "scanType":Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;
    :goto_0
    const-string v4, "actionType"

    const-string/jumbo v5, "scan"

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "actionType":Ljava/lang/String;
    const-class v5, Lcom/alipay/android/phone/scancode/export/ScanService;

    .line 66
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/android/phone/scancode/export/ScanService;

    .line 69
    .local v5, "scanService":Lcom/alipay/android/phone/scancode/export/ScanService;
    const-string v6, ""

    .line 70
    .local v6, "sourceId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v7

    instance-of v7, v7, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v7, :cond_1

    .line 71
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v7}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v7

    .line 72
    .local v1, "startParams":Landroid/os/Bundle;
    const-string v8, "appId"

    const-string v9, ""

    invoke-static {v7, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 75
    .end local v1    # "startParams":Landroid/os/Bundle;
    :cond_1
    const/4 v1, 0x0

    const-string v7, "hideAlbum"

    invoke-static {v2, v7, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 76
    .local v1, "hideAlbum":Z
    new-instance v7, Lcom/alipay/android/phone/scancode/export/ScanRequest;

    invoke-direct {v7}, Lcom/alipay/android/phone/scancode/export/ScanRequest;-><init>()V

    invoke-virtual {v7, v3}, Lcom/alipay/android/phone/scancode/export/ScanRequest;->setScanType(Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;)Lcom/alipay/android/phone/scancode/export/ScanRequest;

    move-result-object v7

    .line 77
    invoke-virtual {v7, v6}, Lcom/alipay/android/phone/scancode/export/ScanRequest;->setSourceId(Ljava/lang/String;)Lcom/alipay/android/phone/scancode/export/ScanRequest;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/alipay/android/phone/scancode/export/ScanRequest;->setNotSupportAlbum(Z)Lcom/alipay/android/phone/scancode/export/ScanRequest;

    move-result-object v7

    .line 80
    .local v7, "scanRequest":Lcom/alipay/android/phone/scancode/export/ScanRequest;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;

    invoke-direct {v9, p0, p2, v4, v0}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8, v7, v9}, Lcom/alipay/android/phone/scancode/export/ScanService;->scan(Landroid/app/Activity;Lcom/alipay/android/phone/scancode/export/ScanRequest;Lcom/alipay/android/phone/scancode/export/ScanCallback;)V

    .line 122
    return-void

    .line 60
    .end local v1    # "hideAlbum":Z
    .end local v3    # "scanType":Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;
    .end local v4    # "actionType":Ljava/lang/String;
    .end local v5    # "scanService":Lcom/alipay/android/phone/scancode/export/ScanService;
    .end local v6    # "sourceId":Ljava/lang/String;
    .end local v7    # "scanRequest":Lcom/alipay/android/phone/scancode/export/ScanRequest;
    :cond_2
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 61
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 44
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "scan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5ScanPlugin;->scan(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 48
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 40
    const-string/jumbo v0, "scan"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 41
    return-void
.end method
