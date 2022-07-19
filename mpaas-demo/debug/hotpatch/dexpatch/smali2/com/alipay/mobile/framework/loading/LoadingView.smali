.class public abstract Lcom/alipay/mobile/framework/loading/LoadingView;
.super Landroid/widget/FrameLayout;
.source "LoadingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/loading/LoadingView$OnCancelListener;,
        Lcom/alipay/mobile/framework/loading/LoadingView$Factory;
    }
.end annotation


# instance fields
.field protected hostActivity:Landroid/app/Activity;

.field protected onCancelListener:Lcom/alipay/mobile/framework/loading/LoadingView$OnCancelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/framework/loading/LoadingView;->onCancelListener:Lcom/alipay/mobile/framework/loading/LoadingView$OnCancelListener;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lcom/alipay/mobile/framework/loading/LoadingView$OnCancelListener;->onCancel()V

    .line 100
    :cond_0
    return-void
.end method

.method public abstract onHandleMessage(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public performAnimation(Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V
    .locals 3
    .param p1, "animationType"    # Ljava/lang/String;
    .param p2, "animatorListener"    # Landroid/animation/Animator$AnimatorListener;

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " animation not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sendMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/alipay/mobile/framework/loading/LoadingView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/framework/loading/LoadingView$3;-><init>(Lcom/alipay/mobile/framework/loading/LoadingView;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/loading/LoadingView;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void
.end method

.method public setHostActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "hostActivity"    # Landroid/app/Activity;

    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/framework/loading/LoadingView;->hostActivity:Landroid/app/Activity;

    .line 49
    return-void
.end method

.method public setOnCancelListener(Lcom/alipay/mobile/framework/loading/LoadingView$OnCancelListener;)V
    .locals 0
    .param p1, "onCancelListener"    # Lcom/alipay/mobile/framework/loading/LoadingView$OnCancelListener;

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/framework/loading/LoadingView;->onCancelListener:Lcom/alipay/mobile/framework/loading/LoadingView$OnCancelListener;

    .line 45
    return-void
.end method

.method public final start()V
    .locals 1

    .line 58
    new-instance v0, Lcom/alipay/mobile/framework/loading/LoadingView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/loading/LoadingView$1;-><init>(Lcom/alipay/mobile/framework/loading/LoadingView;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/loading/LoadingView;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 71
    new-instance v0, Lcom/alipay/mobile/framework/loading/LoadingView$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/loading/LoadingView$2;-><init>(Lcom/alipay/mobile/framework/loading/LoadingView;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/loading/LoadingView;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method
