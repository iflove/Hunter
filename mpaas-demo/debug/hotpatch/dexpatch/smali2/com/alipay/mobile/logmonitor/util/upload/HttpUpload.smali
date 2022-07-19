.class public Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;
.super Ljava/lang/Object;
.source "HttpUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

.field private f:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:J

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "diagnoseTask"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .param p5, "callback"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->b:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->c:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->d:Landroid/content/Context;

    .line 50
    iput-object p4, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->e:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    .line 51
    iput-object p5, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->f:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    .line 52
    return-void
.end method

.method private a()V
    .locals 18

    .line 63
    move-object/from16 v1, p0

    const-string/jumbo v2, "taskType"

    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_13

    .line 70
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->b:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v5, v4

    .line 72
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_18

    if-nez v5, :cond_1

    goto/16 :goto_12

    .line 84
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/monitor/util/NetUtils;->getNetworkType()Ljava/lang/String;

    move-result-object v4

    .line 85
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->e:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-boolean v0, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->f:Z

    if-eqz v0, :cond_2

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v6, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a:Ljava/lang/String;

    const-string v7, "ForceUpload!"

    invoke-interface {v0, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_2
    :try_start_0
    const-string v0, "WIFI"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 90
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->f:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v0, :cond_3

    .line 91
    sget-object v6, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->NET_NOT_MATCH:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is no wifi network, can not upload"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_3
    return-void

    .line 98
    :cond_4
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    .line 101
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v6, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a:Ljava/lang/String;

    const-string/jumbo v7, "upload begin"

    invoke-interface {v0, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a()Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    move-result-object v0

    iget-object v7, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->e:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    sget-object v8, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->FILE_UPLOADING:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    iget-object v9, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->h:Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v9}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 104
    nop

    .line 105
    nop

    .line 106
    nop

    .line 107
    nop

    .line 110
    const/4 v7, 0x0

    :try_start_1
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 111
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 112
    new-instance v0, Ljava/net/URL;

    iget-object v3, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->c:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 113
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x14

    if-ge v0, v13, :cond_5

    instance-of v0, v3, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_5

    .line 117
    move-object v0, v3

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;->a()Lcom/alipay/mobile/logmonitor/util/upload/TLSv12SocketFactory;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 120
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    const-string/jumbo v13, "url: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->c:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v13, ", fileName: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->e:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v13, v13, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v13, ", connectSpend: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 127
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 128
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 129
    const-string v0, "POST"

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 133
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->e:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "FileName"

    iget-object v11, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->e:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v11, v11, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->d:Ljava/lang/String;

    invoke-virtual {v3, v0, v11}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "FromType"

    iget-object v11, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->e:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v11, v11, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->i:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-virtual {v11}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v0, v11}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, "NetworkType"

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "ClientID"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "DeviceID"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "Process"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "ProductId"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "ProductVer"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->e:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-boolean v0, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->p:Z

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->e:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->i:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    sget-object v4, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->TASK_BY_MANUAL:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    if-ne v0, v4, :cond_7

    .line 144
    :cond_6
    const-string/jumbo v0, "type"

    const-string/jumbo v4, "system"

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_7
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->g:Ljava/util/Map;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    if-lez v0, :cond_a

    .line 148
    :try_start_4
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 149
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 150
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 151
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 154
    invoke-virtual {v3, v11, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    goto :goto_1

    .line 158
    :cond_9
    goto :goto_2

    .line 156
    :catchall_1
    move-exception v0

    .line 161
    :cond_a
    :goto_2
    :try_start_5
    const-string v0, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "Charset"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "Content-Type"

    const-string/jumbo v4, "text/html"

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "Content-Length"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "Cache-Control"

    const-string/jumbo v4, "no-cache"

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 170
    const/16 v0, 0x7530

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 171
    const v0, 0xea60

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->j:J

    .line 174
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 175
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 176
    const/16 v0, 0x2000

    :try_start_6
    new-array v0, v0, [B

    .line 179
    :goto_3
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_b

    .line 180
    invoke-virtual {v4, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 181
    iget-wide v11, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->i:J

    int-to-long v13, v5

    add-long/2addr v11, v13

    iput-wide v11, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->i:J

    goto :goto_3

    .line 183
    :cond_b
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 184
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 186
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->e:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->s:Ljava/lang/String;

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 188
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->e:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->i:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-virtual {v0}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_4

    .line 187
    :cond_c
    move-object/from16 v17, v0

    .line 190
    :goto_4
    sget-object v11, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->MONITOR:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    iget-object v12, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->c:Ljava/lang/String;

    iget-wide v13, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->i:J

    const-wide/16 v15, 0x0

    invoke-static/range {v11 .. v17}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->obtain(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;JJLjava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    move-result-object v0

    .line 192
    iget-object v5, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->e:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v5, v5, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 193
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->report()V

    .line 195
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v9

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    const-string/jumbo v9, "traficLength: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->i:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 200
    const-string v9, ", responseCode: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    const-string v9, ", spendTime: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a:Ljava/lang/String;

    invoke-interface {v5, v6, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_d

    .line 206
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->f:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v0, :cond_e

    .line 207
    invoke-interface {v0, v2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onSuccess(Ljava/lang/String;)V

    goto :goto_5

    .line 210
    :cond_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 220
    :cond_e
    :goto_5
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 223
    goto :goto_6

    .line 221
    :catchall_2
    move-exception v0

    .line 227
    :goto_6
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 230
    goto :goto_7

    .line 228
    :catchall_3
    move-exception v0

    .line 232
    :goto_7
    if-eqz v7, :cond_f

    .line 234
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 237
    goto :goto_8

    .line 235
    :catchall_4
    move-exception v0

    .line 239
    :cond_f
    :goto_8
    if-eqz v3, :cond_13

    .line 241
    :try_start_a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 244
    return-void

    .line 242
    :catchall_5
    move-exception v0

    .line 244
    return-void

    .line 214
    :catchall_6
    move-exception v0

    move-object v2, v7

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object v2, v7

    move-object v4, v2

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object v2, v7

    move-object v3, v2

    move-object v4, v3

    :goto_9
    move-object v7, v8

    goto :goto_a

    :catchall_9
    move-exception v0

    move-object v2, v7

    move-object v3, v2

    move-object v4, v3

    :goto_a
    :try_start_b
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-direct {v1, v0}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    .line 218
    if-eqz v7, :cond_10

    .line 220
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 223
    goto :goto_b

    .line 221
    :catchall_a
    move-exception v0

    .line 225
    :cond_10
    :goto_b
    if-eqz v4, :cond_11

    .line 227
    :try_start_d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .line 230
    goto :goto_c

    .line 228
    :catchall_b
    move-exception v0

    .line 232
    :cond_11
    :goto_c
    if-eqz v2, :cond_12

    .line 234
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    .line 237
    goto :goto_d

    .line 235
    :catchall_c
    move-exception v0

    .line 239
    :cond_12
    :goto_d
    if-eqz v3, :cond_13

    .line 241
    :try_start_f
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 244
    return-void

    .line 247
    :cond_13
    return-void

    .line 218
    :catchall_d
    move-exception v0

    move-object v5, v0

    if-eqz v7, :cond_14

    .line 220
    :try_start_10
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    .line 223
    goto :goto_e

    .line 221
    :catchall_e
    move-exception v0

    .line 225
    :cond_14
    :goto_e
    if-eqz v4, :cond_15

    .line 227
    :try_start_11
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    .line 230
    goto :goto_f

    .line 228
    :catchall_f
    move-exception v0

    .line 232
    :cond_15
    :goto_f
    if-eqz v2, :cond_16

    .line 234
    :try_start_12
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    .line 237
    goto :goto_10

    .line 235
    :catchall_10
    move-exception v0

    .line 239
    :cond_16
    :goto_10
    if-eqz v3, :cond_17

    .line 241
    :try_start_13
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_11

    .line 244
    goto :goto_11

    .line 242
    :catchall_11
    move-exception v0

    .line 244
    :cond_17
    :goto_11
    throw v5

    .line 74
    :cond_18
    :goto_12
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->f:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v0, :cond_19

    .line 75
    sget-object v2, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->NO_TARGET_FILE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 77
    :cond_19
    return-void

    .line 64
    :cond_1a
    :goto_13
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->f:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v0, :cond_1b

    .line 65
    sget-object v2, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->PARAM_INVALID:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    const-string v3, "HttpUpload: mFilePath or mUrl is null"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 67
    :cond_1b
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->f:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-nez v0, :cond_0

    .line 262
    return-void

    .line 265
    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->j:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->j:J

    sub-long/2addr v0, v2

    .line 266
    .local v0, "spend":J
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 267
    .local v3, "buf":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string/jumbo v4, "sentLength: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->i:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 268
    const-string v2, ", alreadySentSpend: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 269
    const-string v2, " ["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v2, "fail: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->f:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    sget-object v4, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->NETWORK_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V

    .line 273
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->h:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .param p1, "parameters"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->g:Ljava/util/Map;

    .line 56
    return-void
.end method

.method public run()V
    .locals 1

    .line 252
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    return-void

    .line 255
    :catchall_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "message":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a(Ljava/lang/Object;)V

    .line 258
    .end local v0    # "message":Ljava/lang/String;
    return-void
.end method
