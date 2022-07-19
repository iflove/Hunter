.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$4;
.super Ljava/lang/Object;
.source "LauncherApplicationWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 1289
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$4;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 6

    .line 1292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1293
    .local v0, "startTime":J
    const-string v2, "LauncherApplication"

    const-string v3, "preload started."

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const/16 v3, -0x12

    :try_start_0
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1299
    goto :goto_0

    .line 1297
    :catchall_0
    move-exception v3

    .line 1298
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1301
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$4;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # invokes: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->internalPreload()V
    invoke-static {v3}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$300(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V

    .line 1303
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "preload end, costTime: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1289
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$4;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
