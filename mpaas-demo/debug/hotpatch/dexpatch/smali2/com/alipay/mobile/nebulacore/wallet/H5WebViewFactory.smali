.class public Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;
.super Ljava/lang/Object;
.source "H5WebViewFactory.java"


# static fields
.field private static a:Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;->a:Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 55
    sget-boolean v0, Lcom/alipay/mobile/h5container/api/H5Flag;->initUcNormal:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 56
    const-string v0, "H5WebViewFactory"

    const-string v2, "uc init throw exception, so not need init "

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return v1

    .line 62
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 63
    .local v3, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v3, v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "h5_first_init_use_android_webView_biz"

    invoke-interface {v3, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 66
    .local v2, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    return v4

    .line 73
    .end local v2    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->useSysWebWillCrash()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    return v4

    .line 78
    :cond_2
    instance-of v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v0, :cond_3

    .line 79
    return v1

    .line 82
    :cond_3
    const-string v0, "firstInitAndroidWebview"

    invoke-static {p2, v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    return v1

    .line 91
    :cond_4
    if-eqz v3, :cond_5

    .line 92
    const-string v0, "h5_first_init_use_android_webView_startPage"

    invoke-interface {v3, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "no"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93
    return v4

    .line 96
    :cond_5
    return v1
.end method

.method public static instance()Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;
    .locals 1

    .line 47
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;->a:Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;->a:Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;

    .line 50
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;->a:Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;

    return-object v0
.end method


# virtual methods
.method public createWebView(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebView;
    .locals 17
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bizType"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "startParams"    # Landroid/os/Bundle;

    .line 102
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 103
    .local v5, "time":J
    invoke-static/range {p2 .. p4}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->getWebViewType(Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v7

    .line 105
    .local v7, "webViewType":Lcom/alipay/mobile/nebula/webview/WebViewType;
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v8, v0

    .line 106
    .local v8, "param":Lcom/alibaba/fastjson/JSONObject;
    const/4 v9, 0x0

    .line 108
    .local v9, "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    sget-object v0, Lcom/alipay/mobile/nebula/webview/WebViewType;->RN_VIEW:Lcom/alipay/mobile/nebula/webview/WebViewType;

    const-string v10, "degradeWebView"

    const/4 v11, 0x1

    .line 115
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 108
    const/4 v13, 0x0

    const-string v14, "H5WebViewFactory"

    if-ne v7, v0, :cond_1

    .line 109
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getRnService()Lcom/alipay/mobile/h5container/service/RnService;

    move-result-object v0

    move-object v15, v13

    .line 110
    .local v15, "rnService":Lcom/alipay/mobile/h5container/service/RnService;
    move-object v15, v0

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    const-string v0, "create rn view"

    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v15, v3}, Lcom/alipay/mobile/h5container/service/RnService;->createWebView(Landroid/content/Context;)Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v0

    .line 117
    :goto_0
    goto :goto_1

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v8, v10, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "create ReactNebulaView fail:"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 119
    :cond_0
    const-string v0, "failed to get rn service"

    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 108
    .end local v15    # "rnService":Lcom/alipay/mobile/h5container/service/RnService;
    :cond_1
    const/4 v15, 0x0

    .line 124
    :goto_1
    sget-object v0, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    const-string v11, "createAndroidWebViewException"

    const-string v13, "create android webview failed"

    move-object/from16 v16, v9

    .end local v9    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .local v16, "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    const/4 v9, 0x0

    if-ne v7, v0, :cond_6

    .line 125
    sget-boolean v0, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    if-nez v0, :cond_2

    invoke-static {v1, v2, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    :try_start_1
    const-string v0, "uc is not Ready canUseAndroidWebView create android web view "

    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    invoke-direct {v0, v3}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    .end local v16    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .local v0, "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    move-object/from16 v16, v0

    goto :goto_3

    .line 129
    .end local v0    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .restart local v16    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :catchall_1
    move-exception v0

    .line 130
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v14, v13, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    invoke-static {v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    invoke-virtual {v9, v11, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 132
    throw v0

    .line 135
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getUcService()Lcom/alipay/mobile/h5container/service/UcService;

    move-result-object v0

    .line 136
    .local v15, "ucService":Lcom/alipay/mobile/h5container/service/UcService;
    move-object v15, v0

    if-nez v0, :cond_3

    .line 137
    const-string v0, "failed to get uc service"

    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 140
    :cond_3
    :try_start_2
    const-string v0, "create uc web view"

    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->disableHWACByUCStyle()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    nop

    .line 143
    invoke-static {v4, v2}, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->disableHardwareAccelerate(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 142
    :goto_2
    invoke-virtual {v15, v3, v0}, Lcom/alipay/mobile/h5container/service/UcService;->createWebView(Landroid/content/Context;Z)Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    move-object/from16 v16, v0

    .end local v16    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .local v0, "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    goto :goto_3

    .line 145
    .end local v0    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .restart local v16    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->isAbove14Level()Z

    move-result v0

    invoke-virtual {v15, v3, v0}, Lcom/alipay/mobile/h5container/service/UcService;->createWebView(Landroid/content/Context;Z)Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 151
    .end local v16    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .restart local v0    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    move-object/from16 v16, v0

    goto :goto_3

    .line 147
    .end local v0    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .restart local v16    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :catchall_2
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v8, v10, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v10, "create uc web view failed"

    invoke-static {v14, v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    invoke-static {v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    const-string v12, "createUCWebViewException"

    invoke-virtual {v10, v12, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 156
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v15    # "ucService":Lcom/alipay/mobile/h5container/service/UcService;
    :cond_6
    :goto_3
    if-nez v16, :cond_7

    sget-boolean v0, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    if-nez v0, :cond_7

    sget-object v0, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v7, v0, :cond_7

    .line 158
    invoke-static {v9}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->sendUcReceiver(Z)V

    .line 161
    :cond_7
    if-nez v16, :cond_9

    .line 163
    :try_start_3
    const-string v0, "create android web view"

    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    invoke-direct {v0, v3}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v16, v0

    .line 176
    goto :goto_4

    .line 165
    :catchall_3
    move-exception v0

    move-object v15, v0

    .line 166
    .local v15, "throwable":Ljava/lang/Throwable;
    invoke-static {v14, v13, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    invoke-static {v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0, v11, v15}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 171
    instance-of v0, v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v0, :cond_8

    goto :goto_4

    .line 173
    :cond_8
    throw v15

    .line 178
    .end local v15    # "throwable":Ljava/lang/Throwable;
    :cond_9
    :goto_4
    if-eqz v16, :cond_a

    .line 179
    invoke-interface/range {v16 .. v16}, Lcom/alipay/mobile/nebula/webview/APWebView;->getVersion()Ljava/lang/String;

    move-result-object v15

    .line 180
    .local v15, "version":Ljava/lang/String;
    const-string v0, "version"

    invoke-virtual {v8, v0, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "webview version: "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v15    # "version":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 185
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 186
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    move-object v10, v15

    .line 187
    .local v10, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v10, v0

    if-eqz v0, :cond_b

    .line 188
    const-string v0, "h5PageCreateWebView"

    invoke-interface {v10, v0, v8}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 192
    .end local v10    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_b
    if-eqz v16, :cond_c

    .line 193
    sget-object v0, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    invoke-interface/range {v16 .. v16}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v10

    if-ne v0, v10, :cond_c

    .line 194
    const-string v0, "appId"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "appId":Ljava/lang/String;
    const-string v10, "isTinyApp"

    invoke-static {v4, v10, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v9

    .line 196
    .local v9, "isTinyApp":Z
    const-string v10, "H5_WebView_Type"

    invoke-static {v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    .line 197
    invoke-virtual {v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    const-string v12, "AndroidWebView"

    invoke-virtual {v10, v12, v11}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v11}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    .line 198
    invoke-virtual {v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    const-string v12, "\u4f7f\u7528Android\u7cfb\u7edfWebView"

    invoke-virtual {v10, v12, v11}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    .line 196
    invoke-static {v10}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 199
    if-eqz v9, :cond_c

    .line 200
    const-string v10, "MTBIZ_H5"

    const-string v12, "H5_TinyApp_Use_AndroidWebView"

    invoke-static {v10, v12, v0, v11}, Lcom/alipay/mobile/nebula/log/H5Logger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 206
    .end local v0    # "appId":Ljava/lang/String;
    .end local v9    # "isTinyApp":Z
    :cond_c
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v9, "pageLoad|createWebViewFinishPoint"

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    .line 211
    .local v9, "elapse":J
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "createWebView elapse "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "create_webView"

    invoke-static {v0, v0, v5, v6}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 213
    return-object v16
.end method
