.class public final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/HotPatchUtils;
.super Ljava/lang/Object;
.source "HotPatchUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static sDelay:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static trigDynamicRelease(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 33
    invoke-static {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_START:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->trigDynamicRelease(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;)V

    .line 34
    return-void
.end method

.method public static trigDynamicRelease(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;

    .line 24
    invoke-static {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->requireBundle(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;)V

    .line 25
    return-void
.end method

.method public static trigDynamicRelease(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 20
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;

    invoke-direct {v0, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;-><init>(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    invoke-static {p0, p1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/HotPatchUtils;->trigDynamicRelease(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;)V

    .line 21
    return-void
.end method

.method public static trigDynamicRelease(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isForce"    # Z

    .line 37
    invoke-static {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_SYNC:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_START:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->trigDynamicRelease(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;)V

    .line 38
    return-void
.end method

.method public static trigDynamicRelease(Landroid/content/Context;ZZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isForce"    # Z
    .param p2, "isFirst"    # Z

    .line 41
    invoke-static {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_START:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->trigDynamicRelease(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;)V

    .line 42
    return-void
.end method

.method public static trigDynamicRelease(Landroid/content/Context;ZZLcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isForce"    # Z
    .param p2, "isFirst"    # Z
    .param p3, "when"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    .line 45
    invoke-static {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->trigDynamicRelease(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;)V

    .line 46
    return-void
.end method

.method public static trigDynamicRelease(Landroid/content/Context;ZZZLcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isForce"    # Z
    .param p2, "isFirst"    # Z
    .param p3, "checkDelay"    # Z
    .param p4, "when"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    .line 49
    invoke-static {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->trigDynamicRelease(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;)V

    .line 50
    return-void
.end method

.method public static trigHotPatchRpc(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isForce"    # Z

    .line 29
    invoke-static {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_START:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->trigDynamicRelease(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;)V

    .line 30
    return-void
.end method
