.class Lcom/alipay/mobile/common/patch/ZPatcher$2;
.super Ljava/lang/Object;
.source "ZPatcher.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


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

    .line 100
    iput-object p1, p0, Lcom/alipay/mobile/common/patch/ZPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 129
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download patch cancel url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    iget-object v2, v2, Lcom/alipay/mobile/common/patch/ZPatcher;->mPatchFileUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZPatcher"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/ZPatcher;->delPatcherFile()V

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/patch/ZPatcher;->onFail(I)V

    .line 132
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download patch error code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    iget-object v2, v2, Lcom/alipay/mobile/common/patch/ZPatcher;->mPatchFileUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZPatcher"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "DownloadPatchFile-Fail-ZPatcher"

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLog(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/patch/ZPatcher;->onFail(I)V

    .line 125
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 115
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ZPatcher"

    const-string v2, "download patch completed.."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/ZPatcher;->applyPatch()V

    .line 117
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 110
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ZPatcher"

    const-string/jumbo v2, "onPreExecute"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 1
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "percent"    # D

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    invoke-virtual {v0, p2, p3}, Lcom/alipay/mobile/common/patch/ZPatcher;->updateDownloadPatchProgress(D)V

    .line 106
    return-void
.end method
