.class final Lcom/alipay/mobile/antui/load/AntLoadingView$1;
.super Ljava/lang/Object;
.source "AntLoadingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/load/AntLoadingView;->setAntColor(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/load/AntLoadingView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/load/AntLoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/load/AntLoadingView;

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AntLoadingView$1;->a:Lcom/alipay/mobile/antui/load/AntLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    const-string v0, "AntLoadingView"

    .line 88
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    .line 89
    .local v2, "currentValue":F
    float-to-double v3, v1

    const-wide v5, 0x3fe8000006666666L    # 0.7500000119209289

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AntLoadingView$1;->a:Lcom/alipay/mobile/antui/load/AntLoadingView;

    iget-object v1, v1, Lcom/alipay/mobile/antui/load/AntLoadingView;->loadingListener:Lcom/alipay/mobile/antui/load/AbsLoadingView$LoadingListener;

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "firstLoadingAppeared"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AntLoadingView$1;->a:Lcom/alipay/mobile/antui/load/AntLoadingView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/antui/load/AntLoadingView;->setFirstLoadingAppeared(Z)V

    .line 93
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AntLoadingView$1;->a:Lcom/alipay/mobile/antui/load/AntLoadingView;

    iget-object v1, v1, Lcom/alipay/mobile/antui/load/AntLoadingView;->loadingListener:Lcom/alipay/mobile/antui/load/AbsLoadingView$LoadingListener;

    invoke-interface {v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView$LoadingListener;->onLoadingAppeared()V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v2    # "currentValue":F
    :cond_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "ex":Landroid/net/ParseException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parseALabel error :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .end local v1    # "ex":Landroid/net/ParseException;
    return-void
.end method
