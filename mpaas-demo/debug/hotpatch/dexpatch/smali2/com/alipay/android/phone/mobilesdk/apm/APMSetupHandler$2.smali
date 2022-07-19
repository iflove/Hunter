.class final Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler$2;
.super Ljava/lang/Object;
.source "APMSetupHandler.java"

# interfaces
.implements Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$CyclicalReportDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCyclicalReport(Ljava/lang/String;Landroid/content/Context;J)Landroid/os/Bundle;
    .locals 1
    .param p1, "bizKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "deltaElasped"    # J

    .line 60
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessHandler;->c(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
