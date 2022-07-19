.class Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$3;
.super Ljava/lang/Object;
.source "PipelineManager.java"

# interfaces
.implements Lcom/alipay/mobile/framework/pipeline/PipeLineController$Pausable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    .line 166
    iput-object p1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$3;->this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 0

    .line 169
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->pausePipeline()V

    .line 170
    return-void
.end method

.method public resume()V
    .locals 0

    .line 174
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/TaskControlManager;->resumePipeline()V

    .line 175
    return-void
.end method
