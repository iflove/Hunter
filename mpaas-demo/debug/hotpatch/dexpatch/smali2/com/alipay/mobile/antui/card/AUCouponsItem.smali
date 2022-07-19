.class public Lcom/alipay/mobile/antui/card/AUCouponsItem;
.super Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;
.source "AUCouponsItem.java"


# instance fields
.field private mCouponsAssitTitle:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

.field private mCouponsImage:Lcom/alipay/mobile/antui/basic/AUCircleImageView;

.field private mCouponsMainTitle:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

.field private mCouponsSubTitle:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/antui/card/AUCouponsItem;->initView()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/antui/card/AUCouponsItem;->initView()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/antui/card/AUCouponsItem;->initView()V

    .line 37
    return-void
.end method

.method private initView()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/card/AUCouponsItem;->setBackgroundColor(I)V

    .line 49
    sget v0, Lcom/alipay/mobile/antui/R$id;->coupons_assist_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/card/AUCouponsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/card/AUCouponsItem;->mCouponsAssitTitle:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 50
    sget v0, Lcom/alipay/mobile/antui/R$id;->coupons_main_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/card/AUCouponsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/card/AUCouponsItem;->mCouponsMainTitle:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 51
    sget v0, Lcom/alipay/mobile/antui/R$id;->coupons_sub_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/card/AUCouponsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/card/AUCouponsItem;->mCouponsSubTitle:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 52
    sget v0, Lcom/alipay/mobile/antui/R$id;->coupons_circle_image:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/card/AUCouponsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUCircleImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/card/AUCouponsItem;->mCouponsImage:Lcom/alipay/mobile/antui/basic/AUCircleImageView;

    .line 53
    return-void
.end method


# virtual methods
.method public getCouponsAssitTitle()Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/antui/card/AUCouponsItem;->mCouponsAssitTitle:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    return-object v0
.end method

.method public getCouponsImage()Lcom/alipay/mobile/antui/basic/AUCircleImageView;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/antui/card/AUCouponsItem;->mCouponsImage:Lcom/alipay/mobile/antui/basic/AUCircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUCircleImageView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/antui/card/AUCouponsItem;->mCouponsImage:Lcom/alipay/mobile/antui/basic/AUCircleImageView;

    return-object v0
.end method

.method public getCouponsMainTitle()Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/antui/card/AUCouponsItem;->mCouponsMainTitle:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    return-object v0
.end method

.method public getCouponsSubTitle()Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/antui/card/AUCouponsItem;->mCouponsSubTitle:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    return-object v0
.end method

.method protected inflateLayout(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_coupons_item:I

    iget-object v2, p0, Lcom/alipay/mobile/antui/card/AUCouponsItem;->mListLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/antui/card/AUCouponsItem;->mListLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 43
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v1, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/card/AUCouponsItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->coupons_card_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/antui/card/AUCouponsItem;->mListLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void
.end method

.method public setCouponsInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "assistTitle"    # Ljava/lang/String;
    .param p2, "mainTitle"    # Ljava/lang/String;
    .param p3, "subTitle"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/antui/card/AUCouponsItem;->mCouponsAssitTitle:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/antui/card/AUCouponsItem;->mCouponsMainTitle:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/antui/card/AUCouponsItem;->mCouponsSubTitle:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method
