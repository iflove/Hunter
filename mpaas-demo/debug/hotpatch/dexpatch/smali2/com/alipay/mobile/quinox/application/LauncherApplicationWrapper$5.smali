.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$5;
.super Ljava/lang/Object;
.source "LauncherApplicationWrapper.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/utils/Callback;


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
        "Lcom/alipay/mobile/quinox/utils/Callback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

.field final synthetic val$originStates:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 1312
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$5;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$5;->val$originStates:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1315
    instance-of v0, p1, Ljava/lang/String;

    const-string v1, "LauncherApplication"

    if-eqz v0, :cond_0

    .line 1316
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    const-string v0, "ignore PreloadFodderActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    return-void

    .line 1323
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const/4 v2, 0x0

    .line 1324
    .local v2, "throwable":Ljava/lang/Throwable;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->isInPreloadBlackList([Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1325
    const-string v0, "ignore black list when onBizStart"

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1326
    return-void

    .line 1329
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$5;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mPreloadBizStarted:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$400(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1330
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    .line 1331
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->resumeInternalPreparePending()V

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onBizStart, obj:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1335
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$5;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$500(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$5;->val$originStates:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->recoverBlackListComponentStateIfNeed(Landroid/content/Context;Ljava/util/Map;)V

    .line 1337
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$5;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preInstall:Z
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$600(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Z

    move-result v1

    # invokes: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->prepare(Z)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$700(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Z)V

    .line 1339
    :cond_2
    return-void
.end method
