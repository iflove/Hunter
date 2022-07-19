.class Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$8;
.super Ljava/lang/Object;
.source "LiteProcessServerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(ILcom/alipay/mobile/liteprocess/LiteProcess;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/liteprocess/LiteProcess;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Lcom/alipay/mobile/liteprocess/LiteProcess;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    .line 1224
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$8;->c:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    iput-object p2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$8;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    iput p3, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$8;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1227
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$8;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    iget v0, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->c:I

    iget v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$8;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$8;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    iget-boolean v0, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->f:Z

    if-nez v0, :cond_0

    .line 1228
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "canKill process after CAN_STOP_DURATION = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/alipay/mobile/liteprocess/Config;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$8;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$8;->c:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$8;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-static {v0, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 1232
    :cond_0
    return-void
.end method
