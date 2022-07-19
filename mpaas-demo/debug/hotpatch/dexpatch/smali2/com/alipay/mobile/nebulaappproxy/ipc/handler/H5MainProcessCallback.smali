.class public Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5MainProcessCallback;
.super Ljava/lang/Object;
.source "H5MainProcessCallback.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Lcom/alipay/mobile/h5container/service/H5ConfigService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Message;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "message"    # Landroid/os/Message;
    .param p1, "data"    # Landroid/os/Bundle;

    .line 85
    const-string v0, "getAuthCodeOpenAppId"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 86
    .local v2, "openAppId":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "H5MainProcessCallback"

    const-string v3, "handlerGetAuthCode appId isEmpty, return"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    const-string/jumbo v0, "nebulaAuthCodeKey"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "key":Ljava/lang/String;
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5BizProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5BizProvider;

    .line 91
    .local v1, "bizProvider":Lcom/alipay/mobile/nebula/provider/H5BizProvider;
    move-object v1, v3

    if-eqz v3, :cond_1

    .line 92
    new-instance v3, Lcom/alipay/mobile/nebula/model/H5BizModel;

    iget-object v4, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v3, v4}, Lcom/alipay/mobile/nebula/model/H5BizModel;-><init>(Landroid/os/Messenger;)V

    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/nebula/provider/H5BizProvider;->addBizCallback(Ljava/lang/String;Lcom/alipay/mobile/nebula/model/H5BizModel;)V

    .line 94
    :cond_1
    invoke-static {v2, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthUtil;->startOpenAuthApp(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Event;Landroid/os/Message;)Z
    .locals 5
    .param p0, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "message"    # Landroid/os/Message;

    .line 134
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "tradePay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    const-string/jumbo v1, "startSpeech"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    const-string v1, "isSpeechAvailable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    const-string v1, "AlipayNewYearNebulaPlugin.showFuCard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 139
    :cond_1
    :goto_0
    const-string v1, "H5MainProcessCallback"

    const-string v2, "handlerBizInMainProcess use H5ProcessTransActivity to sendEvent"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessTransActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    .line 143
    .local v2, "intent":Landroid/content/Intent;
    move-object v2, v1

    const/high16 v3, 0x10000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->H5EventToBundle(Lcom/alipay/mobile/h5container/api/H5Event;)Landroid/os/Bundle;

    move-result-object v1

    .line 146
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 149
    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;

    .line 150
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v4

    invoke-direct {v3, v4, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;-><init>(Lcom/alipay/mobile/h5container/api/H5Bridge;Lcom/alipay/mobile/h5container/api/H5Event;Landroid/os/Message;)V

    .line 155
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessTransActivity;->setH5Bridge(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 156
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v3

    .line 157
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    .line 158
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v4

    .line 159
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v4

    .line 158
    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 161
    const/4 v3, 0x1

    return v3
.end method

.method private static b(Landroid/os/Message;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "message"    # Landroid/os/Message;
    .param p1, "data"    # Landroid/os/Bundle;

    .line 99
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 100
    .local v2, "extra":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "isTinyApp"

    invoke-virtual {v0, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 105
    .local v1, "activity":Landroid/content/Context;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 109
    :cond_0
    const-string v0, "H5MainProcessCallback"

    if-nez v1, :cond_1

    .line 110
    const-string v4, "activity == null"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    invoke-static {p1, v2, v1, v3}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->toH5EventWhitExtra(Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/Context;Z)Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v3

    .line 115
    .local v3, "mainProcessEvent":Lcom/alipay/mobile/h5container/api/H5Event;
    const-class v4, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 118
    .local v4, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    invoke-static {v3, p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5MainProcessCallback;->a(Lcom/alipay/mobile/h5container/api/H5Event;Landroid/os/Message;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handlerBizInMainProcess "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_2
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;

    .line 125
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v5

    invoke-direct {v0, v5, v3, p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;-><init>(Lcom/alipay/mobile/h5container/api/H5Bridge;Lcom/alipay/mobile/h5container/api/H5Event;Landroid/os/Message;)V

    .line 129
    .local v0, "h5BridgeContext":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    invoke-virtual {v4, v3, v0}, Lcom/alipay/mobile/h5container/service/H5Service;->sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    .line 131
    .end local v0    # "h5BridgeContext":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5MainProcessCallback;->a:Lcom/alipay/mobile/h5container/service/H5ConfigService;

    if-nez v0, :cond_0

    .line 54
    const-class v0, Lcom/alipay/mobile/h5container/service/H5ConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5ConfigService;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5MainProcessCallback;->a:Lcom/alipay/mobile/h5container/service/H5ConfigService;

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "h5ConfigService "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5MainProcessCallback;->a:Lcom/alipay/mobile/h5container/service/H5ConfigService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5MainProcessCallback"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 60
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5MainProcessCallback;->a:Lcom/alipay/mobile/h5container/service/H5ConfigService;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 62
    const-string v2, "h5_disableConfigServiceOpt"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "yes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5MainProcessCallback;->a:Lcom/alipay/mobile/h5container/service/H5ConfigService;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5ConfigService;->addExternalPlugins()V

    .line 66
    :cond_1
    if-eqz p1, :cond_3

    .line 68
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    .line 69
    .local v3, "data":Landroid/os/Bundle;
    move-object v3, v2

    const-string/jumbo v4, "msg_type"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v2

    .line 70
    .local v2, "what":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "registerReqBizHandler Process "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " what "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const v1, 0x1312d43

    if-ne v2, v1, :cond_2

    .line 75
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5MainProcessCallback;->b(Landroid/os/Message;Landroid/os/Bundle;)V

    goto :goto_0

    .line 76
    :cond_2
    const v1, 0xbebf0bc

    if-ne v2, v1, :cond_3

    .line 78
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5MainProcessCallback;->a(Landroid/os/Message;Landroid/os/Bundle;)V

    .line 81
    .end local v2    # "what":I
    .end local v3    # "data":Landroid/os/Bundle;
    :cond_3
    :goto_0
    const/4 v1, 0x1

    return v1
.end method
