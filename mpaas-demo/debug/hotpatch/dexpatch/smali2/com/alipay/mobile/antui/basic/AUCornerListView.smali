.class public Lcom/alipay/mobile/antui/basic/AUCornerListView;
.super Lcom/alipay/mobile/antui/basic/AUListView;
.source "AUCornerListView.java"


# instance fields
.field private hasFoot:Z

.field private hasHead:Z

.field private mMultiLineDefaultBGResid:I

.field private mMultiLineFirstBGResid:I

.field private mMultiLineLastBGResid:I

.field private mSingleLineBGResid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;-><init>(Landroid/content/Context;)V

    .line 15
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_round:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mSingleLineBGResid:I

    .line 16
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_round_top:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mMultiLineFirstBGResid:I

    .line 17
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_round_bottom:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mMultiLineLastBGResid:I

    .line 18
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_shape:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mMultiLineDefaultBGResid:I

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->hasFoot:Z

    .line 21
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->hasHead:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_round:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mSingleLineBGResid:I

    .line 16
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_round_top:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mMultiLineFirstBGResid:I

    .line 17
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_round_bottom:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mMultiLineLastBGResid:I

    .line 18
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_shape:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mMultiLineDefaultBGResid:I

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->hasFoot:Z

    .line 21
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->hasHead:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_round:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mSingleLineBGResid:I

    .line 16
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_round_top:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mMultiLineFirstBGResid:I

    .line 17
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_round_bottom:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mMultiLineLastBGResid:I

    .line 18
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_shape:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mMultiLineDefaultBGResid:I

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->hasFoot:Z

    .line 21
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->hasHead:Z

    .line 33
    return-void
.end method

.method private chooseBackground(I)V
    .locals 1
    .param p1, "itemnum"    # I

    .line 59
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 60
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->getFirstVisiblePosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->hasHead:Z

    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 62
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mSingleLineBGResid:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setSelector(I)V

    return-void

    .line 64
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mMultiLineFirstBGResid:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setSelector(I)V

    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->getLastVisiblePosition()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->hasFoot:Z

    if-nez v0, :cond_2

    .line 67
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mMultiLineLastBGResid:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setSelector(I)V

    return-void

    .line 69
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mMultiLineDefaultBGResid:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setSelector(I)V

    .line 72
    :cond_3
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 41
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 43
    .local v1, "y":I
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->pointToPosition(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->chooseBackground(I)V

    .line 50
    .end local v0    # "x":I
    .end local v1    # "y":I
    :goto_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setMultiLineDefaultBGResid(I)V
    .locals 0
    .param p1, "mMultiLineDefaultBGResid"    # I

    .line 87
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mMultiLineDefaultBGResid:I

    .line 88
    return-void
.end method

.method public setMultiLineFirstBGResid(I)V
    .locals 0
    .param p1, "mMultiLineFirstBGResid"    # I

    .line 79
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mMultiLineFirstBGResid:I

    .line 80
    return-void
.end method

.method public setMultiLineLastBGResid(I)V
    .locals 0
    .param p1, "mMultiLineLastBGResid"    # I

    .line 83
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mMultiLineLastBGResid:I

    .line 84
    return-void
.end method

.method public setSingleLineBGResid(I)V
    .locals 0
    .param p1, "mSingleLineBGResid"    # I

    .line 75
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->mSingleLineBGResid:I

    .line 76
    return-void
.end method

.method public updateFootState(Z)V
    .locals 0
    .param p1, "hasFoot"    # Z

    .line 100
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->hasFoot:Z

    .line 101
    return-void
.end method

.method public updateHeadFootState(ZZ)V
    .locals 0
    .param p1, "hasFoot"    # Z
    .param p2, "hasHead"    # Z

    .line 91
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->hasFoot:Z

    .line 92
    iput-boolean p2, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->hasHead:Z

    .line 93
    return-void
.end method

.method public updateHeadState(Z)V
    .locals 0
    .param p1, "hasHead"    # Z

    .line 96
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUCornerListView;->hasHead:Z

    .line 97
    return-void
.end method
