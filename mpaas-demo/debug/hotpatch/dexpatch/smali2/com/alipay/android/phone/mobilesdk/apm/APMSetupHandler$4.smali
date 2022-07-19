.class final Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler$4;
.super Ljava/lang/Object;
.source "APMSetupHandler.java"

# interfaces
.implements Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$CyclicalReportDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCyclicalReport(Ljava/lang/String;Landroid/content/Context;J)Landroid/os/Bundle;
    .locals 2
    .param p1, "bizKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "deltaElasped"    # J

    .line 85
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;-><init>()V

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
