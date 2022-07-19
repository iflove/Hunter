.class final Lcom/alipay/mobile/antui/segement/AUSegment$5;
.super Ljava/lang/Object;
.source "AUSegment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/segement/AUSegment;->moveScrollBarTo(FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/segement/AUSegment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/segement/AUSegment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/segement/AUSegment;

    .line 991
    iput-object p1, p0, Lcom/alipay/mobile/antui/segement/AUSegment$5;->a:Lcom/alipay/mobile/antui/segement/AUSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 994
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment$5;->a:Lcom/alipay/mobile/antui/segement/AUSegment;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/AUSegment;->updateWidth(I)V

    .line 995
    return-void
.end method
