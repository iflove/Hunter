.class public Lcom/alipay/mobile/antui/card/AUCard;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "AUCard.java"


# instance fields
.field private mCardAssitDes:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

.field private mCouponsItem:Lcom/alipay/mobile/antui/card/AUCouponsItem;

.field private mDottdLine:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/card/AUCard;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/card/AUCard;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/card/AUCard;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/card/AUCard;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/card/AUCard;

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/antui/card/AUCard;->mDottdLine:Landroid/view/View;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_card_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    sget v0, Lcom/alipay/mobile/antui/R$id;->coupons_card_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/card/AUCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/card/AUCouponsItem;

    iput-object v0, p0, Lcom/alipay/mobile/antui/card/AUCard;->mCouponsItem:Lcom/alipay/mobile/antui/card/AUCouponsItem;

    .line 44
    sget v0, Lcom/alipay/mobile/antui/R$id;->dotted_line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/card/AUCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/card/AUCard;->mDottdLine:Landroid/view/View;

    .line 45
    sget v0, Lcom/alipay/mobile/antui/R$id;->coupons_assist_description:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/card/AUCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/card/AUCard;->mCardAssitDes:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 46
    new-instance v1, Lcom/alipay/mobile/antui/card/AUCard$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/card/AUCard$1;-><init>(Lcom/alipay/mobile/antui/card/AUCard;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    return-void
.end method


# virtual methods
.method public getCouponsAssitDes()Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/antui/card/AUCard;->mCardAssitDes:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    return-object v0
.end method

.method public getCouponsImage()Lcom/alipay/mobile/antui/basic/AUCircleImageView;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/antui/card/AUCard;->mCouponsItem:Lcom/alipay/mobile/antui/card/AUCouponsItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/card/AUCouponsItem;->getCouponsImage()Lcom/alipay/mobile/antui/basic/AUCircleImageView;

    move-result-object v0

    return-object v0
.end method

.method public getCouponsItem()Lcom/alipay/mobile/antui/card/AUCouponsItem;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/antui/card/AUCard;->mCouponsItem:Lcom/alipay/mobile/antui/card/AUCouponsItem;

    return-object v0
.end method

.method public setCouponsAssitDes(Ljava/lang/String;)V
    .locals 1
    .param p1, "des"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/antui/card/AUCard;->mCardAssitDes:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public setCouponsInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "assistTitle"    # Ljava/lang/String;
    .param p2, "mainTitle"    # Ljava/lang/String;
    .param p3, "subTitle"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/antui/card/AUCard;->mCouponsItem:Lcom/alipay/mobile/antui/card/AUCouponsItem;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/antui/card/AUCouponsItem;->setCouponsInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method
