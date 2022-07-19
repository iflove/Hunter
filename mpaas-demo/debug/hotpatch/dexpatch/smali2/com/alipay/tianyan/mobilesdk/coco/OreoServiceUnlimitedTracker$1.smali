.class Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker$1;
.super Ljava/lang/Object;
.source "OreoServiceUnlimitedTracker.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;


# direct methods
.method constructor <init>(Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;

    .line 65
    iput-object p1, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker$1;->this$0:Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 7
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 68
    new-instance v6, Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    const-string v3, "oreo-unlimited-logger"

    const-wide/16 v4, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    const/4 v0, 0x0

    .line 71
    .local v0, "t":Ljava/lang/Thread;
    move-object v0, v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isDaemon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 73
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 75
    :cond_1
    return-object v0
.end method
