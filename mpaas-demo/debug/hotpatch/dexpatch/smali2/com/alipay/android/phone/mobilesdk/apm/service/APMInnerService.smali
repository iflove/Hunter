.class public Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;
.super Landroid/app/Service;
.source "APMInnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService$APMStub;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;->a:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .line 37
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;->a:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 22
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 25
    :try_start_0
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;->a:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService$APMStub;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService$APMStub;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService$1;)V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;->a:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;

    .line 29
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    :catchall_1
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "APMInnerService"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
