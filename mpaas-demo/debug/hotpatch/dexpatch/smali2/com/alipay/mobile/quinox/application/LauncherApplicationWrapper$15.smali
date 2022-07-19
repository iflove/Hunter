.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$15;
.super Ljava/lang/Object;
.source "LauncherApplicationWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->internalPrepare(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 2162
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$15;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2165
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getMainUILaunched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2166
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$15$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$15$1;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$15;)V

    const-wide/16 v2, 0xbb8

    const-string v4, ""

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->scheduleTimer(Ljava/lang/Runnable;Ljava/lang/String;J)Ljava/util/TimerTask;

    return-void

    .line 2173
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$15;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->postInit()V

    .line 2175
    return-void
.end method
