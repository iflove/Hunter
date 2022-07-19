.class final Lcom/alipay/mobile/common/logging/event/BugReportEvent$1;
.super Ljava/lang/Object;
.source "BugReportEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/logging/event/BugReportEvent;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/logging/event/BugReportEvent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/logging/event/BugReportEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/logging/event/BugReportEvent;

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/event/BugReportEvent$1;->a:Lcom/alipay/mobile/common/logging/event/BugReportEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 24
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string v1, "applog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->backupCurrentFile(Ljava/lang/String;Z)V

    .line 25
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "trafficLog"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->backupCurrentFile(Ljava/lang/String;Z)V

    .line 26
    return-void
.end method
