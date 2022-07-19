.class Lcom/alipay/mobile/common/patch/ZPatcher$1;
.super Ljava/lang/Object;
.source "ZPatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/patch/ZPatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/patch/ZPatcher;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/patch/ZPatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/patch/ZPatcher;

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 52
    const-string v0, "ZPatcher"

    const/4 v1, 0x1

    .line 54
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/patch/ZPatcher;->verifyPatchBeforeApply()Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/patch/ZPatcher;->delPatcherFile()V

    .line 56
    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/patch/ZPatcher;->onFail(I)V

    .line 57
    return-void

    .line 59
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLogStart(Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    iget-object v2, v2, Lcom/alipay/mobile/common/patch/ZPatcher;->mOldFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    iget-object v3, v3, Lcom/alipay/mobile/common/patch/ZPatcher;->mNewFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    iget-object v4, v4, Lcom/alipay/mobile/common/patch/ZPatcher;->mPatchFilePath:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/dodola/patcher/utils/AppUtils;->patcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 64
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/patch/ZPatcher;->delPatcherFile()V

    .line 67
    if-nez v1, :cond_1

    .line 68
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLogSuccess(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    # invokes: Lcom/alipay/mobile/common/patch/ZPatcher;->a()V
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/ZPatcher;->access$000(Lcom/alipay/mobile/common/patch/ZPatcher;)V

    return-void

    .line 71
    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLogFail(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    const/16 v2, 0x68

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/patch/ZPatcher;->onFail(I)V

    .line 74
    return-void
.end method
