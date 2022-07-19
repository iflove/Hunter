.class Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream$TimeoutMonitor;
.super Ljava/lang/Object;
.source "ZHttpOutputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeoutMonitor"
.end annotation


# instance fields
.field executeTime:J

.field final synthetic this$0:Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;

    .line 139
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream$TimeoutMonitor;->this$0:Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream$TimeoutMonitor;->executeTime:J

    .line 140
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "ZHttpOutputStream"

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream$TimeoutMonitor;->executeTime:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 146
    return-void

    .line 151
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream$TimeoutMonitor;->this$0:Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;

    # getter for: Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;->access$000(Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream;)Lcom/alipay/mobile/common/transport/http/HttpWorker;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 152
    .local v3, "httpWorker":Lcom/alipay/mobile/common/transport/http/HttpWorker;
    move-object v3, v1

    if-nez v1, :cond_1

    .line 153
    return-void

    .line 156
    :cond_1
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .line 157
    .local v2, "targetHttpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object v2, v1

    if-nez v1, :cond_2

    .line 158
    return-void

    .line 161
    :cond_2
    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 162
    const-string v1, "Timeout, initiative abort request "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v2    # "targetHttpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v3    # "httpWorker":Lcom/alipay/mobile/common/transport/http/HttpWorker;
    return-void

    .line 163
    :catchall_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "Timeout abort request fail."

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public setExecuteTime(J)V
    .locals 0
    .param p1, "executeTime"    # J

    .line 169
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/http/ZHttpOutputStream$TimeoutMonitor;->executeTime:J

    .line 170
    return-void
.end method
