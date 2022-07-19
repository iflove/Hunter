.class Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$2;
.super Ljava/lang/Object;
.source "TaskDiagnosisManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->end(Ljava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosisCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;

.field final synthetic val$section:Ljava/lang/String;

.field final synthetic val$taskDiagnosisCallback:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosisCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;Ljava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosisCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;

    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$2;->this$0:Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;

    iput-object p2, p0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$2;->val$section:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$2;->val$taskDiagnosisCallback:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosisCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$2;->this$0:Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;

    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$2;->val$section:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->b(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->access$300(Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$2;->this$0:Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;

    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$2;->val$section:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->c(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;->access$400(Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$2;->val$taskDiagnosisCallback:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosisCallback;

    if-eqz v1, :cond_0

    .line 95
    iget-object v2, p0, Lcom/alipay/mobile/framework/pipeline/TaskDiagnosisManager$2;->val$section:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosisCallback;->onCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method
