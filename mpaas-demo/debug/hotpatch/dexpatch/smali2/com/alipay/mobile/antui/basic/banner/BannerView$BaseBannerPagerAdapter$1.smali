.class final Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter$1;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;

    .line 414
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter$1;->b:Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;

    iput p2, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 417
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter$1;->b:Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;

    iget-object v0, v0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->bannerClickListener:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerItemClickListener;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter$1;->b:Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;

    iget-object v0, v0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->bannerClickListener:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerItemClickListener;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter$1;->a:I

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerItemClickListener;->onBannerAdClick(Landroid/view/View;I)V

    .line 422
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter$1;->b:Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;

    iget-object v0, v0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter;->bannerView:Lcom/alipay/mobile/antui/basic/banner/BannerView;

    # getter for: Lcom/alipay/mobile/antui/basic/banner/BannerView;->mPager:Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/banner/BannerView;->access$000(Lcom/alipay/mobile/antui/basic/banner/BannerView;)Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BannerViewPager;->isTouching:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 427
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "click "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/antui/basic/banner/BannerView$BaseBannerPagerAdapter$1;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-void
.end method
