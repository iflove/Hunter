.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;
.super Ljava/lang/Object;
.source "LauncherApplicationWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1772
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1776
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResourcesManager:Lcom/alipay/mobile/quinox/resources/ResourcesManager;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$1000(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/resources/ResourcesManager;->getHostResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/resources/BundleResources;

    .line 1777
    .local v0, "bundleResources":Lcom/alipay/mobile/quinox/resources/BundleResources;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # invokes: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getLauncherActivityThemeResources()I
    invoke-static {v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$1100(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)I

    move-result v1

    const/4 v2, 0x0

    .line 1778
    .local v2, "themeResources":I
    move v2, v1

    if-eqz v1, :cond_0

    .line 1779
    new-instance v1, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8$1;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;
    invoke-static {v3}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$500(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2, v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8$1;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;Landroid/content/Context;ILcom/alipay/mobile/quinox/resources/BundleResources;)V

    .line 1803
    .local v1, "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v3, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8$1PreloadEmptyActivity;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8$1PreloadEmptyActivity;-><init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;Lcom/alipay/mobile/quinox/resources/BundleResources;)V

    const/4 v4, 0x0

    .line 1804
    .local v4, "activity":Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8$1PreloadEmptyActivity;
    move-object v4, v3

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8$1PreloadEmptyActivity;->attachCxt(Landroid/content/Context;)V

    .line 1805
    invoke-static {v1, v4, v0}, Lcom/alipay/mobile/quinox/preload/PreInflateViewCache;->init(Landroid/view/ContextThemeWrapper;Landroid/app/Activity;Landroid/content/res/Resources;)V

    .line 1808
    .end local v1    # "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    .end local v4    # "activity":Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8$1PreloadEmptyActivity;
    :cond_0
    sget-object v1, Lcom/alipay/mobile/quinox/perfhelper/StartupResConstant;->STARTUP_DRAWABLES:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->preloadDrawables([Ljava/lang/String;)V

    .line 1809
    return-void
.end method
