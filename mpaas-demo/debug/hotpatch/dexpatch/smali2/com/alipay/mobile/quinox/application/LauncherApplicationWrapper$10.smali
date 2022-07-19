.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$10;
.super Lcom/alipay/mobile/quinox/utils/EmptyActivityLifecycleCallback;
.source "LauncherApplicationWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->internalPreloadActivity()V
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

    .line 1824
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$10;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/EmptyActivityLifecycleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1827
    instance-of v0, p1, Lcom/alipay/mobile/quinox/preload/PreloadableActivity;

    if-nez v0, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$10;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->endPreloadActivity()V

    .line 1829
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$10;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$500(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1831
    :cond_0
    return-void
.end method
