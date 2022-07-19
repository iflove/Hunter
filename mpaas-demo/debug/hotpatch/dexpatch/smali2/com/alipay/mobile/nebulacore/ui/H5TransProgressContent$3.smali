.class Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$3;
.super Ljava/lang/Object;
.source "H5TransProgressContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    .line 144
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$3;->a:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$3;->a:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->c(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_title_bar_progress:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 149
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$3;->a:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->c(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->dip2px(Landroid/content/Context;I)I

    move-result v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$3;->a:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->c(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->dip2px(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$3;->a:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->d(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$3;->a:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->d(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 152
    return-void
.end method
