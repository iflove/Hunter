.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8$1PreloadEmptyActivity;
.super Landroid/app/Activity;
.source "LauncherApplicationWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1PreloadEmptyActivity"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;

.field final synthetic val$bundleResources:Lcom/alipay/mobile/quinox/resources/BundleResources;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;Lcom/alipay/mobile/quinox/resources/BundleResources;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1785
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8$1PreloadEmptyActivity;->this$1:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8$1PreloadEmptyActivity;->val$bundleResources:Lcom/alipay/mobile/quinox/resources/BundleResources;

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public attachCxt(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 1792
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8$1PreloadEmptyActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 1793
    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1788
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8$1PreloadEmptyActivity;->val$bundleResources:Lcom/alipay/mobile/quinox/resources/BundleResources;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1797
    const-string v0, "layout_inflater"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1798
    invoke-super {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1800
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8$1PreloadEmptyActivity;->this$1:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$500(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
