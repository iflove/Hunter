.class Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;
.super Ljava/lang/Object;
.source "SilentDownloadServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->startSilentDownload(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

.field final synthetic val$callback:Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$callback:Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;

    iput-object p5, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->b:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$100(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->b:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$100(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$callback:Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;

    if-eqz v0, :cond_1

    .line 148
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;->onCancel(Lcom/alipay/mobile/common/transport/Request;Ljava/lang/String;)V

    .line 150
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCancelled, remove future = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->b:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$100(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->b:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$100(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$callback:Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;

    if-eqz v0, :cond_1

    .line 136
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;
    invoke-static {p2}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onFailed, remove future = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$url:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 4

    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPostExecute, remove future = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->b:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$100(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->b:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$100(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$callback:Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;

    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;->onComplete(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;Ljava/lang/String;)V

    .line 77
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/lang/String;

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

    .line 97
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->b:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$100(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->b:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$100(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->d:Ljava/util/concurrent/Future;
    invoke-static {v2}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$300(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$callback:Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;

    if-eqz v0, :cond_1

    .line 160
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;->onStart(Lcom/alipay/mobile/common/transport/Request;Ljava/lang/String;)V

    .line 162
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->isWifi()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # invokes: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a()Z
    invoke-static {p1}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$200(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 166
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPreExecute"

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void

    .line 163
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6267\u884c\u4e2d\u65ad,\u5f53\u524d\u975ewifi: isWifi? = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->isWifi()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " checkWifiValid? = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # invokes: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a()Z
    invoke-static {v2}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$200(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "\u5f53\u524d\u7f51\u7edc\u73af\u5883\u4e0d\u6ee1\u8db3\u4e0b\u8f7d\u6761\u4ef6"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 4

    .line 102
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u4e0b\u8f7d\u8fdb\u5ea6, percent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$callback:Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/service/common/SilentDownloadService$SilentDownloadCallback;->onProgress(Lcom/alipay/mobile/common/transport/Request;D)V

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    mul-double v0, v0, v2

    cmpl-double p1, p2, v0

    if-lez p1, :cond_4

    .line 107
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    div-double v0, p2, v2

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 109
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u521d\u59cb\u5316\u60c5\u51b5 ,count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u76f2\u70b9\u68c0\u67e5,percent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->isWifi()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;
    invoke-static {p2}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "isWifi"

    invoke-interface {p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 120
    iget-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # invokes: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a()Z
    invoke-static {p1}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$200(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 121
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;
    invoke-static {p2}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "WifiValid"

    invoke-interface {p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;
    invoke-static {p2}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "WifiInValid"

    invoke-interface {p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "\u5047wifi\u4e0d\u6ee1\u8db3\u4e0b\u8f7d\u6761\u4ef6"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->a:Ljava/lang/String;
    invoke-static {p2}, Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;->access$000(Lcom/alipay/mobile/framework/service/common/impl/SilentDownloadServiceImpl;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "\u6267\u884c\u4e2d\u65ad,\u68c0\u6d4b\u5230\u5f53\u524d\u8fd0\u884c\u7f51\u7edc\u53d1\u751f\u53d8\u5316"

    invoke-interface {p1, p2, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "\u5f53\u524d\u7f51\u7edc\u73af\u5883\u4e0d\u6ee1\u8db3\u4e0b\u8f7d\u6761\u4ef6"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_4
    :goto_0
    return-void
.end method
