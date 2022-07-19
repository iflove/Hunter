.class public Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;
.super Ljava/lang/Thread;
.source "LogContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/LogContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FulllinkWorker"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/logging/LogContextImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/logging/LogContextImpl;

    .line 167
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 172
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    .line 173
    .local v1, "priority":I
    move v1, v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 174
    const/4 v1, 0x5

    .line 176
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;->setPriority(I)V

    .line 180
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/Queue;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/util/Queue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "LogContext"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FulllinkWorker take: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 185
    nop

    .end local v0    # "e":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->c(Lcom/alipay/mobile/common/logging/LogContextImpl;)Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;

    .line 186
    return-void

    .line 185
    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->c(Lcom/alipay/mobile/common/logging/LogContextImpl;)Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;

    throw v0
.end method
