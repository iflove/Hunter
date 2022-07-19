.class Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$5;
.super Ljava/lang/Object;
.source "LiteProcessServerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startLiteProcessAsync(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    .line 735
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$5;->c:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    iput p2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$5;->a:I

    iput-object p3, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 738
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->f()Ljava/util/concurrent/ScheduledFuture;

    .line 740
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/Config;->f:Z

    const-string v1, "LiteProcess"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$5;->c:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->isAllLiteProcessHide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LiteProcessServerManager startLiteProcessAsync cancel2  mainAtBackground: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAllLiteProcessHide "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$5;->c:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    .line 743
    invoke-virtual {v4}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->isAllLiteProcessHide()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 741
    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 745
    return-void

    .line 749
    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/Config;->A:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$5;->a:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$5;->c:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "checkPreloadTiming failed, delaying"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    return-void

    .line 755
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$5;->a:I

    if-lez v0, :cond_3

    sget v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->sPreloadIndexCurrent:I

    if-nez v0, :cond_3

    .line 756
    invoke-static {}, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->makePreloadDecision()I

    move-result v0

    move v1, v2

    .line 757
    .local v1, "decision":I
    move v1, v0

    if-gez v0, :cond_2

    .line 758
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 759
    return-void

    .line 760
    :cond_2
    if-lez v1, :cond_3

    .line 761
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 762
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$5;->c:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startLiteProcessAsync(I)V

    .line 763
    return-void

    .line 767
    .end local v1    # "decision":I
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$5;->c:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$5;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Ljava/lang/String;)V

    .line 768
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 769
    return-void
.end method
