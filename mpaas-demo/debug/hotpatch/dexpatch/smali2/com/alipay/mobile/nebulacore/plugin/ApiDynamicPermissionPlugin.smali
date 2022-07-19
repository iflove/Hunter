.class public Lcom/alipay/mobile/nebulacore/plugin/ApiDynamicPermissionPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "ApiDynamicPermissionPlugin.java"


# static fields
.field public static final INTERNAL_API:Ljava/lang/String; = "internalAPI"

.field public static final TAG:Ljava/lang/String;

.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 38

    .line 27
    const-class v0, Lcom/alipay/mobile/nebulacore/plugin/ApiDynamicPermissionPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/ApiDynamicPermissionPlugin;->TAG:Ljava/lang/String;

    .line 32
    const-string v1, "setOptionMenu"

    const-string v2, "showOptionMenu"

    const-string v3, "inputFocus4Android"

    const-string v4, "getConfig"

    const-string v5, "getLifestyleInfo"

    const-string v6, "addFollow"

    const-string v7, "startApp"

    const-string v8, "requestTemplateData"

    const-string v9, "getAppType"

    const-string v10, "onAppPerfEvent"

    const-string v11, "getShareImageUrl"

    const-string v12, "hideCustomKeyBoard"

    const-string v13, "resetNativeKeyBoardInput"

    const-string v14, "updateNativeKeyBoardInput"

    const-string v15, "getStartupParams"

    const-string v16, "getConfig4Appx"

    const-string v17, "tinyDebugConsole"

    const-string v18, "add2Favorite"

    const-string v19, "cancelKeepFavorite"

    const-string v20, "shareTinyAppMsg"

    const-string v21, "setAppxVersion"

    const-string v22, "showBackHome"

    const-string v23, "getComponentAuth"

    const-string v24, "getBusinessAuth"

    const-string v25, "getAuthorize"

    const-string v26, "appxrpc"

    const-string v27, "launchApp"

    const-string v28, "goBackThirdPartApp"

    const-string v29, "tinyAppStandardLog"

    const-string v30, "shareToAlipayContact"

    const-string v31, "startMiniService"

    const-string v32, "tinyAppStandardLog"

    const-string v33, "addPkgRes"

    const-string v34, "saveSnapshot"

    const-string v35, "executeDefaultBehavior"

    const-string v36, "initialTraceDebug"

    const-string v37, "postMethodTrace"

    filled-new-array/range {v1 .. v37}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/ApiDynamicPermissionPlugin;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 7

    .line 99
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 100
    sget-object p0, Lcom/alipay/mobile/nebulacore/plugin/ApiDynamicPermissionPlugin;->TAG:Ljava/lang/String;

    const-string p1, "internalApi...not H5Page, do not allowed"

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 105
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    const-string v1, "isTinyApp"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 107
    const-string v3, "enableDSL"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    if-nez v1, :cond_1

    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    sget-object p0, Lcom/alipay/mobile/nebulacore/plugin/ApiDynamicPermissionPlugin;->TAG:Ljava/lang/String;

    const-string p1, "internalApi...do not allowed"

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 115
    if-nez v0, :cond_2

    .line 116
    sget-object p0, Lcom/alipay/mobile/nebulacore/plugin/ApiDynamicPermissionPlugin;->TAG:Ljava/lang/String;

    const-string p1, "internalApi...param is null"

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void

    .line 120
    :cond_2
    const-string v1, "method"

    const-string v3, ""

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    sget-object p0, Lcom/alipay/mobile/nebulacore/plugin/ApiDynamicPermissionPlugin;->TAG:Ljava/lang/String;

    const-string p1, "internalApi...realMethod is null"

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void

    .line 127
    :cond_3
    nop

    .line 128
    sget-object v3, Lcom/alipay/mobile/nebulacore/plugin/ApiDynamicPermissionPlugin;->a:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 129
    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 130
    nop

    .line 131
    const/4 v2, 0x1

    goto :goto_1

    .line 128
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 134
    :cond_5
    :goto_1
    if-nez v2, :cond_8

    .line 136
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v2

    .line 137
    if-nez v2, :cond_6

    .line 138
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/ApiDynamicPermissionPlugin;->TAG:Ljava/lang/String;

    const-string v1, "internalApi...mixActionService is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->FORBIDDEN:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 140
    return-void

    .line 143
    :cond_6
    invoke-interface {v2}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->getSupportedInternalApiList()Ljava/util/List;

    move-result-object v2

    .line 144
    if-eqz v2, :cond_7

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 145
    :cond_7
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/ApiDynamicPermissionPlugin;->TAG:Ljava/lang/String;

    const-string v1, "internalApi...realMethod is not allowed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->FORBIDDEN:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 147
    return-void

    .line 151
    :cond_8
    const/4 v2, 0x0

    const-string v3, "param"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 153
    sget-object v2, Lcom/alipay/mobile/nebulacore/plugin/ApiDynamicPermissionPlugin;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "internalApi...dispatch plugin: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/h5container/api/H5Event;->setAction(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/h5container/api/H5Event;->setParam(Lcom/alibaba/fastjson/JSONObject;)V

    .line 156
    const-class v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 157
    if-eqz v0, :cond_9

    .line 158
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/h5container/service/H5Service;->sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    .line 160
    :cond_9
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 84
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "action":Ljava/lang/String;
    const-string v1, "internalAPI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/ApiDynamicPermissionPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 89
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 74
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 75
    const-string v0, "internalAPI"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onRelease()V
    .locals 0

    .line 80
    return-void
.end method
