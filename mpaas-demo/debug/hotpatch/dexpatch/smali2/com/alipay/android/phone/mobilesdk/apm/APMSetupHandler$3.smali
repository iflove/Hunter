.class final Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler$3;
.super Ljava/lang/Object;
.source "APMSetupHandler.java"

# interfaces
.implements Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ProcessAliveReportDelegate;


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

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProcessAliveReport(Ljava/lang/String;Landroid/content/Context;JZ)Landroid/os/Bundle;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "l"    # J
    .param p5, "b"    # Z

    .line 77
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0, p5}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessHandler;->a(Ljava/lang/String;Landroid/content/Context;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
