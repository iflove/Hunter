.class Lcom/alipay/mobile/quinox/LauncherActivity$7;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/LauncherActivity;->onUserLeaveHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/LauncherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/LauncherActivity;

    .line 1072
    iput-object p1, p0, Lcom/alipay/mobile/quinox/LauncherActivity$7;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "LauncherActivity"

    .line 1077
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    move-object v3, v2

    .line 1078
    .local v3, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1079
    .local v2, "tasks":Ljava/util/List;
    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1080
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1081
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1082
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity$7;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    # invokes: Lcom/alipay/mobile/quinox/LauncherActivity;->removeStartUpFlag()V
    invoke-static {v1}, Lcom/alipay/mobile/quinox/LauncherActivity;->access$600(Lcom/alipay/mobile/quinox/LauncherActivity;)V

    .line 1083
    const-string v1, "removeStartUpFlag working"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    .end local v2    # "tasks":Ljava/util/List;
    .end local v3    # "am":Landroid/app/ActivityManager;
    :cond_0
    return-void

    .line 1086
    :catchall_0
    move-exception v1

    .line 1087
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1089
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method
