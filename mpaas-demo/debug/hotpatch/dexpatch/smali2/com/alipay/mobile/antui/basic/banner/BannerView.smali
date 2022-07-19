.class public Lcom/alipay/mobile/antui/basic/banner/BannerView;
.super Landroid/widget/FrameLayout;
.source "BannerView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;,
        Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerItem;,
        Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;,
        Lcom/alipay/mobile/antui/basic/banner/BannerView$a;,
        Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerItemClickListener;,
        Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerPageSelectedListener;
    }
.end annotation


# static fields
.field private static final SCALE_FACTOR:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "BannerView"


# instance fields
.field private bannerPageSelectedListener:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerPageSelectedListener;

.field private context:Landroid/content/Context;

.field private disToBottom:I

.field private isDark:Z

.field private isDetached:Z

.field private isRotating:Z

.field private loopTime:J

.field private mHandler:Landroid/os/Handler;

.field private mPager:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;

.field private mRectanglePageIndicator:Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;

.field private selectColor:I

.field private unSelectColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loopTime"    # J

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->isDetached:Z

    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->context:Landroid/content/Context;

    .line 51
    iput-wide p2, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->loopTime:J

    .line 52
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->dip2px(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->disToBottom:I

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/basic/banner/BannerView;)Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/banner/BannerView;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mPager:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/basic/banner/BannerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/banner/BannerView;

    .line 31
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->isDetached:Z

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/basic/banner/BannerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/banner/BannerView;

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->doRotation()V

    return-void
.end method

.method private callBannerPageSelectedListener(I)V
    .locals 3
    .param p1, "pos"    # I

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->bannerPageSelectedListener:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerPageSelectedListener;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mPager:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->getRealCount()I

    move-result v0

    rem-int v0, p1, v0

    .line 189
    .local v0, "realPos":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->bannerPageSelectedListener:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerPageSelectedListener;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerPageSelectedListener;->onPageSelected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v0    # "realPos":I
    :cond_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BannerView"

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private static dip2px(Landroid/content/Context;D)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "d"    # D

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 57
    .local v0, "scale":F
    float-to-double v1, v0

    mul-double v1, v1, p1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 58
    return v1
.end method

.method private doRotation()V
    .locals 4

    .line 98
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->isRotating:Z

    if-nez v0, :cond_0

    .line 99
    const-string v0, "BannerView"

    const-string v1, "doRotation cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Lcom/alipay/mobile/antui/basic/banner/BannerView$a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/basic/banner/BannerView$a;-><init>(Lcom/alipay/mobile/antui/basic/banner/BannerView;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mHandler:Landroid/os/Handler;

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->loopTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 107
    return-void
.end method

.method private refresh(Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;)V
    .locals 6
    .param p1, "adapter"    # Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;

    .line 147
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->removeAllViews()V

    .line 148
    new-instance v0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mPager:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;

    .line 149
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 150
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    .line 152
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object v3, v0

    const/16 v4, 0x10

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mPager:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mPager:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mRectanglePageIndicator:Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;

    .line 156
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->isDark:Z

    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->setIndicatorStyleBrightOrDark(Landroid/content/Context;Z)V

    .line 157
    iget v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->selectColor:I

    if-eqz v0, :cond_0

    iget v4, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->unSelectColor:I

    if-eqz v4, :cond_0

    .line 158
    iget-object v5, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mRectanglePageIndicator:Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;

    invoke-virtual {v5, v0, v4}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->setIndicatorColor(II)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mRectanglePageIndicator:Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;

    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mPager:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mRectanglePageIndicator:Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 162
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 164
    move-object v1, v0

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x51

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mRectanglePageIndicator:Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;

    iget v2, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->disToBottom:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v2}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->setPadding(IIII)V

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mRectanglePageIndicator:Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->startRotation()V

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mPager:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;

    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->setAccessibilityDisable(Landroid/view/View;)V

    .line 170
    return-void
.end method

.method private static setAccessibilityDisable(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 67
    if-eqz p0, :cond_0

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 69
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public getLoopTime()J
    .locals 2

    .line 201
    iget-wide v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->loopTime:J

    return-wide v0
.end method

.method public getPager()Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mPager:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;

    return-object v0
.end method

.method public getRectanglePageIndicator()Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mRectanglePageIndicator:Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;

    return-object v0
.end method

.method public isRotating()Z
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isRotating "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->isRotating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->isRotating:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 83
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 84
    const-string v0, "BannerView"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->startRotation()V

    .line 86
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 76
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 77
    const-string v0, "BannerView"

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->stopRotation()V

    .line 79
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .line 128
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .line 132
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "i"    # I

    .line 136
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->doRotation()V

    .line 137
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->callBannerPageSelectedListener(I)V

    .line 138
    return-void
.end method

.method public setAdapter(Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;

    .line 141
    if-eqz p1, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->refresh(Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;)V

    .line 144
    :cond_0
    return-void
.end method

.method public setBannerPageSelectedListener(Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerPageSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerPageSelectedListener;

    .line 197
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->bannerPageSelectedListener:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerPageSelectedListener;

    .line 198
    return-void
.end method

.method public setIndicatorColor(II)V
    .locals 0
    .param p1, "selectColor"    # I
    .param p2, "unSelectColor"    # I

    .line 173
    iput p1, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->selectColor:I

    .line 174
    iput p2, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->unSelectColor:I

    .line 175
    return-void
.end method

.method public setIndicatorPositionFromBottom(I)V
    .locals 0
    .param p1, "disToBottom"    # I

    .line 178
    iput p1, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->disToBottom:I

    .line 179
    return-void
.end method

.method public setIndicatorStyleDark(Z)V
    .locals 0
    .param p1, "isDark"    # Z

    .line 182
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->isDark:Z

    .line 183
    return-void
.end method

.method public setLoopTime(J)V
    .locals 0
    .param p1, "loopTime"    # J

    .line 205
    iput-wide p1, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->loopTime:J

    .line 206
    return-void
.end method

.method public startRotation()V
    .locals 2

    .line 92
    const-string v0, "BannerView"

    const-string/jumbo v1, "startRotation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->isRotating:Z

    .line 94
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->doRotation()V

    .line 95
    return-void
.end method

.method public stopRotation()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    :cond_0
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView;->isRotating:Z

    .line 117
    const-string v0, "BannerView"

    const-string/jumbo v1, "stopRotation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method
