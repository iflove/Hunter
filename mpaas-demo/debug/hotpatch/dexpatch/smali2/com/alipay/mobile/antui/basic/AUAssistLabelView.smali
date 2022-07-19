.class public Lcom/alipay/mobile/antui/basic/AUAssistLabelView;
.super Lcom/alipay/mobile/antui/basic/AUTextView;
.source "AUAssistLabelView.java"


# instance fields
.field private bottomMargin:I

.field private margin:I

.field private topMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUAssistLabelView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUAssistLabelView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUAssistLabelView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "isHead":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUAssistLabelView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$style;->auAssitTextStyle:I

    invoke-super {p0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 39
    :cond_0
    sget v1, Lcom/alipay/mobile/antui/R$style;->auAssitTextStyle:I

    invoke-super {p0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextAppearance(I)V

    .line 41
    :goto_0
    if-eqz p2, :cond_1

    .line 42
    sget-object v1, Lcom/alipay/mobile/antui/R$styleable;->AUAssistLabelView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 43
    .local v2, "array":Landroid/content/res/TypedArray;
    move-object v2, v1

    sget v3, Lcom/alipay/mobile/antui/R$styleable;->AUAssistLabelView_isHead:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 44
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    .end local v2    # "array":Landroid/content/res/TypedArray;
    :cond_1
    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUAssistLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUAssistLabelView;->topMargin:I

    .line 48
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUAssistLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUAssistLabelView;->bottomMargin:I

    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUAssistLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUAssistLabelView;->topMargin:I

    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUAssistLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUAssistLabelView;->bottomMargin:I

    .line 53
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUAssistLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_MARGIN_UNIVERSAL:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUAssistLabelView;->margin:I

    .line 54
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUAssistLabelView;->topMargin:I

    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUAssistLabelView;->bottomMargin:I

    invoke-virtual {p0, v1, v2, v1, v3}, Lcom/alipay/mobile/antui/basic/AUAssistLabelView;->setPadding(IIII)V

    .line 55
    return-void
.end method
