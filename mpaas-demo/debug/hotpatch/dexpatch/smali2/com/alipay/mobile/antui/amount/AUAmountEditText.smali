.class public Lcom/alipay/mobile/antui/amount/AUAmountEditText;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "AUAmountEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private editChangedWatcher:Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;

.field private focusChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View$OnFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private keyBoardUtil:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

.field private mClearIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mContext:Landroid/content/Context;

.field private mDivider:Landroid/view/View;

.field private mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

.field private mTvUnitIcon:Lcom/alipay/mobile/antui/basic/AUTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->focusChangeListeners:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->focusChangeListeners:Ljava/util/List;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->focusChangeListeners:Ljava/util/List;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/amount/AUAmountEditText;)Lcom/alipay/mobile/antui/basic/AUEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/amount/AUAmountEditText;)Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->keyBoardUtil:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    return-object v0
.end method

.method private getTTFFilePath()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "antui_res"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AlipayNumber.ttf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_amount_edit_text:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 62
    sget v0, Lcom/alipay/mobile/antui/R$id;->amount_edit:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEditText;

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    .line 63
    sget v0, Lcom/alipay/mobile/antui/R$id;->amount_clear_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mClearIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 64
    sget v0, Lcom/alipay/mobile/antui/R$id;->edit_divider:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mDivider:Landroid/view/View;

    .line 65
    sget v0, Lcom/alipay/mobile/antui/R$id;->amount_unit_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mTvUnitIcon:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mContext:Landroid/content/Context;

    .line 68
    if-eqz p2, :cond_0

    .line 69
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->AmountInputBox:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->initContent(Landroid/content/res/TypedArray;)V

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    .end local v0    # "array":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mTvUnitIcon:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->getTTFFilePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "antui_res"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->getTypeface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    new-instance v0, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;

    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    iget-object v2, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mClearIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-direct {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;-><init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->editChangedWatcher:Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;

    .line 77
    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setInputType(I)V

    .line 80
    invoke-direct {p0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->setClearBtnClick()V

    .line 83
    new-instance v0, Lcom/alipay/mobile/antui/amount/AUAmountEditText$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText$1;-><init>(Lcom/alipay/mobile/antui/amount/AUAmountEditText;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    return-void
.end method

.method private initContent(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;

    .line 107
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->AmountInputBox_amountHintText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AmountInputBox_amountHintText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    return-void
.end method

.method private setClearBtnClick()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mClearIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    new-instance v1, Lcom/alipay/mobile/antui/amount/AUAmountEditText$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText$2;-><init>(Lcom/alipay/mobile/antui/amount/AUAmountEditText;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method


# virtual methods
.method public addOnFocusChangeListeners(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .line 195
    if-eqz p1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->focusChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    return-void
.end method

.method public getEditText()Lcom/alipay/mobile/antui/basic/AUEditText;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    return-object v0
.end method

.method public getEditTextEditable()Landroid/text/Editable;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public isShowClearIcon(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->editChangedWatcher:Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->setShowClear(Z)V

    .line 173
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->editChangedWatcher:Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->getEditTextEditable()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/antui/amount/AUAmountTextWatcher;->onInputTextStatusChanged(ZZ)V

    .line 179
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->keyBoardUtil:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->showKeyboard()V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->keyBoardUtil:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->hideKeyboard()V

    .line 184
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->focusChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnFocusChangeListener;

    .line 185
    invoke-interface {v1, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 186
    goto :goto_1

    .line 187
    :cond_2
    return-void
.end method

.method public setDividerVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method

.method public setKeyBoardView(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;)V
    .locals 1
    .param p1, "keyboardView"    # Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->setKeyBoardView(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;I)V

    .line 224
    return-void
.end method

.method public setKeyBoardView(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;I)V
    .locals 1
    .param p1, "keyboardView"    # Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;
    .param p2, "softInputAdjustMode"    # I

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->setKeyBoardView(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;Landroid/widget/ScrollView;I)V

    .line 234
    return-void
.end method

.method public setKeyBoardView(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;Landroid/widget/ScrollView;)V
    .locals 1
    .param p1, "keyboardView"    # Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;
    .param p2, "scrollView"    # Landroid/widget/ScrollView;

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->setKeyBoardView(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;Landroid/widget/ScrollView;I)V

    .line 215
    return-void
.end method

.method public setKeyBoardView(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;Landroid/widget/ScrollView;I)V
    .locals 3
    .param p1, "keyboardView"    # Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;
    .param p2, "scrollView"    # Landroid/widget/ScrollView;
    .param p3, "softInputAdjustMode"    # I

    .line 207
    new-instance v0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;

    invoke-direct {v0, v1, v2, p1, p3}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;-><init>(Landroid/content/Context;Landroid/widget/EditText;Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;I)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->keyBoardUtil:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    .line 208
    if-eqz p2, :cond_0

    .line 209
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->setScrollView(Landroid/widget/ScrollView;)V

    .line 211
    :cond_0
    return-void
.end method
