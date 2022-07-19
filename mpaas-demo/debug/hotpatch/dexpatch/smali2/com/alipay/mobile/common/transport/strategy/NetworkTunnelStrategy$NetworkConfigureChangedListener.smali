.class Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;
.super Ljava/lang/Object;
.source "NetworkTunnelStrategy.java"

# interfaces
.implements Lcom/alipay/mobile/common/utils/config/ConfigureChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkConfigureChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    .line 514
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;->this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    const-string v0, "NetworkTunnelStrategy"

    .line 520
    :try_start_0
    const-string/jumbo v1, "update change"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;->this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    # getter for: Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->i:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->access$000(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 522
    const-string v1, "Context is null. so dangerous!!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;->this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    # invokes: Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->c()V
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->access$100(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)V

    .line 528
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;->this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    # getter for: Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->e:I
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->access$200(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;->this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    # getter for: Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->access$300(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 529
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;->this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    # getter for: Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->access$300(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)I

    move-result v1

    .line 530
    .local v1, "localCurrentTunnlType":I
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;->this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    # getter for: Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->e:I
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->access$200(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)I

    move-result v3

    # setter for: Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I
    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->access$302(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;I)I

    .line 532
    new-instance v2, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;-><init>()V

    const/4 v3, 0x0

    .line 533
    .local v3, "tunnelChangeEventModel":Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;
    move-object v3, v2

    iput v1, v2, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->currentTunnelType:I

    .line 534
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;->this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    # getter for: Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->e:I
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->access$200(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)I

    move-result v2

    iput v2, v3, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->newTunnelType:I

    .line 535
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;->this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->notifyTunnelChanged(Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    .end local v1    # "localCurrentTunnlType":I
    .end local v3    # "tunnelChangeEventModel":Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;
    :cond_1
    return-void

    .line 538
    :catchall_0
    move-exception v1

    .line 539
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 541
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method
