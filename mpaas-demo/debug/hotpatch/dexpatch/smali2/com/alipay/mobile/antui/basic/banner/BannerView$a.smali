.class final Lcom/alipay/mobile/antui/basic/banner/BannerView$a;
.super Landroid/os/Handler;
.source "BannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/banner/BannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alipay/mobile/antui/basic/banner/BannerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/basic/banner/BannerView;)V
    .locals 1
    .param p1, "bannerView"    # Lcom/alipay/mobile/antui/basic/banner/BannerView;

    .line 227
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 228
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$a;->a:Ljava/lang/ref/WeakReference;

    .line 229
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    const-string v0, "BannerView"

    .line 233
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/banner/BannerView;

    const/4 v2, 0x0

    .line 236
    .local v2, "bannerView":Lcom/alipay/mobile/antui/basic/banner/BannerView;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 237
    const-string v1, "handleMessage, bannerView==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void

    .line 240
    :cond_0
    # getter for: Lcom/alipay/mobile/antui/basic/banner/BannerView;->mPager:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;
    invoke-static {v2}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->access$000(Lcom/alipay/mobile/antui/basic/banner/BannerView;)Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;

    move-result-object v1

    .line 241
    .local v1, "pager":Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleMessage, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    # getter for: Lcom/alipay/mobile/antui/basic/banner/BannerView;->isDetached:Z
    invoke-static {v2}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->access$100(Lcom/alipay/mobile/antui/basic/banner/BannerView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    const-string v3, "BannerView isDetached,stop rotating"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void

    .line 247
    :cond_1
    iget-boolean v3, v1, Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;->isTouching:Z

    if-eqz v3, :cond_2

    .line 248
    const-string/jumbo v3, "page isTouching"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    # invokes: Lcom/alipay/mobile/antui/basic/banner/BannerView;->doRotation()V
    invoke-static {v2}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->access$200(Lcom/alipay/mobile/antui/basic/banner/BannerView;)V

    .line 250
    return-void

    .line 252
    :cond_2
    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;

    invoke-virtual {v3}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->getRealCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_3

    .line 253
    const-string v3, "getRealCount <=1"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void

    .line 256
    :cond_3
    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    sub-int/2addr v5, v4

    if-lt v3, v5, :cond_4

    .line 257
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;->setCurrentItem(I)V

    return-void

    .line 259
    :cond_4
    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;->getCurrentItem()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .end local v1    # "pager":Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;
    .end local v2    # "bannerView":Lcom/alipay/mobile/antui/basic/banner/BannerView;
    return-void

    .line 261
    :catchall_0
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "BannerView handleMessage"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method
