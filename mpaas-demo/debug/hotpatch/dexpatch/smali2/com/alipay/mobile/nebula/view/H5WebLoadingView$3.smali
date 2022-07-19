.class Lcom/alipay/mobile/nebula/view/H5WebLoadingView$3;
.super Ljava/lang/Object;
.source "H5WebLoadingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->startLoadingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

.field final synthetic val$centerX:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    .line 218
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$3;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    iput p2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$3;->val$centerX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$3;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkDotX:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->access$002(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;I)I

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$3;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    # getter for: Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkDotX:I
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->access$000(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;)I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$3;->val$centerX:I

    if-ge v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$3;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    add-int/2addr v1, v1

    # getter for: Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkDotX:I
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->access$000(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;)I

    move-result v2

    sub-int/2addr v1, v2

    # setter for: Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLightDotX:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->access$102(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;I)I

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$3;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    # getter for: Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkDotX:I
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->access$000(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;)I

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$3;->val$centerX:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    # setter for: Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLightDotX:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->access$102(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;I)I

    .line 227
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$3;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->invalidate()V

    .line 228
    return-void
.end method
