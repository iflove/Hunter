.class final Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$3;
.super Ljava/lang/Object;
.source "UpgradeSilentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager;->removeUpgradeInfoForSilent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 231
    const-string v0, "UpgradeSilentManager"

    .line 233
    const/4 v1, 0x0

    :try_start_0
    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager;->getSecurityDiskCache()Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager;->access$000()Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->open()V

    .line 235
    const-string/jumbo v2, "update_silent_info_cache_key"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->remove(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "\u5220\u9664\u9759\u9ed8\u5347\u7ea7\u4fe1\u606fend"

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 237
    :catch_0
    move-exception v2

    .line 238
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "\u5220\u9664\u9759\u9ed8\u5347\u7ea7\u4fe1\u606f error "

    invoke-interface {v3, v0, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    :goto_0
    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->close()V

    .line 241
    nop

    .line 242
    return-void

    .line 240
    :goto_1
    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->close()V

    throw v0
.end method
