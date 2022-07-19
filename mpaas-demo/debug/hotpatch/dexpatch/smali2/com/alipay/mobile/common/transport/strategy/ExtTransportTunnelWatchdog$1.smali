.class Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog$1;
.super Ljava/lang/Object;
.source "ExtTransportTunnelWatchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;

    .line 250
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog$1;->this$0:Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog$1;->this$0:Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;

    # invokes: Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->b()V
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->access$000(Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;)V

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog$1;->this$0:Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;

    # getter for: Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->o:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->access$100(Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 255
    return-void
.end method
