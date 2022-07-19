.class final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp$1;
.super Ljava/lang/Object;
.source "DynamicReleaseApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp;

    .line 74
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp$1;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp;

    iput-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp$1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp$1;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 78
    .local v0, "microContext":Lcom/alipay/mobile/framework/MicroApplicationContext;
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp$1;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 79
    .local v1, "context":Landroid/content/Context;
    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/base/config/ConfigService;

    .line 81
    .local v2, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isDebuggable(Landroid/content/Context;)Z

    move-result v3

    const-string v4, "DynamicRelease"

    if-nez v3, :cond_1

    const-string v3, "dynamicrelease_barcode"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v5, "processBarcode skip"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void

    .line 82
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;->require(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;

    move-result-object v3

    const/4 v5, 0x0

    move-object v6, v5

    .line 83
    .local v6, "requestConnection":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;
    move-object v6, v3

    if-eqz v3, :cond_2

    invoke-virtual {v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;->getDynamicRequestProcessor()Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v5

    .line 84
    .local v5, "requester":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;
    :goto_1
    move-object v5, v3

    if-eqz v3, :cond_3

    .line 86
    :try_start_0
    const-string v3, "action.dynamic.release.barcode"

    iget-object v7, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/barcode/DynamicReleaseApp$1;->a:Landroid/os/Bundle;

    invoke-interface {v5, v3, v7}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;->handleAction(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :goto_2
    invoke-virtual {v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;->release()V

    .line 91
    return-void

    .line 87
    :catchall_0
    move-exception v3

    .line 88
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    invoke-interface {v7, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v3    # "e":Ljava/lang/Throwable;
    goto :goto_2

    .line 90
    :catchall_1
    move-exception v3

    invoke-virtual {v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;->release()V

    throw v3

    .line 93
    .end local v5    # "requester":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;
    .end local v6    # "requestConnection":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;
    :cond_3
    return-void
.end method
