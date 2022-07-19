.class Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$1;
.super Ljava/lang/Object;
.source "ProcessFgBgWatcher.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;

    .line 159
    iput-object p1, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$1;->this$0:Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 162
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 166
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$1;->this$0:Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mCurIsForeground:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->access$302(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;Z)Z

    .line 193
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$1;->this$0:Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;

    # getter for: Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mCurIsForeground:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->access$300(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$1;->this$0:Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mCurIsForeground:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->access$302(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;Z)Z

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$1;->this$0:Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->notifyMoveToForeground(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->access$400(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 197
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$1;->this$0:Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;

    # operator++ for: Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mVisible:I
    invoke-static {v0}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->access$008(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;)I

    .line 171
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$1;->this$0:Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;

    # operator-- for: Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mVisible:I
    invoke-static {v0}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->access$010(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;)I

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$1;->this$0:Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;

    # invokes: Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->isProcessForeground(Landroid/content/Context;Landroid/app/Activity;)Z
    invoke-static {v0, p1, p1}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->access$100(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;Landroid/content/Context;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher$1;->this$0:Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->notifyMoveToBackground(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->access$200(Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method
