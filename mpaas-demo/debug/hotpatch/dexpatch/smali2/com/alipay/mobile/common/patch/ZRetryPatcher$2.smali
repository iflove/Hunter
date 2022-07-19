.class Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;
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

    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 2
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->delNewFile()V

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->onFail(I)V

    .line 154
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed download newFile."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "url= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    .line 146
    # getter for: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$300(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    const-string v2, "ZRetryPatcher"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->onFail(I)V

    .line 148
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 135
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download newFile completed url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    # getter for: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$300(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZRetryPatcher"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    # invokes: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a()Z
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$200(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v1, v0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->onSuccess(Ljava/lang/String;)V

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->onFail(I)V

    .line 141
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 131
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 1
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "percent"    # D

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-virtual {v0, p2, p3}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->updateDownloadNewFileProgress(D)V

    .line 126
    return-void
.end method
