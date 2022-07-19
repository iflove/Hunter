.class final Lcom/alipay/mobile/antui/load/PullStayLoadingView$1;
.super Ljava/lang/Object;
.source "PullStayLoadingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/load/PullStayLoadingView;->setAntColor(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/load/PullStayLoadingView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/load/PullStayLoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/load/PullStayLoadingView;

    .line 122
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView$1;->a:Lcom/alipay/mobile/antui/load/PullStayLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 126
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    .line 127
    .local v1, "currentValue":F
    float-to-double v2, v0

    const-wide v4, 0x3fe8000006666666L    # 0.7500000119209289

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView$1;->a:Lcom/alipay/mobile/antui/load/PullStayLoadingView;

    iget-object v0, v0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->loadingListener:Lcom/alipay/mobile/antui/load/AbsLoadingView$LoadingListener;

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "AntLoadingView"

    const-string v2, "firstLoadingAppeared"

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView$1;->a:Lcom/alipay/mobile/antui/load/PullStayLoadingView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->setFirstLoadingAppeared(Z)V

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/PullStayLoadingView$1;->a:Lcom/alipay/mobile/antui/load/PullStayLoadingView;

    iget-object v0, v0, Lcom/alipay/mobile/antui/load/PullStayLoadingView;->loadingListener:Lcom/alipay/mobile/antui/load/AbsLoadingView$LoadingListener;

    invoke-interface {v0}, Lcom/alipay/mobile/antui/load/AbsLoadingView$LoadingListener;->onLoadingAppeared()V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1    # "currentValue":F
    :cond_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Landroid/net/ParseException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "parseALabel error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PullStayLoadingView"

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v0    # "ex":Landroid/net/ParseException;
    return-void
.end method
