.class public Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5RpcPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;
    }
.end annotation


# static fields
.field public static final RPC:Ljava/lang/String; = "rpc"

.field public static final TAG:Ljava/lang/String; = "H5RpcPlugin"


# instance fields
.field private a:Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    .line 136
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 137
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 138
    const-string v1, "h5_querySpmBeforeRpc"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 139
    .local v2, "config":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    return-object v2

    .line 143
    .end local v2    # "config":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 24
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v11

    .line 64
    .local v11, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 65
    .local v12, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;->a()Ljava/lang/String;

    move-result-object v13

    .line 66
    .local v13, "querySpmConfig":Ljava/lang/String;
    if-eqz v11, :cond_5

    invoke-interface {v11}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz v12, :cond_5

    .line 67
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v22, v11

    move-object/from16 v21, v12

    move-object/from16 v18, v13

    goto/16 :goto_3

    .line 71
    :cond_0
    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 72
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v14, v0

    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .local v14, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "url"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 73
    .local v15, "url":Ljava/lang/String;
    const-string/jumbo v0, "time"

    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 74
    .local v1, "wait":I
    move v10, v0

    .end local v1    # "wait":I
    .local v10, "wait":I
    if-ltz v0, :cond_2

    const/16 v0, 0xc8

    if-le v10, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v10

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x32

    :goto_1
    move v9, v0

    .line 75
    .local v9, "timeout":I
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v8, v0

    .line 77
    .local v8, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    invoke-direct {v0, v7, v6, v5}, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    move-object v4, v0

    .line 78
    .local v4, "rpcRunnable":Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;
    invoke-interface {v11}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 80
    .local v16, "beginTime":J
    invoke-interface {v11}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    move-object v13, v2

    move-object v14, v3

    .end local v13    # "querySpmConfig":Ljava/lang/String;
    .end local v14    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .local v18, "querySpmConfig":Ljava/lang/String;
    .local v19, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-wide/from16 v2, v16

    move-object/from16 v20, v4

    .end local v4    # "rpcRunnable":Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;
    .local v20, "rpcRunnable":Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;
    move v4, v9

    move-object v5, v8

    move-object/from16 v6, v20

    move-object v7, v12

    move-object/from16 v21, v12

    move-object v12, v8

    .end local v8    # "handler":Landroid/os/Handler;
    .local v12, "handler":Landroid/os/Handler;
    .local v21, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    move-object v8, v11

    move-object/from16 v22, v11

    move v11, v9

    .end local v9    # "timeout":I
    .local v11, "timeout":I
    .local v22, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object/from16 v9, p1

    move/from16 v23, v10

    .end local v10    # "wait":I
    .local v23, "wait":I
    move-object/from16 v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;JILandroid/os/Handler;Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;Lcom/alipay/mobile/nebula/provider/H5LogProvider;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    const-string/jumbo v0, "try{(function(){if(document.querySelectorAll(\"meta[name=data-aspm]\").length==0||document.querySelectorAll(\"body\").length==0){return}var spma=document.querySelectorAll(\"meta[name=data-aspm]\")[0].getAttribute(\"content\");var spmb=document.querySelectorAll(\"body\")[0].getAttribute(\"data-aspm\");if(spma&&spmb){return spma+\".\"+spmb}})()}catch(err){};"

    invoke-interface {v13, v0, v14}, Lcom/alipay/mobile/nebula/webview/APWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 101
    int-to-long v0, v11

    move-object/from16 v2, v20

    .end local v20    # "rpcRunnable":Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;
    .local v2, "rpcRunnable":Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;
    invoke-virtual {v12, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    return-void

    .line 78
    .end local v2    # "rpcRunnable":Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;
    .end local v16    # "beginTime":J
    .end local v18    # "querySpmConfig":Ljava/lang/String;
    .end local v19    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v21    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v22    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v23    # "wait":I
    .restart local v4    # "rpcRunnable":Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;
    .restart local v8    # "handler":Landroid/os/Handler;
    .restart local v9    # "timeout":I
    .restart local v10    # "wait":I
    .local v11, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v12, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .restart local v13    # "querySpmConfig":Ljava/lang/String;
    .restart local v14    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    move-object v2, v4

    move/from16 v23, v10

    move-object/from16 v22, v11

    move-object/from16 v21, v12

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    move-object v12, v8

    move v11, v9

    .end local v4    # "rpcRunnable":Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;
    .end local v8    # "handler":Landroid/os/Handler;
    .end local v9    # "timeout":I
    .end local v10    # "wait":I
    .end local v13    # "querySpmConfig":Ljava/lang/String;
    .end local v14    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v2    # "rpcRunnable":Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;
    .local v11, "timeout":I
    .local v12, "handler":Landroid/os/Handler;
    .restart local v18    # "querySpmConfig":Ljava/lang/String;
    .restart local v19    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v21    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .restart local v22    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v23    # "wait":I
    goto :goto_2

    .line 75
    .end local v2    # "rpcRunnable":Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin$RpcRunnable;
    .end local v18    # "querySpmConfig":Ljava/lang/String;
    .end local v19    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v21    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v22    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v23    # "wait":I
    .restart local v9    # "timeout":I
    .restart local v10    # "wait":I
    .local v11, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v12, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .restart local v13    # "querySpmConfig":Ljava/lang/String;
    .restart local v14    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    move/from16 v23, v10

    move-object/from16 v22, v11

    move-object/from16 v21, v12

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    move v11, v9

    .line 105
    .end local v9    # "timeout":I
    .end local v10    # "wait":I
    .end local v12    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v13    # "querySpmConfig":Ljava/lang/String;
    .end local v14    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .local v11, "timeout":I
    .restart local v18    # "querySpmConfig":Ljava/lang/String;
    .restart local v19    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v21    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .restart local v22    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v23    # "wait":I
    :goto_2
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 106
    return-void

    .line 66
    .end local v15    # "url":Ljava/lang/String;
    .end local v18    # "querySpmConfig":Ljava/lang/String;
    .end local v19    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v21    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v22    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v23    # "wait":I
    .local v11, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v12    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .restart local v13    # "querySpmConfig":Ljava/lang/String;
    :cond_5
    move-object/from16 v22, v11

    move-object/from16 v21, v12

    move-object/from16 v18, v13

    .line 68
    .end local v11    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v12    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v13    # "querySpmConfig":Ljava/lang/String;
    .restart local v18    # "querySpmConfig":Ljava/lang/String;
    .restart local v21    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .restart local v22    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :goto_3
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 3
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 125
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    const/4 v2, 0x0

    .line 129
    .local v2, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    move-object v2, v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->isPageStarted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_2
    :goto_0
    return v1

    .line 126
    .end local v2    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    :cond_3
    :goto_1
    return v1
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 147
    const-string v0, "RPC"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    const/4 v3, 0x0

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcRequest;-><init>(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 49
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "rpc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 56
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 58
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 40
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 41
    const-string/jumbo v0, "rpc"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/rpc/H5RpcPlugin;->a:Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppRpcUpdate;->hasShowDialog:Z

    .line 44
    sput-boolean v0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppWholeNetworkUtil;->hasAsyncUpdate:Z

    .line 45
    return-void
.end method
