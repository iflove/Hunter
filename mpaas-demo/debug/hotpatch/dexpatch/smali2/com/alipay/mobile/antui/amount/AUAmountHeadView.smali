.class public Lcom/alipay/mobile/antui/amount/AUAmountHeadView;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "AUAmountHeadView.java"


# static fields
.field public static final BANKCARD_STYLE:I = 0x10

.field public static final SINGLE_STYLE:I = 0x12

.field public static final TEXT_STYLE:I = 0x11


# instance fields
.field private mDivider:Landroid/view/View;

.field private mHeadTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mLogoView:Lcom/alipay/mobile/antui/basic/AUImageView;

.field private mMainInfo:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mMarkTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mSubInfo:Lcom/alipay/mobile/antui/basic/AUTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->init(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_amount_head_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    sget v0, Lcom/alipay/mobile/antui/R$id;->title_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mHeadTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 49
    sget v0, Lcom/alipay/mobile/antui/R$id;->title_logo:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mLogoView:Lcom/alipay/mobile/antui/basic/AUImageView;

    .line 50
    sget v0, Lcom/alipay/mobile/antui/R$id;->head_mainInfo:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mMainInfo:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 51
    sget v0, Lcom/alipay/mobile/antui/R$id;->head_subInfo:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mSubInfo:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 52
    sget v0, Lcom/alipay/mobile/antui/R$id;->bankcard_mark:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mMarkTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 53
    sget v0, Lcom/alipay/mobile/antui/R$id;->head_divider:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mDivider:Landroid/view/View;

    .line 54
    return-void
.end method


# virtual methods
.method public getLogoView()Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mLogoView:Lcom/alipay/mobile/antui/basic/AUImageView;

    return-object v0
.end method

.method public setBankcardInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "bankcardInfo"    # Ljava/lang/String;
    .param p2, "subInfo"    # Ljava/lang/String;
    .param p3, "markInfo"    # Ljava/lang/String;

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mMainInfo:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mMarkTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mSubInfo:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mSubInfo:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mSubInfo:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 113
    return-void
.end method

.method public setStyle(I)V
    .locals 2
    .param p1, "style"    # I

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mHeadTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mLogoView:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mMarkTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 77
    :pswitch_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mLogoView:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 78
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->drawable_bg_top_bottom_line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mHeadTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 74
    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    return-void

    .line 68
    :pswitch_2
    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mLogoView:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 69
    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mMarkTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 70
    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void

    .line 83
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTextStyleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "mainInfo"    # Ljava/lang/String;
    .param p3, "subInfo"    # Ljava/lang/String;

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mHeadTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mMainInfo:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mSubInfo:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mSubInfo:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountHeadView;->mSubInfo:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 98
    return-void
.end method
