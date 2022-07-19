.class final Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;
.super Ljava/lang/Object;
.source "H5SessionTabInfoParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->getOnlineData(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->c:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 113
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;

    .line 115
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;

    const/4 v9, 0x0

    move-object v1, v9

    .line 116
    .local v1, "fallbackStreamProvider":Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;
    move-object v1, v0

    const-string v10, "H5SessionTabInfoParser"

    if-nez v0, :cond_0

    .line 117
    const-string v0, "##tabbar## getOnlineData fallbackStreamProvider == null return"

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void

    .line 121
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 122
    .local v11, "time":J
    const/4 v0, 0x0

    .line 124
    .local v0, "dataObj":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v3, v9

    .line 125
    .local v3, "headers":Ljava/util/Map;
    move-object v13, v2

    .end local v3    # "headers":Ljava/util/Map;
    .local v13, "headers":Ljava/util/Map;
    const-string v3, "Accept"

    const-string v4, "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8,UC/163"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v2, "Accept-Encoding"

    const-string v3, "gzip, deflate"

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v2, "Accept-Language"

    const-string v3, "zh-CN,en-US;q=0.8"

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->a:Ljava/lang/String;

    const-string v3, "GET"

    const/4 v5, 0x0

    const-wide/16 v6, 0x1388

    const/4 v8, 0x0

    .line 131
    move-object v4, v13

    invoke-interface/range {v1 .. v8}, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;->httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BJZ)Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;

    move-result-object v2

    move-object v3, v9

    .line 133
    .local v3, "res":Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;
    move-object v3, v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;->getResStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;->getResStream()Ljava/io/InputStream;

    move-result-object v2

    .line 135
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 136
    .local v2, "data":[B
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->b:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->setTabData(Ljava/lang/String;[B)V

    .line 137
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 138
    .local v4, "dataStr":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v11

    .line 139
    .local v5, "dif":J
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "##tabbar## getOnlineData from entry onPrepareData "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v7

    .line 146
    .end local v2    # "data":[B
    .end local v3    # "res":Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;
    .end local v4    # "dataStr":Ljava/lang/String;
    .end local v5    # "dif":J
    .end local v13    # "headers":Ljava/util/Map;
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->c:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    if-eqz v2, :cond_2

    .line 147
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;->onGetAsyncData(Lcom/alibaba/fastjson/JSONObject;)V

    return-void

    .line 146
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v10, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .end local v2    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->c:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    if-eqz v2, :cond_2

    .line 147
    invoke-interface {v2, v9}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;->onGetAsyncData(Lcom/alibaba/fastjson/JSONObject;)V

    return-void

    .line 150
    :cond_2
    return-void

    .line 146
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->c:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    if-eqz v3, :cond_3

    .line 147
    invoke-interface {v3, v9}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;->onGetAsyncData(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_3
    throw v2
.end method
