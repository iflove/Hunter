.class public Lcom/alipay/mobile/nebula/refresh/H5PullContainer;
.super Landroid/widget/FrameLayout;
.source "H5PullContainer.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/refresh/H5PullContainer$H5PullInterceptHandler;,
        Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;
    }
.end annotation


# static fields
.field public static final DEFALUT_DURATION:I = 0x258

.field private static final MIN_REFRESH_TIME:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "H5PullContainer"


# instance fields
.field private contentView:Landroid/view/View;

.field private flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

.field private h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

.field private handleM57OverScroll:Z

.field protected headerHeight:I

.field private headerView:Landroid/view/View;

.field private interceptHandler:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$H5PullInterceptHandler;

.field private isIntercept:Z

.field private lastY:I

.field private offsets:I

.field private overScrolled:Z

.field private pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

.field private pullInterceptDistance:I

.field private startLoadingTime:J

.field protected state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    sget v0, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_CONTENT:I

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    .line 25
    new-instance v0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;-><init>(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->offsets:I

    .line 42
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->handleM57OverScroll:Z

    .line 44
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->startLoadingTime:J

    .line 50
    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullInterceptDistance:I

    .line 58
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget v0, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_CONTENT:I

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    .line 25
    new-instance v0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;-><init>(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->offsets:I

    .line 42
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->handleM57OverScroll:Z

    .line 44
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->startLoadingTime:J

    .line 50
    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullInterceptDistance:I

    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    sget v0, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_CONTENT:I

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    .line 25
    new-instance v0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;-><init>(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->offsets:I

    .line 42
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->handleM57OverScroll:Z

    .line 44
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->startLoadingTime:J

    .line 50
    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullInterceptDistance:I

    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->init()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->performFitContent()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/refresh/H5PullContainer;
    .param p1, "x1"    # I

    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->moveOffset(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/refresh/H5PullContainer;
    .param p1, "x1"    # I

    .line 18
    iput p1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->offsets:I

    return p1
.end method

.method static synthetic access$402(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/refresh/H5PullContainer;
    .param p1, "x1"    # Z

    .line 18
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->isIntercept:Z

    return p1
.end method

.method private canPull()Z
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->canPull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    return v1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private canRefresh()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->canRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private dpToPx(I)I
    .locals 2
    .param p1, "dps"    # I

    .line 97
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private fitExtras()V
    .locals 2

    .line 280
    iget v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    sget v1, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_EXTRAS:I

    if-ne v0, v1, :cond_0

    .line 281
    return-void

    .line 283
    :cond_0
    sget v0, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_EXTRAS:I

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    .line 285
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    sub-int/2addr v0, v1

    .line 287
    .local v0, "offset":I
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->recover(I)V

    .line 290
    .end local v0    # "offset":I
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    if-eqz v0, :cond_2

    .line 291
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->onLoading()V

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->startLoadingTime:J

    .line 294
    :cond_2
    return-void
.end method

.method private static getScrollY(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 104
    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private handleTouch(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "intent"    # Landroid/view/MotionEvent;

    .line 128
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->canPull()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 129
    return v1

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->isIntercept:Z

    if-eqz v0, :cond_1

    .line 133
    return v1

    .line 136
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 137
    .local v0, "action":I
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 138
    .local v2, "contentTop":I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x1

    :goto_1
    move v5, v1

    .line 140
    .local v5, "actionUp":Z
    move v5, v4

    if-nez v4, :cond_4

    if-nez v0, :cond_5

    .line 141
    :cond_4
    iput-boolean v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->overScrolled:Z

    .line 144
    :cond_5
    if-lez v2, :cond_a

    if-eqz v5, :cond_a

    .line 145
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->hasHeader()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 146
    iget v3, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    sget v4, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_OVER:I

    if-ne v3, v4, :cond_6

    .line 147
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->fitExtras()V

    goto :goto_2

    .line 148
    :cond_6
    iget v3, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    sget v4, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_EXTRAS:I

    if-ne v3, v4, :cond_7

    .line 149
    iget v3, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    if-le v2, v3, :cond_9

    .line 150
    sub-int v3, v2, v3

    .line 151
    .local v3, "offset":I
    iget-object v4, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->recover(I)V

    .line 152
    .end local v3    # "offset":I
    goto :goto_2

    .line 153
    :cond_7
    sget v3, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_OPEN:I

    .line 159
    :cond_8
    iget-object v3, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->recover(I)V

    .line 161
    :cond_9
    :goto_2
    return v1

    .line 164
    :cond_a
    const/4 v4, 0x2

    if-ne v0, v4, :cond_11

    .line 165
    const/4 v6, 0x0

    .line 166
    .local v6, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->lastY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    .line 167
    .local v7, "offset":I
    iget-object v8, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->getScrollY(Landroid/view/View;)I

    move-result v8

    .line 168
    .local v8, "scrollY":I
    div-int/2addr v7, v4

    .line 169
    iget-boolean v4, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->overScrolled:Z

    if-eqz v4, :cond_b

    if-gtz v8, :cond_b

    const/4 v4, 0x1

    goto :goto_3

    :cond_b
    const/4 v4, 0x0

    .line 172
    .local v4, "needHandle":Z
    :goto_3
    iget-boolean v9, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->handleM57OverScroll:Z

    if-eqz v9, :cond_d

    .line 173
    iget v9, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->offsets:I

    if-nez v9, :cond_d

    .line 174
    if-lez v7, :cond_c

    const/4 v1, 0x1

    :cond_c
    and-int/2addr v4, v1

    .line 178
    :cond_d
    if-eqz v4, :cond_10

    .line 180
    iget v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->offsets:I

    iget v9, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullInterceptDistance:I

    if-lt v1, v9, :cond_e

    if-lez v9, :cond_e

    .line 181
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->sendToWebIntercept()V

    .line 182
    return v3

    .line 186
    :cond_e
    add-int/2addr v1, v7

    iput v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->offsets:I

    .line 187
    const/16 v3, 0x12c

    if-le v1, v3, :cond_f

    .line 188
    div-int/lit8 v7, v7, 0x2

    .line 190
    :cond_f
    invoke-direct {p0, v7}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->moveOffset(I)Z

    .line 191
    const/4 v6, 0x1

    .line 194
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->lastY:I

    .line 195
    return v6

    .line 197
    .end local v4    # "needHandle":Z
    .end local v6    # "handled":Z
    .end local v7    # "offset":I
    .end local v8    # "scrollY":I
    :cond_11
    return v1
.end method

.method private hasHeader()Z
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 262
    return v1

    .line 265
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private init()V
    .locals 4

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->handleM57OverScroll:Z

    .line 73
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    .line 74
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "h5_handleM57OverScroll"

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "NO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->handleM57OverScroll:Z

    .line 77
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$H5PullInterceptHandler;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$H5PullInterceptHandler;-><init>(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->interceptHandler:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$H5PullInterceptHandler;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->isIntercept:Z

    .line 79
    return-void
.end method

.method private moveOffset(I)Z
    .locals 4
    .param p1, "offset"    # I

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 220
    return v1

    .line 223
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    sget v2, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_EXTRAS:I

    if-eq v0, v2, :cond_7

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, p1

    .line 225
    .local v1, "nextTop":I
    move v1, v0

    if-gtz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int p1, v0

    goto :goto_0

    .line 227
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    if-gt v1, v0, :cond_5

    .line 228
    iget v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    sget v2, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_OVER:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    sget v2, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_CONTENT:I

    if-ne v0, v2, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    .line 229
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    if-eqz v0, :cond_3

    .line 231
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->onOpen()V

    .line 233
    :cond_3
    sget v0, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_OPEN:I

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    if-eqz v0, :cond_7

    .line 236
    int-to-float v2, v1

    iget v3, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 237
    .local v2, "progress":F
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v3, v3, v2

    float-to-int v3, v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->onProgressUpdate(I)V

    .line 238
    .end local v2    # "progress":F
    goto :goto_0

    .line 239
    :cond_5
    if-le v1, v0, :cond_7

    .line 240
    iget v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    sget v2, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_OPEN:I

    if-ne v0, v2, :cond_7

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    if-eqz v0, :cond_6

    .line 242
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->onOver()V

    .line 244
    :cond_6
    sget v0, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_OVER:I

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    .line 250
    .end local v1    # "nextTop":I
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 252
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 256
    :cond_8
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->invalidate()V

    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method private performFitContent()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/4 v1, 0x0

    .line 331
    .local v1, "offset":I
    move v1, v0

    if-lez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->recover(I)V

    .line 334
    :cond_0
    sget v0, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_CONTENT:I

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    if-eqz v0, :cond_1

    .line 337
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->onRefreshFinish()V

    .line 339
    :cond_1
    return-void
.end method

.method private sendToWebIntercept()V
    .locals 4

    .line 486
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isIntercept : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->isIntercept:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PullContainer"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->interceptHandler:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$H5PullInterceptHandler;

    const-string/jumbo v3, "pullIntercept"

    invoke-interface {v0, v3, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 491
    return-void

    .line 487
    :cond_1
    :goto_0
    return-void
.end method

.method private setInterceptDistance()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "pullInterceptDistance"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 91
    .local v1, "distance":I
    move v1, v0

    if-lez v0, :cond_1

    .line 92
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->dpToPx(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullInterceptDistance:I

    .line 94
    :cond_1
    return-void

    .line 88
    .end local v1    # "distance":I
    :cond_2
    :goto_0
    return-void
.end method

.method private updateHeader()V
    .locals 4

    .line 390
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->getHeaderView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    .line 395
    if-nez v0, :cond_0

    .line 396
    return-void

    .line 399
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 400
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    .line 401
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 403
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    invoke-virtual {p0, v2, v1, v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 404
    return-void

    .line 391
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "content view not added yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/view/MotionEvent;

    .line 112
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->handleTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public enableUsePullHeader()Z
    .locals 4

    .line 342
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    .line 343
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v1, v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 344
    const-string v0, "h5_enableLottiePullHeader"

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "NO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 346
    :cond_1
    return v2
.end method

.method public fitContent()V
    .locals 5

    .line 308
    iget v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    sget v1, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_EXTRAS:I

    if-eq v0, v1, :cond_0

    .line 309
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 313
    return-void

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->enableUsePullHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->startLoadingTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->startLoadingTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    rsub-int v0, v1, 0x7d0

    .line 318
    .local v0, "delay":I
    new-instance v1, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$1;-><init>(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)V

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 324
    return-void

    .line 326
    .end local v0    # "delay":I
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->performFitContent()V

    .line 327
    return-void
.end method

.method public isBackToTop()Z
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 351
    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyViewChanged()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->updateHeader()V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 381
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->canRefresh()Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, "contentTop":I
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    .line 208
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 207
    invoke-virtual {v1, v2, v0, p4, v3}, Landroid/view/View;->layout(IIII)V

    .line 211
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    sub-int v1, v0, v1

    .line 212
    .local v1, "headerTop":I
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->hasHeader()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    iget-object v3, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    iget v4, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v2, v1, p4, v4}, Landroid/view/View;->layout(IIII)V

    .line 216
    :cond_1
    return-void
.end method

.method public onOverScrolled(IIII)V
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 367
    return-void

    .line 370
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->getScrollY(Landroid/view/View;)I

    move-result v0

    if-gtz v0, :cond_1

    if-gez p2, :cond_1

    if-gtz p4, :cond_1

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->overScrolled:Z

    .line 373
    :cond_1
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 297
    iput-object p1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->addView(Landroid/view/View;I)V

    .line 299
    return-void
.end method

.method public setH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 83
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->setInterceptDistance()V

    .line 84
    return-void
.end method

.method public setPullAdapter(Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->removeView(Landroid/view/View;)V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    .line 360
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    .line 362
    return-void
.end method

.method public setPullableView(Lcom/alipay/mobile/nebula/refresh/H5PullableView;)V
    .locals 0
    .param p1, "view"    # Lcom/alipay/mobile/nebula/refresh/H5PullableView;

    .line 302
    if-eqz p1, :cond_0

    .line 303
    invoke-interface {p1, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullableView;->setH5OverScrollListener(Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;)V

    .line 305
    :cond_0
    return-void
.end method

.method public setWebViewTop(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "position"    # Ljava/lang/String;
    .param p2, "animated"    # Z

    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->isIntercept:Z

    .line 470
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 472
    .local v0, "animateDuration":I
    .local v1, "offset":I
    if-eqz p2, :cond_0

    .line 473
    const/16 v0, 0x258

    goto :goto_0

    .line 475
    :cond_0
    const/4 v0, 0x0

    .line 477
    :goto_0
    const-string/jumbo v2, "top"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    .line 478
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    invoke-virtual {v2, v1, v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->scroll(II)V

    return-void

    .line 479
    :cond_1
    const-string v2, "bottom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 480
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 481
    .local v2, "height":I
    iget-object v3, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    sub-int v4, v2, v1

    neg-int v4, v4

    invoke-virtual {v3, v4, v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->scroll(II)V

    .line 483
    .end local v2    # "height":I
    :cond_2
    return-void
.end method

.method public startPullToRefresh()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->updateHeader()V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->onOpen()V

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    iget v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    const/16 v2, 0x258

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->scroll(II)V

    .line 275
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->fitExtras()V

    .line 276
    return-void
.end method
