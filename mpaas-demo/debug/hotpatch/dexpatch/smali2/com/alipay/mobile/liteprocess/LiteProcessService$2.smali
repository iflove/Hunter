.class Lcom/alipay/mobile/liteprocess/LiteProcessService$2;
.super Ljava/lang/Object;
.source "LiteProcessService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/LiteProcessService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/liteprocess/LiteProcessService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/liteprocess/LiteProcessService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/liteprocess/LiteProcessService;

    .line 146
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessService$2;->a:Lcom/alipay/mobile/liteprocess/LiteProcessService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 149
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " patched with LauncherApplicationAgent.getInstance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessService$2;->a:Lcom/alipay/mobile/liteprocess/LiteProcessService;

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessPipeline;->litePipelineRun(Landroid/content/Context;)V

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessService$2;->a:Lcom/alipay/mobile/liteprocess/LiteProcessService;

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessService;->a(Lcom/alipay/mobile/liteprocess/LiteProcessService;)V

    .line 155
    return-void
.end method
