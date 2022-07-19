.class public Lcom/mpaas/hotpatch/adapter/api/MPHotpatch;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "MPHotpatch"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_SYNC:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    const/4 v2, 0x1

    invoke-static {v0, v2, v2, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/HotPatchUtils;->trigDynamicRelease(Landroid/content/Context;ZZLcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "MPHotpatch"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
