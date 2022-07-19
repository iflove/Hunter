.class Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;
.super Ljava/lang/Object;
.source "ZRetryPatcher.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


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

    .line 160
    iput-object p1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 189
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download patch cancel url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v2, v2, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchFileUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZRetryPatcher"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->delPatcherFile()V

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->onFail(I)V

    .line 193
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 181
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

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v2, v2, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchFileUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZRetryPatcher"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "DownloadPatchFile-Fail-ZRetryPatcher"

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLog(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    # getter for: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->b:Lcom/alipay/mobile/common/transport/TransportCallback;
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$000(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    # invokes: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$100(Lcom/alipay/mobile/common/patch/ZRetryPatcher;Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 185
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 175
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download patch completed url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v2, v2, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchFileUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZRetryPatcher"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->applyPatch()V

    .line 177
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 171
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 1
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "percent"    # D

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-virtual {v0, p2, p3}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->updateDownloadPatchProgress(D)V

    .line 166
    return-void
.end method
