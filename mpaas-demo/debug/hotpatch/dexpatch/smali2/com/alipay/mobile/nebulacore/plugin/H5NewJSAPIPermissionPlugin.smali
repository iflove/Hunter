.class public Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5NewJSAPIPermissionPlugin.java"


# instance fields
.field private a:Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;

.field private b:Landroid/os/Handler;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->b:Landroid/os/Handler;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;)Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/alipay/mobile/h5container/api/H5Event;[ZLjava/lang/String;)V
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "alreadyLoadUrl"    # [Z
    .param p3, "source"    # Ljava/lang/String;

    monitor-enter p0

    .line 241
    const/4 v0, 0x0

    :try_start_0
    aget-boolean v1, p2, v0

    if-nez v1, :cond_0

    .line 242
    const-string v1, "H5NewJSAPIPermissionPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "do loadUrl from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto :goto_0

    .line 245
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;
    :cond_0
    const-string v1, "H5NewJSAPIPermissionPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "discard loadUrl from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_0
    const/4 v1, 0x1

    aput-boolean v1, p2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 240
    .end local p1    # "event":Lcom/alipay/mobile/h5container/api/H5Event;
    .end local p2    # "alreadyLoadUrl":[Z
    .end local p3    # "source":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;Lcom/alipay/mobile/h5container/api/H5Event;[ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # [Z
    .param p3, "x3"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;[ZLjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 23
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 95
    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 96
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v8, v0

    .end local v2    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v8, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    const-string v2, "H5NewJSAPIPermissionPlugin"

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 97
    const-string v0, "FATAL ERROR h5Page == null"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return v9

    .line 100
    :cond_0
    iget-boolean v0, v7, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->c:Z

    if-eqz v0, :cond_1

    .line 101
    iput-boolean v9, v7, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->c:Z

    .line 102
    const-string v0, "isForceLoadUrl return"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return v9

    .line 108
    :cond_1
    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    const-string v0, "isTinyApp skip intercept"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return v9

    .line 113
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 116
    .local v10, "params":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v8, v10}, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    return v9

    .line 120
    :cond_3
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 123
    .local v11, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const/4 v0, 0x0

    .line 124
    .local v0, "canRpc":Z
    const/4 v3, 0x0

    .line 125
    .local v3, "canOmitScanApp":Z
    const/4 v4, 0x0

    .line 126
    .local v4, "syncTimeout":I
    const/4 v5, 0x0

    .line 128
    .local v5, "showDisclaimer":Z
    if-eqz v11, :cond_5

    .line 129
    const-string v6, "h5_newJsapiPermissionConfig"

    invoke-interface {v11, v6}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v12, v1

    .line 130
    .local v12, "h5_newJsapiPermissionConfigStr":Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    move-object v13, v1

    .line 131
    .local v13, "h5_newJsapiPermissionConfigObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v13, v6

    if-eqz v6, :cond_4

    invoke-virtual {v13}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 132
    const-string v6, "canRpc"

    invoke-virtual {v13, v6}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 133
    const-string v6, "canOmitScanApp"

    invoke-static {v13, v6, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    .line 134
    const-string v6, "syncrpctimeout"

    invoke-virtual {v13, v6}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 135
    const-string v6, "enableDisclaimer"

    invoke-static {v13, v6, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v5

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v14, "syncTimeout "

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .end local v12    # "h5_newJsapiPermissionConfigStr":Ljava/lang/String;
    .end local v13    # "h5_newJsapiPermissionConfigObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    move v12, v0

    move v13, v3

    move v14, v4

    move v15, v5

    goto :goto_0

    .line 139
    :cond_5
    const-string v6, "config provider == null"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v0

    move v13, v3

    move v14, v4

    move v15, v5

    .line 142
    .end local v0    # "canRpc":Z
    .end local v3    # "canOmitScanApp":Z
    .end local v4    # "syncTimeout":I
    .end local v5    # "showDisclaimer":Z
    .local v12, "canRpc":Z
    .local v13, "canOmitScanApp":Z
    .local v14, "syncTimeout":I
    .local v15, "showDisclaimer":Z
    :goto_0
    if-nez v12, :cond_6

    .line 143
    const-string v0, "switch off skip intercept"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return v9

    .line 147
    :cond_6
    invoke-interface {v8}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v13, :cond_7

    invoke-interface {v8}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isFirstMainDocFromScan(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 149
    const-string v0, "canOmitScanApp skip intercept"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return v9

    .line 153
    :cond_7
    const-string v0, "url"

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "url":Ljava/lang/String;
    invoke-static {v11, v6}, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->a(Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;Ljava/lang/String;)Z

    move-result v16

    .line 158
    .local v16, "isWhiteListDomains":Z
    iget-object v3, v7, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;

    if-nez v3, :cond_8

    .line 159
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;

    iput-object v3, v7, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;

    .line 162
    :cond_8
    iget-object v3, v7, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;

    if-nez v3, :cond_9

    .line 163
    const-string v0, "FATAL ERROR null == h5NewJSApiPermissionProvider"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return v9

    .line 168
    :cond_9
    invoke-interface {v3, v6}, Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;->ifExpiredByUrl(Ljava/lang/String;)Z

    move-result v3

    .line 169
    const/4 v5, 0x1

    if-nez v3, :cond_b

    .line 170
    iget-object v3, v7, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;

    invoke-interface {v3, v6}, Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;->getDynamicRouteByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v1, "redirectUrl":Ljava/lang/String;
    move-object v1, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 174
    return v5

    .line 176
    :cond_a
    const-string v0, "not expired"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return v9

    .line 180
    .end local v1    # "redirectUrl":Ljava/lang/String;
    :cond_b
    iget-object v0, v7, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;

    invoke-interface {v8}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;->generateRequestData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "requestData":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestData "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-array v0, v5, [Z

    aput-boolean v9, v0, v9

    move-object v3, v0

    .line 183
    .local v3, "alreadyLoadUrl":[Z
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin$1;

    move-object/from16 v2, p1

    invoke-direct {v0, v7, v2, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;Lcom/alipay/mobile/h5container/api/H5Event;[Z)V

    move-object v1, v0

    .line 191
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v0, v7, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;

    new-instance v9, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin$2;

    move-object/from16 v17, v10

    move-object v10, v0

    .end local v10    # "params":Lcom/alibaba/fastjson/JSONObject;
    .local v17, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v0, v9

    move-object/from16 v18, v11

    move-object v11, v1

    .end local v1    # "runnable":Ljava/lang/Runnable;
    .local v11, "runnable":Ljava/lang/Runnable;
    .local v18, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v19, v3

    .end local v3    # "alreadyLoadUrl":[Z
    .local v19, "alreadyLoadUrl":[Z
    move-object/from16 v3, p1

    move/from16 v20, v12

    move-object v12, v4

    .end local v4    # "requestData":Ljava/lang/String;
    .local v12, "requestData":Ljava/lang/String;
    .local v20, "canRpc":Z
    move v4, v15

    const/16 v21, 0x1

    move-object v5, v8

    move-object/from16 v22, v6

    .end local v6    # "url":Ljava/lang/String;
    .local v22, "url":Ljava/lang/String;
    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;ZLcom/alipay/mobile/h5container/api/H5Event;ZLcom/alipay/mobile/h5container/api/H5Page;[Z)V

    invoke-interface {v10, v12, v9}, Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;->requestPermissionInfo(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider$PermissionRequestCallback;)V

    .line 223
    if-nez v16, :cond_c

    .line 224
    iget-object v0, v7, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->b:Landroid/os/Handler;

    int-to-long v1, v14

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    :cond_c
    if-nez v16, :cond_d

    return v21

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 5
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 230
    const-string v0, "H5NewJSAPIPermissionPlugin"

    const-string v1, "force load url"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 232
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "url"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "javascript:location.replace(\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->c:Z

    .line 235
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 236
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 237
    return v2
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 5
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 57
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isTinyApp"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 58
    .local v0, "isTinyApp":Z
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "MINI-PROGRAM-WEB-VIEW-TAG"

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "miniWebViewTag":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 9
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 67
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hasH5Pkg"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    const-string v0, "h5_noRpcInOfflinePkg"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "noRpcInOfflinePkg":Ljava/lang/String;
    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "H5NewJSAPIPermissionPlugin"

    if-eqz v1, :cond_0

    .line 72
    const-string v1, "hasPackage skip intercept page"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return v2

    .line 75
    :cond_0
    const-string v1, "url"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "pageUrl":Ljava/lang/String;
    const-string v4, ""

    .line 77
    .local v4, "h5PageHost":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 78
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    :cond_1
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "onlineHost"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "vHost":Ljava/lang/String;
    const-string v6, ""

    .line 82
    .local v6, "hostOfVhost":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 83
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 86
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "hasPackage skip intercept page host: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "vhost: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return v2

    .line 91
    .end local v0    # "noRpcInOfflinePkg":Ljava/lang/String;
    .end local v1    # "pageUrl":Ljava/lang/String;
    .end local v4    # "h5PageHost":Ljava/lang/String;
    .end local v5    # "vHost":Ljava/lang/String;
    .end local v6    # "hostOfVhost":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private static a(Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;Ljava/lang/String;)Z
    .locals 3
    .param p0, "configProvider"    # Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .param p1, "url"    # Ljava/lang/String;

    .line 261
    if-eqz p0, :cond_0

    .line 262
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->getNewDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "domainSuffix":Ljava/lang/String;
    const-string v1, "h5_newJsapiDomainWhiteList"

    invoke-interface {p0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "regexArray":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 266
    .end local v0    # "domainSuffix":Ljava/lang/String;
    .end local v1    # "regexArray":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static b(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 6
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 251
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    .line 252
    .local v0, "builder":Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 253
    .local v3, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "force"

    invoke-virtual {v1, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v1, "h5PageDoLoadUrl"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 255
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 256
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 257
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 258
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 47
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 48
    .local v1, "action":Ljava/lang/String;
    move-object v1, v0

    const-string v2, "h5PageShouldLoadUrl"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v0

    return v0

    .line 50
    :cond_0
    const-string v0, "forceLoadUrl"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0

    .line 53
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 41
    const-string v0, "h5PageShouldLoadUrl"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 42
    const-string v0, "forceLoadUrl"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onRelease()V
    .locals 0

    .line 271
    invoke-super {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onRelease()V

    .line 272
    return-void
.end method
