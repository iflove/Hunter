.class public Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;
.super Ljava/lang/Object;
.source "AndroidH2CacheConfig.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;->a:Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;
    .locals 2

    .line 21
    sget-object v0, Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;->a:Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;

    if-eqz v0, :cond_0

    .line 22
    return-object v0

    .line 24
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;->a:Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;

    if-nez v1, :cond_1

    .line 26
    new-instance v1, Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;->a:Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;

    .line 28
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    sget-object v0, Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;->a:Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;

    return-object v0

    .line 28
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public setupCacheDir()V
    .locals 9

    .line 33
    sget-boolean v0, Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;->b:Z

    if-eqz v0, :cond_0

    .line 34
    return-void

    .line 37
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;->b:Z

    if-eqz v1, :cond_1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 42
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "http"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .local v1, "httpCacheDir":Ljava/io/File;
    const-string v2, "android.net.http.HttpResponseCache"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "install"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/io/File;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 45
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    const-wide/32 v5, 0xa00000

    .line 46
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sput-boolean v8, Lcom/alipay/mobile/common/transport/http/AndroidH2CacheConfig;->b:Z

    .line 49
    const-string v2, "AndroidH2CacheConfig"

    const-string v3, "[setupCacheDir] http cache create OK"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .end local v1    # "httpCacheDir":Ljava/io/File;
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v1

    .line 52
    .local v1, "exception":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "AndroidH2CacheConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[setupCacheDir] http cache create error = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .end local v1    # "exception":Ljava/lang/Throwable;
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
