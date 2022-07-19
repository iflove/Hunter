.class public abstract Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "BannerView.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/AdapterCount;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/banner/BannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseBannerPagerAdapter"
.end annotation


# instance fields
.field protected bannerClickListener:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerItemClickListener;

.field protected bannerView:Lcom/alipay/mobile/antui/basic/banner/BannerView;

.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/basic/banner/BannerView;Ljava/util/List;)V
    .locals 0
    .param p1, "bannerView"    # Lcom/alipay/mobile/antui/basic/banner/BannerView;
    .param p2, "items"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/antui/basic/banner/BannerView;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerItem;",
            ">;)V"
        }
    .end annotation

    .line 359
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 360
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->bannerView:Lcom/alipay/mobile/antui/basic/banner/BannerView;

    .line 361
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->setItems(Ljava/util/List;)V

    .line 362
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 438
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->items:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    return v0
.end method

.method public getItemClickListener()Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerItemClickListener;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->bannerClickListener:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerItemClickListener;

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->items:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 384
    :cond_1
    :goto_0
    const/4 v0, -0x2

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerItem;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->items:Ljava/util/List;

    return-object v0
.end method

.method public getRealCount()I
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->items:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public abstract getView(Landroid/view/ViewGroup;I)Landroid/view/View;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "pos"    # I

    .line 405
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->getRealCount()I

    move-result v0

    rem-int v0, p2, v0

    .line 408
    .local v0, "realPos":I
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->getView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 410
    .local v3, "itemView":Landroid/view/View;
    move-object v3, v1

    const-string v4, "BannerView"

    if-nez v1, :cond_0

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "create null item "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->items:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-object v2

    .line 414
    :cond_0
    new-instance v1, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter$1;-><init>(Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;I)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create item "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-object v3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .line 400
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setItemClickListener(Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerItemClickListener;)V
    .locals 0
    .param p1, "bannerClickListener"    # Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerItemClickListener;

    .line 447
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->bannerClickListener:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerItemClickListener;

    .line 448
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .param p1, "items"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerItem;",
            ">;)V"
        }
    .end annotation

    .line 369
    if-nez p1, :cond_0

    .line 370
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->items:Ljava/util/List;

    if-nez v0, :cond_1

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->items:Ljava/util/List;

    goto :goto_0

    .line 375
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 377
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 378
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->notifyDataSetChanged()V

    .line 379
    return-void
.end method
