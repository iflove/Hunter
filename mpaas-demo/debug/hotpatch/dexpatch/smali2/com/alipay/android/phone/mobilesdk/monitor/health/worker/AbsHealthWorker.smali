.class public abstract Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/AbsHealthWorker;
.super Ljava/lang/Object;
.source "AbsHealthWorker.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;


# instance fields
.field protected a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/AbsHealthWorker;->b:Z

    .line 15
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/AbsHealthWorker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 16
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "eventType"    # I

    .line 37
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/AbsHealthWorker;->b:Z

    return v0
.end method

.method public b()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/AbsHealthWorker;->b:Z

    .line 28
    return-void
.end method

.method public c()V
    .locals 1

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/AbsHealthWorker;->b:Z

    .line 33
    return-void
.end method
