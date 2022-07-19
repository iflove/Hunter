.class Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis$1;
.super Ljava/lang/Object;
.source "TaskStatusAnalysis.java"

# interfaces
.implements Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis$1;->this$0:Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTargetRecord(ILjava/lang/String;)Z
    .locals 1
    .param p1, "tid"    # I
    .param p2, "runnableName"    # Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public onEndRecord(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;)V
    .locals 2
    .param p1, "runnableInfo"    # Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis$1;->this$0:Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;

    const/4 v1, 0x0

    # invokes: Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->b(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;Z)V
    invoke-static {v0, p1, v1}, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->access$100(Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;Z)V

    .line 50
    return-void
.end method

.method public onStartRecord(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;)V
    .locals 2
    .param p1, "runnableInfo"    # Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis$1;->this$0:Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;

    const/4 v1, 0x0

    # invokes: Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->a(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;Z)V
    invoke-static {v0, p1, v1}, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->access$000(Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;Z)V

    .line 45
    return-void
.end method
