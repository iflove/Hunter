.class Lcom/alipay/mobile/quinox/LauncherActivity$3;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/LauncherActivity;->onWindowFocusChanged(Z)V
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

    .line 599
    iput-object p1, p0, Lcom/alipay/mobile/quinox/LauncherActivity$3;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity$3;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    # getter for: Lcom/alipay/mobile/quinox/LauncherActivity;->bootfinishDone:Z
    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherActivity;->access$200(Lcom/alipay/mobile/quinox/LauncherActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity$3;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/mobile/quinox/LauncherActivity;->bootfinishDone:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/LauncherActivity;->access$202(Lcom/alipay/mobile/quinox/LauncherActivity;Z)Z

    .line 604
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity$3;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherActivity;->bootfinish()V

    .line 605
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity$3;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    # getter for: Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherActivity;->access$300(Lcom/alipay/mobile/quinox/LauncherActivity;)Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->bootFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity$3;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    # getter for: Lcom/alipay/mobile/quinox/LauncherActivity;->needDoPostInit:Z
    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherActivity;->access$400(Lcom/alipay/mobile/quinox/LauncherActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity$3;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    # invokes: Lcom/alipay/mobile/quinox/LauncherActivity;->doPostInit()V
    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherActivity;->access$100(Lcom/alipay/mobile/quinox/LauncherActivity;)V

    .line 609
    :cond_0
    return-void
.end method
