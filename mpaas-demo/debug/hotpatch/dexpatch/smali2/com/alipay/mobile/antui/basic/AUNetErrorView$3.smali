.class final Lcom/alipay/mobile/antui/basic/AUNetErrorView$3;
.super Ljava/lang/Object;
.source "AUNetErrorView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/AUNetErrorView;->loadLottie(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    .line 301
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$3;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 315
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 310
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 320
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$3;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIcon:Lcom/alipay/mobile/antui/basic/AUImageView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$300(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Lcom/alipay/mobile/antui/basic/AUImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 305
    return-void
.end method
