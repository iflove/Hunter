.class public Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/SilentDownloadService;
.source "SilentDownloadServiceImpl.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/alipay/mobile/common/transport/download/DownloadManager;

.field private d:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field mWifiChecker:Lcom/alipay/mobile/util/wifichecker/WifiChecker;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/SilentDownloadService;-><init>()V

    .line 34
    const-class v0, Lcom/alipay/mobile/framework/service/common/SilentDownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadManager;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->c:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    .line 46
    return-void
.end method

.method private a()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->mWifiChecker:Lcom/alipay/mobile/util/wifichecker/WifiChecker;

    if-nez v0, :cond_1

    .line 213
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 215
    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x1

    return v0

    .line 217
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/util/wifichecker/WifiChecker;->a(Landroid/content/Context;)Lcom/alipay/mobile/util/wifichecker/WifiChecker;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->mWifiChecker:Lcom/alipay/mobile/util/wifichecker/WifiChecker;

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->mWifiChecker:Lcom/alipay/mobile/util/wifichecker/WifiChecker;

    invoke-virtual {v0}, Lcom/alipay/mobile/util/wifichecker/WifiChecker;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/util/HashMap;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->b:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/util/concurrent/Future;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->d:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method public static getMd5ByFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 243
    nop

    .line 244
    nop

    .line 245
    nop

    .line 247
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 249
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 249
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    .line 251
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 252
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 253
    new-instance v1, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 254
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    nop

    .line 260
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 262
    :goto_0
    goto :goto_1

    .line 261
    :catch_0
    move-exception p0

    goto :goto_0

    .line 265
    :goto_1
    return-object v0

    .line 258
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 255
    :catch_1
    move-exception v1

    goto :goto_4

    .line 258
    :catchall_1
    move-exception p0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    :goto_2
    if-eqz p0, :cond_0

    .line 260
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 262
    goto :goto_3

    .line 261
    :catch_2
    move-exception p0

    .line 262
    :cond_0
    :goto_3
    throw v0

    .line 255
    :catch_3
    move-exception p0

    move-object p0, v0

    .line 256
    :goto_4
    nop

    .line 258
    if-eqz p0, :cond_1

    .line 260
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 262
    goto :goto_5

    .line 261
    :catch_4
    move-exception p0

    .line 256
    :cond_1
    :goto_5
    return-object v0
.end method


# virtual methods
.method public isDownloading(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->b:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 273
    :cond_1
    return v1
.end method

.method public isWifi()Z
    .locals 4

    .line 225
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 226
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 227
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 228
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 229
    return v2

    .line 231
    :cond_0
    nop

    .line 232
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 233
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 236
    return v1

    .line 239
    :cond_1
    return v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 196
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .line 202
    return-void
.end method

.method public startSilentDownload(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;)V
    .locals 9

    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->b:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->b:Ljava/util/HashMap;

    goto :goto_0

    .line 58
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;

    const-string p3, "exist future"

    invoke-interface {p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void

    .line 62
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;

    const-string v2, "future need execute"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 66
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;-><init>(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 169
    iget-object p3, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->c:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    const/4 v1, 0x0

    invoke-virtual {p3, p1, p2, v1, v0}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->addDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alipay/mobile/common/transport/TransportCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->d:Ljava/util/concurrent/Future;

    .line 170
    return-void

    .line 52
    :cond_3
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;

    const-string p3, "invalid params"

    invoke-interface {p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public stopSilentDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v0, "silentFuture == null"

    invoke-interface {p1, p2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void

    .line 178
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 179
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v0, "silentFuture.size() <= 0"

    invoke-interface {p1, p2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->b:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 183
    if-eqz v0, :cond_2

    .line 184
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "future.cancel(true) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 186
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->b:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 191
    return-void

    .line 189
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "\u505c\u6b62\u4e0b\u8f7d"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
