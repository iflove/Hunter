.class final Lcom/alipay/mobile/logmonitor/TraceStubReceiver$3;
.super Ljava/lang/Object;
.source "TraceStubReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/TraceStubReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/mobile/logmonitor/TraceStubReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/TraceStubReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/TraceStubReceiver;

    .line 99
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/TraceStubReceiver$3;->b:Lcom/alipay/mobile/logmonitor/TraceStubReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/TraceStubReceiver$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 102
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "processName":Ljava/lang/String;
    new-instance v1, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/TraceStubReceiver$3;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->a(Ljava/lang/String;)Z

    .line 104
    return-void
.end method
