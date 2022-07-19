.class public Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit$MyContextWrapper;
.super Landroid/view/ContextThemeWrapper;
.source "TinyInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyContextWrapper"
.end annotation


# instance fields
.field private resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 345
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 346
    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit$MyContextWrapper;->resources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 351
    const-string/jumbo v0, "wpsss ctWrapper"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 353
    const-string v1, "com-mpaas-nebula-adapter-commonbizadapter"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit$MyContextWrapper;->resources:Landroid/content/res/Resources;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit$MyContextWrapper;->resources:Landroid/content/res/Resources;

    return-object v0
.end method
