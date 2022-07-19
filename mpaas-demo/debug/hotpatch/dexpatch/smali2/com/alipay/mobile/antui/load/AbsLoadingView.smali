.class public abstract Lcom/alipay/mobile/antui/load/AbsLoadingView;
.super Lcom/alipay/mobile/antui/basic/AUFrameLayout;
.source "AbsLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/load/AbsLoadingView$LoadingListener;
    }
.end annotation


# instance fields
.field private firstLoadingAppeared:Z

.field protected isLoading:Z

.field protected isShowLine:Z

.field protected loadingListener:Lcom/alipay/mobile/antui/load/AbsLoadingView$LoadingListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AbsLoadingView;->isLoading:Z

    .line 17
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AbsLoadingView;->isShowLine:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AbsLoadingView;->isLoading:Z

    .line 17
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AbsLoadingView;->isShowLine:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AbsLoadingView;->isLoading:Z

    .line 17
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AbsLoadingView;->isShowLine:Z

    .line 21
    return-void
.end method


# virtual methods
.method public abstract finishLoading()V
.end method

.method public initAnimation(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 63
    return-void
.end method

.method public isFirstLoadingAppeared()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AbsLoadingView;->firstLoadingAppeared:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AbsLoadingView;->isLoading:Z

    return v0
.end method

.method public abstract onPullOver(II)V
.end method

.method public abstract pause()V
.end method

.method public setFirstLoadingAppeared(Z)V
    .locals 0
    .param p1, "firstLoadingAppeared"    # Z

    .line 43
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/load/AbsLoadingView;->firstLoadingAppeared:Z

    .line 44
    return-void
.end method

.method public setLoadingListener(Lcom/alipay/mobile/antui/load/AbsLoadingView$LoadingListener;)V
    .locals 0
    .param p1, "loadingListener"    # Lcom/alipay/mobile/antui/load/AbsLoadingView$LoadingListener;

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AbsLoadingView;->loadingListener:Lcom/alipay/mobile/antui/load/AbsLoadingView$LoadingListener;

    .line 40
    return-void
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setShowLine(Z)V
    .locals 0
    .param p1, "showLine"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/load/AbsLoadingView;->isShowLine:Z

    .line 36
    return-void
.end method

.method public abstract startLoading()V
.end method
