.class public Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;
.super Ljava/lang/Object;
.source "CookieAccessHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/http/CookieAccessHelper$AsyncFlushCookieRunnable;
    }
.end annotation


# static fields
.field private static a:Landroid/webkit/CookieManager;

.field private static b:Lcom/alipay/mobile/common/transport/http/CookieAccessHelper$AsyncFlushCookieRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->a:Landroid/webkit/CookieManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/alipay/mobile/common/transport/http/CookieAccessHelper$AsyncFlushCookieRunnable;
    .locals 3

    .line 116
    sget-object v0, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->b:Lcom/alipay/mobile/common/transport/http/CookieAccessHelper$AsyncFlushCookieRunnable;

    if-eqz v0, :cond_0

    .line 117
    return-object v0

    .line 119
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;

    monitor-enter v0

    .line 120
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->b:Lcom/alipay/mobile/common/transport/http/CookieAccessHelper$AsyncFlushCookieRunnable;

    if-eqz v1, :cond_1

    .line 121
    monitor-exit v0

    return-object v1

    .line 123
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper$AsyncFlushCookieRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper$AsyncFlushCookieRunnable;-><init>(Lcom/alipay/mobile/common/transport/http/CookieAccessHelper$1;)V

    sput-object v1, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->b:Lcom/alipay/mobile/common/transport/http/CookieAccessHelper$AsyncFlushCookieRunnable;

    .line 124
    monitor-exit v0

    .line 125
    return-object v1

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final a(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    :try_start_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "CookieAccessHelper"

    const-string v2, "createCookieSyncManager exception:"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static declared-synchronized applyCookie(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "cookieString"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;

    monitor-enter v0

    .line 72
    :try_start_0
    invoke-static {p2}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->a(Landroid/content/Context;)V

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit v0

    return-void

    .line 74
    :catchall_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "CookieAccessHelper"

    const-string/jumbo v3, "setCookie exception:"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .end local v1    # "e":Ljava/lang/Throwable;
    monitor-exit v0

    return-void

    .line 71
    .end local p0    # "domain":Ljava/lang/String;
    .end local p1    # "cookieString":Ljava/lang/String;
    .end local p2    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final asyncFlushCookie()V
    .locals 1

    .line 80
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->a()Lcom/alipay/mobile/common/transport/http/CookieAccessHelper$AsyncFlushCookieRunnable;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeIO(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public static final flushCookie()V
    .locals 3

    .line 85
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "CookieAccessHelper"

    const-string v2, "flushCookie exception:"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static declared-synchronized getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;

    monitor-enter v0

    .line 93
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 93
    .end local p0    # "url":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getCookie(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;

    monitor-enter v0

    .line 98
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->a(Landroid/content/Context;)V

    .line 99
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 100
    :catchall_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "CookieAccessHelper"

    const-string v3, "getCookie exception:"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .end local v1    # "e":Ljava/lang/Throwable;
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-object v1

    .line 97
    .end local p0    # "url":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getCookieManager()Landroid/webkit/CookieManager;
    .locals 5

    .line 22
    sget-object v0, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 23
    return-object v0

    .line 25
    :cond_0
    const-class v0, Landroid/webkit/CookieManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->a:Landroid/webkit/CookieManager;

    if-eqz v1, :cond_1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v1

    .line 30
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->a:Landroid/webkit/CookieManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    nop

    .line 35
    :try_start_2
    monitor-exit v0

    .line 36
    return-object v1

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "CookieAccessHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCookieManager fail. will use EmptyAndroidCookieManager. exception msg: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/EmptyAndroidCookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 35
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static declared-synchronized removeAllCookie()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;

    monitor-enter v0

    .line 41
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    return-void

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized removeAllCookie(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;

    monitor-enter v0

    .line 46
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->a(Landroid/content/Context;)V

    .line 47
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    return-void

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "CookieAccessHelper"

    const-string/jumbo v3, "removeAllCookie exception "

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    .end local v1    # "e":Ljava/lang/Throwable;
    monitor-exit v0

    return-void

    .line 45
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "cookieString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;

    monitor-enter v0

    .line 55
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit v0

    return-void

    .line 54
    .end local p0    # "domain":Ljava/lang/String;
    .end local p1    # "cookieString":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "cookieString"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;

    monitor-enter v0

    .line 62
    :try_start_0
    invoke-static {p2}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->a(Landroid/content/Context;)V

    .line 63
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v0

    return-void

    .line 65
    :catchall_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "CookieAccessHelper"

    const-string/jumbo v3, "setCookie exception:"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    .end local v1    # "e":Ljava/lang/Throwable;
    monitor-exit v0

    return-void

    .line 61
    .end local p0    # "domain":Ljava/lang/String;
    .end local p1    # "cookieString":Ljava/lang/String;
    .end local p2    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
