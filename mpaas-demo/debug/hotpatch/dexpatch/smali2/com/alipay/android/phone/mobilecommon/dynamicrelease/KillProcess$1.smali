.class final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess$1;
.super Ljava/lang/Object;
.source "KillProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;

    .line 74
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess$1;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;

    iput-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess$1;->a:Landroid/content/Context;

    # invokes: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->a(Landroid/content/Context;)Z
    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->access$000(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "App is in background, kill process"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess$1;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess$1;->a:Landroid/content/Context;

    # invokes: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->c(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->access$200(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;Landroid/content/Context;)V

    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "App is not in background, cancel kill process"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess$1;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->cancelKillProcess()Z

    .line 84
    return-void
.end method
