.class public Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5MiniProgramCommonInfoPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5MiniProgramCommonInfoPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 152
    .local v0, "appType":Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 153
    .local v3, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v3, v1

    if-nez v1, :cond_0

    .line 154
    return-object v2

    .line 157
    :cond_0
    invoke-interface {v3, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    move-object v4, v2

    .line 158
    .local v4, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v4, v1

    if-nez v1, :cond_1

    .line 159
    const-string v1, "H5MiniProgramCommonInfoPlugin"

    const-string v5, "getAppType..appInfo is null"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-object v2

    .line 163
    :cond_1
    const-string v1, "no"

    .line 164
    .local v1, "enableDSL":Ljava/lang/String;
    iget-object v5, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 165
    const-string v6, "launchParams"

    invoke-static {v5, v6, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 166
    .local v2, "launchParams":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v5

    if-eqz v5, :cond_2

    .line 167
    const-string v5, "enableDSL"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;->H5_OR_OTHER:Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

    .line 171
    iget v5, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 173
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;->OPEN_PLATFORM_MINI:Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

    goto :goto_0

    .line 174
    :cond_3
    const-string v5, "yes"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 176
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;->INTERNAL_MINI:Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

    .line 178
    :cond_4
    :goto_0
    return-object v0
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 9
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const-string v1, "H5MiniProgramCommonInfoPlugin"

    if-nez v0, :cond_0

    .line 68
    const-string v0, "getLoginToken..h5Page is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 70
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "appId"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 74
    .local v3, "appId":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "parentAppId"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const-string v0, "getLoginToken..appId is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 79
    return-void

    .line 83
    :cond_1
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin;->a(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

    move-result-object v0

    move-object v4, v2

    .line 84
    .local v4, "appType":Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;
    move-object v4, v0

    if-nez v0, :cond_2

    .line 85
    const-string v0, "getLoginToken..appType is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 87
    return-void

    .line 91
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;->H5_OR_OTHER:Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

    if-ne v4, v0, :cond_3

    .line 92
    const-string v0, "getLoginToken..H5 is not allowed"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->FORBIDDEN:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 94
    return-void

    .line 97
    :cond_3
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    move-object v5, v2

    .line 98
    .local v5, "loginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    move-object v5, v0

    if-nez v0, :cond_4

    .line 99
    const-string v0, "getLoginToken...loginProvider is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 101
    return-void

    .line 104
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->shouldLoginTokenUseClearText()Z

    move-result v0

    const/4 v1, 0x0

    const-string v6, "encrypted"

    const-string v7, "token"

    if-nez v0, :cond_5

    .line 105
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 106
    .local v2, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-interface {p1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 109
    return-void

    .line 113
    .end local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    invoke-interface {v5}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getLoginToken()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "loginToken":Ljava/lang/String;
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 115
    .restart local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v8

    invoke-virtual {v8, v7, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-interface {p1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 118
    return-void
.end method

.method private static b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 6
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 128
    .local v2, "appId":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "H5MiniProgramCommonInfoPlugin"

    const-string v1, "getAppType..appId is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 131
    return-void

    .line 134
    :cond_0
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin;->a(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;

    move-result-object v0

    move-object v3, v1

    .line 135
    .local v3, "appType":Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;
    move-object v3, v0

    if-nez v0, :cond_1

    .line 136
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 137
    return-void

    .line 140
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "getAppType...appType="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;->ordinal()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 142
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v4, "appType"

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-interface {p1, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    nop

    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "appType":Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin$WalletAppType;
    return-void

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAppType...e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;)V

    .line 146
    const/16 v1, 0x23

    const-string v2, "\u83b7\u53d6\u5931\u8d25"

    invoke-interface {p1, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 148
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 53
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAppType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getLoginToken"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5MiniProgramCommonInfoPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 58
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 46
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 47
    const-string v0, "getAppType"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v0, "getLoginToken"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 49
    return-void
.end method
