.class Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;
.super Ljava/lang/Object;
.source "UpgradeSilentDownloadServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->startSilentDownload(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService$UpgradeSilentDownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

.field final synthetic val$callback:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService$UpgradeSilentDownloadCallback;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService$UpgradeSilentDownloadCallback;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$callback:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService$UpgradeSilentDownloadCallback;

    iput-object p5, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->silentFuture:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$100(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->silentFuture:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$100(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$callback:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService$UpgradeSilentDownloadCallback;

    if-eqz v0, :cond_1

    .line 146
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService$UpgradeSilentDownloadCallback;->onCancel(Lcom/alipay/mobile/common/transport/Request;Ljava/lang/String;)V

    .line 148
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCancelled, remove future = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->silentFuture:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$100(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->silentFuture:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$100(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$callback:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService$UpgradeSilentDownloadCallback;

    if-eqz v0, :cond_1

    .line 134
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService$UpgradeSilentDownloadCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onFailed, remove future = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$url:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 4

    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPostExecute, remove future = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->silentFuture:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$100(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->silentFuture:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$100(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$callback:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService$UpgradeSilentDownloadCallback;

    if-eqz v0, :cond_1

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService$UpgradeSilentDownloadCallback;->onComplete(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;Ljava/lang/String;)V

    .line 75
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u4e0b\u8f7d\u6210\u529f, response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/Response;->getContentType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->silentFuture:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$100(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->silentFuture:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$100(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->future:Ljava/util/concurrent/Future;
    invoke-static {v2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$300(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$callback:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService$UpgradeSilentDownloadCallback;

    if-eqz v0, :cond_1

    .line 158
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService$UpgradeSilentDownloadCallback;->onStart(Lcom/alipay/mobile/common/transport/Request;Ljava/lang/String;)V

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->isWifi()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->checkWifiValid()Z
    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$200(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 164
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPreExecute"

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 161
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6267\u884c\u4e2d\u65ad,\u5f53\u524d\u975ewifi: isWifi? = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->isWifi()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " checkWifiValid? = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->checkWifiValid()Z
    invoke-static {v2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$200(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "\u5f53\u524d\u7f51\u7edc\u73af\u5883\u4e0d\u6ee1\u8db3\u4e0b\u8f7d\u6761\u4ef6"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 4

    .line 100
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u4e0b\u8f7d\u8fdb\u5ea6, percent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$callback:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService$UpgradeSilentDownloadCallback;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadService$UpgradeSilentDownloadCallback;->onProgress(Lcom/alipay/mobile/common/transport/Request;D)V

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    mul-double v0, v0, v2

    cmpl-double p1, p2, v0

    if-lez p1, :cond_4

    .line 105
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_1

    .line 106
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    div-double v0, p2, v2

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 107
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u521d\u59cb\u5316\u60c5\u51b5 ,count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u76f2\u70b9\u68c0\u67e5,percent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->isWifi()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 115
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "isWifi"

    invoke-interface {p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 118
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->checkWifiValid()Z
    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$200(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 119
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "WifiValid"

    invoke-interface {p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "WifiInValid"

    invoke-interface {p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "\u5047wifi\u4e0d\u6ee1\u8db3\u4e0b\u8f7d\u6761\u4ef6"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/android/security/upgrade/download/silent/UpgradeSilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "\u6267\u884c\u4e2d\u65ad,\u68c0\u6d4b\u5230\u5f53\u524d\u8fd0\u884c\u7f51\u7edc\u53d1\u751f\u53d8\u5316"

    invoke-interface {p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "\u5f53\u524d\u7f51\u7edc\u73af\u5883\u4e0d\u6ee1\u8db3\u4e0b\u8f7d\u6761\u4ef6"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_4
    :goto_0
    return-void
.end method
