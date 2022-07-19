.class final Lcom/alipay/mobile/antui/basic/AUPullLoadingView$1;
.super Ljava/lang/Object;
.source "AUPullLoadingView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUPullLoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    .line 68
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView$1;->a:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView$1;->a:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->clearAnimation()V

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView$1;->a:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mCloseAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->access$000(Lcom/alipay/mobile/antui/basic/AUPullLoadingView;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView$1;->a:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorUpDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->access$100(Lcom/alipay/mobile/antui/basic/AUPullLoadingView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView$1;->a:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicator:Lcom/alipay/mobile/antui/basic/AUImageView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->access$200(Lcom/alipay/mobile/antui/basic/AUPullLoadingView;)Lcom/alipay/mobile/antui/basic/AUImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView$1;->a:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorUpDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->access$100(Lcom/alipay/mobile/antui/basic/AUPullLoadingView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView$1;->a:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorDownDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->access$300(Lcom/alipay/mobile/antui/basic/AUPullLoadingView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView$1;->a:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicator:Lcom/alipay/mobile/antui/basic/AUImageView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->access$200(Lcom/alipay/mobile/antui/basic/AUPullLoadingView;)Lcom/alipay/mobile/antui/basic/AUImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView$1;->a:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorDownDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->access$300(Lcom/alipay/mobile/antui/basic/AUPullLoadingView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullLoadingView$1;->a:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->mIndicatorDownDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->access$300(Lcom/alipay/mobile/antui/basic/AUPullLoadingView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 93
    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 78
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 73
    return-void
.end method
