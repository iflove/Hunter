.class public Lcom/alipay/mobile/common/transport/http/HttpContextExtend;
.super Ljava/lang/Object;
.source "HttpContextExtend.java"


# static fields
.field public static MAX_HTTP_REQUEST_COUNT_PER_BATCH:I

.field public static TAG:Ljava/lang/String;

.field private static f:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/reflect/Method;

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x4

    sput v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->MAX_HTTP_REQUEST_COUNT_PER_BATCH:I

    .line 24
    const-string v0, "HttpContextExtend"

    sput-object v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->f:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/HttpContextExtend;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    monitor-enter v0

    .line 45
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    .line 46
    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->f:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    .line 47
    monitor-exit v0

    return-object v1

    .line 50
    :cond_0
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 51
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->f:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_1

    .line 53
    :try_start_3
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->f:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_4
    sget-object v2, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-object v2

    .line 59
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 61
    :try_start_6
    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->f:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v0

    return-object v1

    .line 59
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 44
    .end local p0    # "context":Landroid/content/Context;
    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/transport/http/HttpContextExtend;
    .locals 2

    const-class v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->f:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 67
    monitor-exit v0

    return-object v1

    .line 69
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    move-result-object v1

    .line 70
    sput-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->f:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 148
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDid()Ljava/lang/String;
    .locals 2

    .line 140
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 141
    :catchall_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .end local v0    # "e":Ljava/lang/Throwable;
    const-string v0, ""

    return-object v0
.end method

.method public getDiskCacheClazz()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->e:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 181
    return-object v0

    .line 184
    :cond_0
    monitor-enter p0

    .line 186
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 187
    .local v0, "clsLoader":Ljava/lang/ClassLoader;
    const-string v1, "com.alipay.mobile.common.cache.disk.lru.DefaultLruDiskCache"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->e:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .end local v0    # "clsLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[getDiskCacheClazz] Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->e:Ljava/lang/Class;

    monitor-exit p0

    return-object v0

    .line 192
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public getDiskCacheGetMethod()Ljava/lang/reflect/Method;
    .locals 6

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 228
    return-object v0

    .line 231
    :cond_0
    monitor-enter p0

    .line 235
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCacheClazz()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 236
    .local v2, "diskCacheClazz":Ljava/lang/Class;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 237
    sget-object v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    const-string v3, "[getDiskCacheGetMethod] diskCacheClazz is null."

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    .line 241
    :cond_1
    :try_start_2
    const-string v0, "getSerializable"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 242
    .local v1, "tmpDiskCacheGetMethod":Ljava/lang/reflect/Method;
    move-object v1, v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 244
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->c:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    .end local v1    # "tmpDiskCacheGetMethod":Ljava/lang/reflect/Method;
    .end local v2    # "diskCacheClazz":Ljava/lang/Class;
    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[getDiskCacheGetMethod] Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->c:Ljava/lang/reflect/Method;

    monitor-exit p0

    return-object v0

    .line 251
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getDiskCacheObj()Ljava/lang/Object;
    .locals 8

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 290
    return-object v0

    .line 293
    :cond_0
    monitor-enter p0

    .line 296
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCacheClazz()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 297
    .local v2, "diskCacheClazz":Ljava/lang/Class;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 298
    sget-object v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    const-string v3, "[getDiskCacheObj] diskCacheClazz is null."

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    .line 302
    :cond_1
    :try_start_2
    const-string v0, "getInstance"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v4, v1

    .line 303
    .local v4, "getInstance":Ljava/lang/reflect/Method;
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 304
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 306
    .local v0, "tmpDiskCacheObj":Ljava/lang/Object;
    const-string/jumbo v6, "open"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 307
    .local v1, "openMethod":Ljava/lang/reflect/Method;
    move-object v1, v6

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 308
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->a:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    .end local v0    # "tmpDiskCacheObj":Ljava/lang/Object;
    .end local v1    # "openMethod":Ljava/lang/reflect/Method;
    .end local v2    # "diskCacheClazz":Ljava/lang/Class;
    .end local v4    # "getInstance":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[getDiskCacheObj] Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->a:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    .line 315
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getDiskCachePutMethod()Ljava/lang/reflect/Method;
    .locals 7

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 258
    return-object v0

    .line 261
    :cond_0
    monitor-enter p0

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCacheClazz()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 266
    .local v2, "diskCacheClazz":Ljava/lang/Class;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 267
    sget-object v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    const-string v3, "[getDiskCachePutMethod] diskCacheClazz is null."

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    .line 271
    :cond_1
    :try_start_2
    const-string/jumbo v0, "putSerializable"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-class v6, Ljava/io/Serializable;

    aput-object v6, v3, v4

    const/4 v4, 0x4

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    const/4 v4, 0x5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    const/4 v4, 0x6

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 274
    .local v1, "tmpDiskCachePutMethod":Ljava/lang/reflect/Method;
    move-object v1, v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 276
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->b:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    .end local v1    # "tmpDiskCachePutMethod":Ljava/lang/reflect/Method;
    .end local v2    # "diskCacheClazz":Ljava/lang/Class;
    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[getDiskCachePutMethod] Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->b:Ljava/lang/reflect/Method;

    monitor-exit p0

    return-object v0

    .line 283
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getDiskCacheRemoveMethod()Ljava/lang/reflect/Method;
    .locals 7

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 199
    return-object v0

    .line 202
    :cond_0
    monitor-enter p0

    .line 206
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCacheClazz()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 207
    .local v2, "diskCacheClazz":Ljava/lang/Class;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 208
    sget-object v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    const-string v3, "[getDiskCacheRemoveMethod] diskCacheClazz is null."

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    .line 212
    :cond_1
    :try_start_2
    const-string/jumbo v0, "remove"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 213
    .local v1, "tmpDiskCacheRemoveMethod":Ljava/lang/reflect/Method;
    move-object v1, v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 215
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->d:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    .end local v1    # "tmpDiskCacheRemoveMethod":Ljava/lang/reflect/Method;
    .end local v2    # "diskCacheClazz":Ljava/lang/Class;
    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[getDiskCacheRemoveMethod] Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->d:Ljava/lang/reflect/Method;

    monitor-exit p0

    return-object v0

    .line 221
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 2

    .line 153
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getLatitude()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 2

    .line 162
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getLongitude()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 2

    .line 171
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->getProductId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 172
    :catchall_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .end local v0    # "e":Ljava/lang/Throwable;
    const-string v0, ""

    return-object v0
.end method

.method public getSerializable(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Serializable;
    .locals 5
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCacheGetMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v2, v0

    .line 99
    .local v2, "diskCacheGetMethod":Ljava/lang/reflect/Method;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 100
    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    const-string v3, "[getSerializable] diskCacheGetMethod is null."

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-object v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCacheObj()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v0

    .line 105
    .local v3, "diskCacheObj":Ljava/lang/Object;
    move-object v3, v1

    if-nez v1, :cond_1

    .line 106
    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    const-string v4, "[getSerializable] diskCacheObj is null."

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-object v0

    .line 110
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    const/4 v4, 0x1

    aput-object p2, v1, v4

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 111
    .end local v2    # "diskCacheGetMethod":Ljava/lang/reflect/Method;
    .end local v3    # "diskCacheObj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public putSerializable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;JJLjava/lang/String;)V
    .locals 5
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "serializable"    # Ljava/io/Serializable;
    .param p5, "createTime"    # J
    .param p7, "period"    # J
    .param p9, "contentType"    # Ljava/lang/String;

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCacheObj()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 78
    .local v2, "diskCacheObj":Ljava/lang/Object;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    const-string v1, "[putSerializable] diskCacheObj is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCachePutMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 84
    .local v1, "diskCachePutMethod":Ljava/lang/reflect/Method;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 85
    sget-object v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    const-string v3, "[putSerializable] diskCachePutMethod is null."

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const/4 v3, 0x1

    aput-object p2, v0, v3

    const/4 v3, 0x2

    aput-object p3, v0, v3

    const/4 v3, 0x3

    aput-object p4, v0, v3

    const/4 v3, 0x4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x5

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x6

    aput-object p9, v0, v3

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    nop

    .end local v1    # "diskCachePutMethod":Ljava/lang/reflect/Method;
    .end local v2    # "diskCacheObj":Ljava/lang/Object;
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCacheObj()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 121
    .local v2, "diskCacheObj":Ljava/lang/Object;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    const-string v1, "[remove] diskCacheObj is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCacheRemoveMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 126
    .local v1, "diskCacheRemoveMethod":Ljava/lang/reflect/Method;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 127
    sget-object v0, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    const-string v3, "[remove] diskCacheRemoveMethod is null."

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void

    .line 131
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    nop

    .end local v1    # "diskCacheRemoveMethod":Ljava/lang/reflect/Method;
    .end local v2    # "diskCacheObj":Ljava/lang/Object;
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method
