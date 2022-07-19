.class public Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;
.super Ljava/lang/Object;
.source "H5PPQueryThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PPQueryThread"

.field private static a:Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;


# instance fields
.field private b:Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/mobile/h5container/api/H5Page;

.field private g:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "http://patriot.cs.pp.cn/api/resource.app.detect"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->e:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->g:Z

    .line 37
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 12

    .line 80
    const-string v0, "secret.alipay.client"

    .line 81
    .local v0, "caller":Ljava/lang/String;
    const-string v1, "fjwofu4n2wg"

    .line 82
    .local v1, "secret":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 83
    .local v2, "uuid":J
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "query="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "sorted_compact_data":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "sign":Ljava/lang/String;
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 87
    .local v6, "requestData":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    const-string v7, "id"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v7, "encrypt"

    const-string v8, "md5"

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v7, "sign"

    invoke-virtual {v6, v7, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v8, 0x0

    move-object v9, v8

    .line 91
    .local v9, "client":Lcom/alibaba/fastjson/JSONObject;
    move-object v9, v7

    const-string v10, "caller"

    const-string v11, "secret.alipay.client"

    invoke-virtual {v7, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v7, "client"

    invoke-virtual {v6, v7, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 94
    .local v8, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v8, v7

    const-string v10, "query"

    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->c:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v7, "type"

    iget v10, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->d:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v7, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v7, "data"

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    nop

    .end local v8    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "client":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_0

    .line 97
    :catch_0
    move-exception v7

    .line 100
    :goto_0
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 184
    if-nez p0, :cond_0

    .line 185
    return-void

    .line 188
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    return-void

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "H5PPQueryThread"

    const-string v2, "silentClose exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    const-string v0, ""

    const-string v1, "H5PPQueryThread"

    .line 158
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 159
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 160
    .local v0, "resultJson":Lcom/alibaba/fastjson/JSONObject;
    const/4 v2, 0x0

    .line 161
    .local v2, "app":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    .line 162
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    .line 163
    .local v4, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v3

    if-eqz v3, :cond_0

    .line 164
    const-string v3, "app"

    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    move-object v2, v3

    .line 167
    .end local v4    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    const/4 v3, 0x0

    .line 168
    .local v3, "detailUrl":Ljava/lang/String;
    const/4 v4, 0x0

    .line 169
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 170
    const-string v5, "detailUrl"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 171
    const-string v5, "packageName"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "detailUrl is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", packageName is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->b:Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;

    invoke-interface {v5, v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;->onQueryResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .end local v0    # "resultJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "app":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "detailUrl":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    return-void

    .line 176
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->b:Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;

    invoke-interface {v2, v0, v0}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;->onQueryResult(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "parseRespnseJsonStr catch exception "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;
    .locals 2

    const-class v0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->a:Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->a:Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;

    .line 43
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->a:Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public doPost(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "param"    # Ljava/lang/String;

    const-string v0, "H5PPQueryThread"

    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, "out":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    .line 106
    .local v2, "in":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 108
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 109
    .local v4, "startTime":J
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->e:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    const/4 v7, 0x0

    move-object v8, v7

    .line 112
    .local v8, "conn":Ljava/net/HttpURLConnection;
    move-object v8, v6

    const-string v9, "POST"

    invoke-virtual {v6, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 113
    const-string v6, "Content-Type"

    const-string v9, "application/json"

    invoke-virtual {v8, v6, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v6, "charset"

    const-string v9, "utf-8"

    invoke-virtual {v8, v6, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 117
    invoke-virtual {v8, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 118
    const/16 v6, 0x1388

    invoke-virtual {v8, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 119
    invoke-virtual {v8, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 120
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 121
    new-instance v6, Ljava/io/PrintWriter;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 122
    move-object v1, v6

    invoke-virtual {v6, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 125
    :cond_0
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/4 v9, 0x0

    .line 126
    .local v9, "statusCode":I
    move v9, v6

    const/16 v10, 0xc8

    if-ne v6, v10, :cond_2

    .line 127
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    .line 128
    invoke-static {v8}, Lcom/alipay/mobile/monitor/traffic/AOPHelper;->getInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v6

    .line 130
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    .local v10, "line":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    .line 133
    .end local v10    # "line":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 135
    :cond_2
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v10, v7

    .line 136
    .local v10, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v10, v6

    const-string v11, "queryUrl"

    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->e:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v6, "queryParam"

    invoke-virtual {v10, v6, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v6, "statusCode"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v11, "h5PageQueryPP"

    invoke-interface {v6, v11, v10}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 141
    .end local v10    # "params":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    .line 143
    .local v10, "httpCost":J
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 144
    .local v7, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v6

    const-string v12, "httpcost"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v12, "h5PageQueryPPCost"

    invoke-interface {v6, v12, v7}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 146
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "http cost "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "startTime":J
    .end local v7    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "statusCode":I
    .end local v10    # "httpCost":J
    goto :goto_2

    .line 150
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 147
    :catch_0
    move-exception v4

    .line 148
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "dopost catch exception "

    invoke-static {v0, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->a(Ljava/io/Closeable;)V

    .line 151
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->a(Ljava/io/Closeable;)V

    .line 152
    nop

    .line 153
    return-object v3

    .line 150
    :goto_3
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->a(Ljava/io/Closeable;)V

    .line 151
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public run()V
    .locals 8

    .line 60
    const-string v0, "hideLoading"

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->g:Z

    const-string v2, "H5PPQueryThread"

    if-eqz v1, :cond_0

    .line 61
    const-string v0, "isRunning return"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void

    .line 65
    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->g:Z

    .line 66
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v5, "showLoading"

    invoke-interface {v1, v5, v4}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 67
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->a()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "requestData":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->doPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "result":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "result is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v1    # "requestData":Ljava/lang/String;
    .end local v5    # "result":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1, v0, v4}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 75
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->g:Z

    .line 76
    return-void

    .line 74
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "catch exception"

    invoke-static {v2, v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 74
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2, v0, v4}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 75
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->g:Z

    throw v1
.end method

.method public setParams(Ljava/lang/String;ILcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "onGetQueryResult"    # Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;
    .param p4, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->c:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->d:I

    .line 49
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->b:Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;

    .line 50
    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 51
    const-string v0, "h5_ppConfig"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    .local v1, "ppConfig":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "h5_ppQueryUrl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->e:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "queryUrl is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H5PPQueryThread"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method
