.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$3;
.super Ljava/lang/Object;
.source "LauncherApplicationWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->attachBaseContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

.field final synthetic val$libLoaded:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 852
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$3;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    iput-boolean p2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$3;->val$libLoaded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 855
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 856
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "doInstallMultiDex"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 857
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->canHook()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$3;->val$libLoaded:Z

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$3;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxMultiDex:Lcom/alipay/mobile/quinox/b;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$200(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/b;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/b;->a(Ljava/lang/String;)V

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$3;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxMultiDex:Lcom/alipay/mobile/quinox/b;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$200(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/b;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/b;->a(Ljava/lang/ClassLoader;)V

    .line 862
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$3;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxMultiDex:Lcom/alipay/mobile/quinox/b;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$200(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/b;->e()V

    .line 863
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 864
    return-void
.end method
