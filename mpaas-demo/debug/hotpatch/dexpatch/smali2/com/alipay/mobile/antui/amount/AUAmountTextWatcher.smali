.class public Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;
.super Ljava/lang/Object;
.source "AUAmountTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private isShowClear:Z

.field private mClearIcon:Landroid/view/View;

.field private mResBundle:Ljava/lang/String;

.field private mTTFFilePath:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "clearIcon"    # Landroid/view/View;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "antui_res"

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->mResBundle:Ljava/lang/String;

    .line 25
    const-string v1, "AlipayNumber"

    iput-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->mTTFFilePath:Ljava/lang/String;

    .line 29
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->isShowClear:Z

    .line 33
    iput-object p2, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->mTextView:Landroid/widget/TextView;

    .line 34
    iput-object p3, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->mClearIcon:Landroid/view/View;

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->getTTFFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->getTypeface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->mTypeface:Landroid/graphics/Typeface;

    .line 37
    return-void
.end method

.method private changeTextSizeChange(I)V
    .locals 3
    .param p1, "length"    # I

    .line 72
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 74
    const/16 v1, 0x8

    if-ltz p1, :cond_0

    if-gt p1, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->mTextView:Landroid/widget/TextView;

    const/high16 v2, 0x425c0000    # 55.0f

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    .line 76
    :cond_0
    if-le p1, v1, :cond_1

    const/16 v1, 0xa

    if-gt p1, v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->mTextView:Landroid/widget/TextView;

    const/high16 v2, 0x42340000    # 45.0f

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->mTextView:Landroid/widget/TextView;

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 81
    return-void
.end method

.method private getTTFFilePath()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->mResBundle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->mTTFFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ttf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    .local v1, "editString":Ljava/lang/String;
    move-object v1, v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    .line 64
    .local v2, "posDot":I
    move v2, v0

    if-gtz v0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    .line 66
    add-int/lit8 v0, v2, 0x3

    add-int/lit8 v3, v2, 0x4

    invoke-interface {p1, v0, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 69
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 45
    return-void
.end method

.method public onInputTextStatusChanged(ZZ)V
    .locals 2
    .param p1, "isEmpty"    # Z
    .param p2, "isFocused"    # Z

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->mClearIcon:Landroid/view/View;

    if-nez v0, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->isShowClear:Z

    if-eqz v1, :cond_1

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 95
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 49
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->changeTextSizeChange(I)V

    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->changeTextSizeChange(I)V

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->onInputTextStatusChanged(ZZ)V

    .line 57
    return-void
.end method

.method public setShowClear(Z)V
    .locals 0
    .param p1, "showClear"    # Z

    .line 84
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->isShowClear:Z

    .line 85
    return-void
.end method
