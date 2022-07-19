.class public Lcom/alipay/mobile/antui/amount/AUAmountLabelText;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "AUAmountLabelText.java"


# instance fields
.field private editChangedWatcher:Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;

.field private mAmountText:Lcom/alipay/mobile/antui/basic/AUTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/amount/AUAmountLabelText;->init(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/amount/AUAmountLabelText;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/amount/AUAmountLabelText;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_amount_label_text:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    sget v0, Lcom/alipay/mobile/antui/R$id;->amount_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountLabelText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountLabelText;->mAmountText:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 39
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountLabelText;->setGravity(I)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountLabelText;->setOrientation(I)V

    .line 42
    new-instance v0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;

    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountLabelText;->mAmountText:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;-><init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountLabelText;->editChangedWatcher:Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;

    .line 43
    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountLabelText;->mAmountText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getAmountText()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountLabelText;->mAmountText:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountLabelText;->mAmountText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method
