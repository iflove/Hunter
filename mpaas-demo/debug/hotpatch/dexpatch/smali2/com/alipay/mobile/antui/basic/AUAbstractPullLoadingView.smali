.class public abstract Lcom/alipay/mobile/antui/basic/AUAbstractPullLoadingView;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "AUAbstractPullLoadingView.java"


# static fields
.field public static final STATE_CLOSE:B = 0x0t

.field public static final STATE_FINISH:B = 0x4t

.field public static final STATE_LOAD:B = 0x3t

.field public static final STATE_OPEN:B = 0x1t

.field public static final STATE_OVER:B = 0x2t


# instance fields
.field protected mState:B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/antui/basic/AUAbstractPullLoadingView;->mState:B

    .line 32
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUAbstractPullLoadingView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/antui/basic/AUAbstractPullLoadingView;->mState:B

    .line 27
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUAbstractPullLoadingView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/antui/basic/AUAbstractPullLoadingView;->mState:B

    .line 22
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUAbstractPullLoadingView;->init()V

    .line 23
    return-void
.end method


# virtual methods
.method public getLoadingLogo()Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 1

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoadingShadowView()Landroid/view/View;
    .locals 1

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNormalLogo()Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 1

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNormalShadowView()Landroid/view/View;
    .locals 1

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getOverViewHeight()I
.end method

.method public getRemainedLoadingDuration()J
    .locals 2

    .line 144
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getState()B
    .locals 1

    .line 93
    iget-byte v0, p0, Lcom/alipay/mobile/antui/basic/AUAbstractPullLoadingView;->mState:B

    return v0
.end method

.method public abstract init()V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onLoad()V
.end method

.method public abstract onOpen()V
.end method

.method public abstract onOver()V
.end method

.method public onPullto(DB)V
    .locals 0
    .param p1, "pos"    # D
    .param p3, "pullRefreshState"    # B

    .line 59
    return-void
.end method

.method public setState(B)V
    .locals 0
    .param p1, "state"    # B

    .line 84
    iput-byte p1, p0, Lcom/alipay/mobile/antui/basic/AUAbstractPullLoadingView;->mState:B

    .line 85
    return-void
.end method
