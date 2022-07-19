.class Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;
.super Ljava/lang/Object;
.source "ZRetryPatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/patch/ZRetryPatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 53
    const-string v0, "ZRetryPatcher"

    const/4 v1, 0x1

    .line 55
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->verifyPatchBeforeApply()Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->delPatcherFile()V

    .line 57
    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    # getter for: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->b:Lcom/alipay/mobile/common/transport/TransportCallback;
    invoke-static {v2}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$000(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v3

    # invokes: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    invoke-static {v2, v3}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$100(Lcom/alipay/mobile/common/patch/ZRetryPatcher;Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 58
    return-void

    .line 60
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLogStart(Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v2, v2, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mOldFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v3, v3, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v4, v4, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchFilePath:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/dodola/patcher/utils/AppUtils;->patcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 65
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->delPatcherFile()V

    .line 68
    if-nez v1, :cond_2

    .line 69
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLogSuccess(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    # invokes: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a()Z
    invoke-static {v2}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$200(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->logVerifyNewFileMD5Success(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v2, v0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->onSuccess(Ljava/lang/String;)V

    return-void

    .line 74
    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->logVerifyNewFileMD5Fail(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    # getter for: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->b:Lcom/alipay/mobile/common/transport/TransportCallback;
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$000(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v2

    # invokes: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$100(Lcom/alipay/mobile/common/patch/ZRetryPatcher;Lcom/alipay/mobile/common/transport/TransportCallback;)V

    return-void

    .line 78
    :cond_2
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLogFail(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    # getter for: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->b:Lcom/alipay/mobile/common/transport/TransportCallback;
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$000(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v2

    # invokes: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$100(Lcom/alipay/mobile/common/patch/ZRetryPatcher;Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 81
    return-void
.end method
