.class public abstract Lcom/alipay/mobile/framework/pipeline/BlockablePipeline;
.super Ljava/lang/Object;
.source "BlockablePipeline.java"

# interfaces
.implements Lcom/alipay/mobile/framework/pipeline/Pipeline;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doStart()V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public final start()V
    .locals 0

    .line 6
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/BlockablePipelineInvoker;->enqueuePipeline(Lcom/alipay/mobile/framework/pipeline/BlockablePipeline;)V

    .line 7
    return-void
.end method
