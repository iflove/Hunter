.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8$1;
.super Landroid/view/ContextThemeWrapper;
.source "LauncherApplicationWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;

.field final synthetic val$bundleResources:Lcom/alipay/mobile/quinox/resources/BundleResources;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;Landroid/content/Context;ILcom/alipay/mobile/quinox/resources/BundleResources;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .line 1779
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8$1;->this$1:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8;

    iput-object p4, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8$1;->val$bundleResources:Lcom/alipay/mobile/quinox/resources/BundleResources;

    invoke-direct {p0, p2, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1782
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$8$1;->val$bundleResources:Lcom/alipay/mobile/quinox/resources/BundleResources;

    return-object v0
.end method
