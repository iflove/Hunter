.class Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;
.super Ljava/lang/Object;
.source "H5Fragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 109
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->b:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 116
    const-string v0, "H5Fragment"

    const-string v1, "pushwindow animation onAnimationEnd"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget v1, Lcom/alipay/mobile/nebula/R$anim;->h5_translate_in_right:I

    iget v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->a:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->b:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->b:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v1, :cond_0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pushwindow animation old webview onResume "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->b:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->b:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)Z

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->b:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onResume()V

    .line 122
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 126
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 112
    return-void
.end method
