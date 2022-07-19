.class Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$2;
.super Ljava/lang/Object;
.source "PipelineManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


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

    .line 156
    iput-object p1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$2;->this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 159
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "PIPELINE_SCHEDULE_INTERCEPT"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
