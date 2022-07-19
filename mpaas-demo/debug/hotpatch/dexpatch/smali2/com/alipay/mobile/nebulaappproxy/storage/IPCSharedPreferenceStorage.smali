.class public Lcom/alipay/mobile/nebulaappproxy/storage/IPCSharedPreferenceStorage;
.super Ljava/lang/Object;
.source "IPCSharedPreferenceStorage.java"

# interfaces
.implements Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;


# static fields
.field private static final a:Lcom/alipay/mobile/nebulaappproxy/storage/IPCSharedPreferenceStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/storage/IPCSharedPreferenceStorage;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/storage/IPCSharedPreferenceStorage;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/storage/IPCSharedPreferenceStorage;->a:Lcom/alipay/mobile/nebulaappproxy/storage/IPCSharedPreferenceStorage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static a()Lcom/alipay/mobile/nebulaappproxy/storage/IPCSharedPreferenceStorage;
    .locals 1

    .line 23
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/storage/IPCSharedPreferenceStorage;->a:Lcom/alipay/mobile/nebulaappproxy/storage/IPCSharedPreferenceStorage;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 27
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->registerMainProcProxyListener(Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;)V

    .line 31
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->initLoadStorage()V

    .line 32
    return-void
.end method

.method public getAssistantPanelSwitch()Z
    .locals 1

    .line 64
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getAssistantPanelSwitch()Z

    move-result v0

    return v0
.end method

.method public getDefaultCurrentStorageSize(Ljava/lang/String;)I
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 48
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getMultiProcessService()Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;->getDefaultCurrentStorageSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public putInt(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "need2SyncAllLite"    # Z

    .line 54
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getMultiProcessService()Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;->putInt(Ljava/lang/String;IZ)V

    .line 55
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getMultiProcessService()Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;->remove(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setPerformancePanelVisible(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 41
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getMultiProcessService()Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;->setPerformancePanelVisible(Ljava/lang/String;Z)V

    .line 42
    return-void
.end method

.method public setVConsoleVisible(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 36
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getMultiProcessService()Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;->setVConsoleVisible(Ljava/lang/String;Z)V

    .line 37
    return-void
.end method
