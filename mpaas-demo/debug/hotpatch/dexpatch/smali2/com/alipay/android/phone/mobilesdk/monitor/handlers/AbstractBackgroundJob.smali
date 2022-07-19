.class public abstract Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;
.super Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;
.source "AbstractBackgroundJob.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;-><init>()V

    return-void
.end method

.method public static a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;)V
    .locals 0
    .param p0, "job"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;

    .line 22
    if-nez p0, :cond_0

    .line 23
    return-void

    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;->d()V

    .line 26
    return-void
.end method

.method private d()V
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AbstractBackgroundJob;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    return-void

    .line 18
    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->unregister(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected abstract c()Z
.end method
