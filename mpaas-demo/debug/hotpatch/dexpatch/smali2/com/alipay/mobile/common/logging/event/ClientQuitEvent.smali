.class public Lcom/alipay/mobile/common/logging/event/ClientQuitEvent;
.super Ljava/lang/Object;
.source "ClientQuitEvent.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/event/ClientEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 15
    .local v1, "logContext":Lcom/alipay/mobile/common/logging/api/LogContext;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 16
    const-string v0, "applog"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 19
    invoke-static {}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a()Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    move-result-object v0

    const-string v2, "ClientEvent_ClientQuit"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a(Ljava/lang/String;)V

    .line 20
    return-void
.end method
