.class Lcom/alipay/mobile/quinox/LauncherActivity$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/LauncherActivity;
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

    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/quinox/LauncherActivity$1;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .line 93
    const-string v0, "mytest"

    const-string v1, "mBootObserver.update"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity$1;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    # getter for: Lcom/alipay/mobile/quinox/LauncherActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherActivity;->access$000(Lcom/alipay/mobile/quinox/LauncherActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/LauncherActivity$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/LauncherActivity$1$1;-><init>(Lcom/alipay/mobile/quinox/LauncherActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method
