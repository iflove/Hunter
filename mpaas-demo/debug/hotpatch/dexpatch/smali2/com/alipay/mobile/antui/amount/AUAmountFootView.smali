.class public Lcom/alipay/mobile/antui/amount/AUAmountFootView;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "AUAmountFootView.java"


# static fields
.field public static final EDIT_STYLE:I = 0x10

.field public static final TEXT_STYLE:I = 0x11


# instance fields
.field private footStyle:I

.field private mClearIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mContentText:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->footStyle:I

    .line 35
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->footStyle:I

    .line 40
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->footStyle:I

    .line 45
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/amount/AUAmountFootView;)Lcom/alipay/mobile/antui/basic/AUEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_amount_foot_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 50
    sget v0, Lcom/alipay/mobile/antui/R$id;->foot_edit:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEditText;

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    .line 51
    sget v0, Lcom/alipay/mobile/antui/R$id;->foot_clear_btn:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mClearIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 52
    sget v0, Lcom/alipay/mobile/antui/R$id;->foot_content:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mContentText:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 54
    invoke-direct {p0}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->setEditChangedListner()V

    .line 55
    invoke-direct {p0}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->setClearBtnClick()V

    .line 56
    return-void
.end method

.method private setClearBtnClick()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mClearIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    new-instance v1, Lcom/alipay/mobile/antui/amount/AUAmountFootView$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/amount/AUAmountFootView$3;-><init>(Lcom/alipay/mobile/antui/amount/AUAmountFootView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    return-void
.end method

.method private setEditChangedListner()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    new-instance v1, Lcom/alipay/mobile/antui/amount/AUAmountFootView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/amount/AUAmountFootView$1;-><init>(Lcom/alipay/mobile/antui/amount/AUAmountFootView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    new-instance v1, Lcom/alipay/mobile/antui/amount/AUAmountFootView$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/amount/AUAmountFootView$2;-><init>(Lcom/alipay/mobile/antui/amount/AUAmountFootView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 165
    return-void
.end method


# virtual methods
.method public getContentText()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mContentText:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public getEditText()Lcom/alipay/mobile/antui/basic/AUEditText;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    return-object v0
.end method

.method public getEditTextEditable()Landroid/text/Editable;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method protected onInputTextStatusChanged(ZZ)V
    .locals 2
    .param p1, "isEmpty"    # Z
    .param p2, "isFocused"    # Z

    .line 187
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mClearIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mClearIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 192
    return-void
.end method

.method public setEditHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method public setStyle(I)V
    .locals 3
    .param p1, "style"    # I

    .line 64
    iput p1, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->footStyle:I

    .line 65
    const/16 v0, 0x10

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUEditText;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mClearIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mContentText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 78
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mContentText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 69
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentText"    # Ljava/lang/String;

    .line 95
    iget v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->footStyle:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mContentText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method
