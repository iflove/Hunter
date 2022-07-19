.class public Lcom/alipay/mobile/antui/bank/AUBankCardItem;
.super Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;
.source "AUBankCardItem.java"


# instance fields
.field private mBankImage:Lcom/alipay/mobile/antui/basic/AUCircleImageView;

.field private mBankName:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

.field private mBankNumber:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/antui/bank/AUBankCardItem;->initView()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/antui/bank/AUBankCardItem;->initView()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/antui/bank/AUBankCardItem;->initView()V

    .line 34
    return-void
.end method

.method private initView()V
    .locals 1

    .line 43
    sget v0, Lcom/alipay/mobile/antui/R$id;->bank_name:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/bank/AUBankCardItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/bank/AUBankCardItem;->mBankName:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 44
    sget v0, Lcom/alipay/mobile/antui/R$id;->bank_number:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/bank/AUBankCardItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/bank/AUBankCardItem;->mBankNumber:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 45
    sget v0, Lcom/alipay/mobile/antui/R$id;->bank_circle_image:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/bank/AUBankCardItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUCircleImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/bank/AUBankCardItem;->mBankImage:Lcom/alipay/mobile/antui/basic/AUCircleImageView;

    .line 46
    return-void
.end method


# virtual methods
.method public getBankImage()Lcom/alipay/mobile/antui/basic/AUCircleImageView;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/antui/bank/AUBankCardItem;->mBankImage:Lcom/alipay/mobile/antui/basic/AUCircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUCircleImageView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/antui/bank/AUBankCardItem;->mBankImage:Lcom/alipay/mobile/antui/basic/AUCircleImageView;

    return-object v0
.end method

.method public getBankName()Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/antui/bank/AUBankCardItem;->mBankName:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    return-object v0
.end method

.method public getBankNumber()Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/antui/bank/AUBankCardItem;->mBankNumber:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    return-object v0
.end method

.method protected inflateLayout(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_bank_card_item:I

    iget-object v2, p0, Lcom/alipay/mobile/antui/bank/AUBankCardItem;->mListLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/antui/bank/AUBankCardItem;->mListLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/bank/AUBankCardItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE14:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setMinimumHeight(I)V

    .line 40
    return-void
.end method

.method public setBankInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bankName"    # Ljava/lang/String;
    .param p2, "bankNum"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/antui/bank/AUBankCardItem;->mBankName:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/antui/bank/AUBankCardItem;->mBankNumber:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method
