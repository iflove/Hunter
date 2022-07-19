.class public Lcom/alipay/mobile/antui/input/AUParagraphInputBox;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "AUParagraphInputBox.java"


# static fields
.field private static final DEFAULT_MAX_LENGTH:I = 0xf0


# instance fields
.field private mInputHint:Ljava/lang/String;

.field private mInputText:Ljava/lang/String;

.field private maxLength:I

.field private paraEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

.field private paraTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private supportEmoji:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/16 v0, 0xf0

    iput v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->maxLength:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->supportEmoji:Z

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/16 v0, 0xf0

    iput v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->maxLength:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->supportEmoji:Z

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/16 v0, 0xf0

    iput v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->maxLength:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->supportEmoji:Z

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/input/AUParagraphInputBox;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/input/AUParagraphInputBox;

    .line 21
    iget v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->maxLength:I

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/input/AUParagraphInputBox;)Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/input/AUParagraphInputBox;

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->paraTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method private infateStyle(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 86
    if-eqz p2, :cond_0

    .line 87
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox_inputName:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->mInputText:Ljava/lang/String;

    .line 89
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox_maxLength:I

    const/16 v2, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->maxLength:I

    .line 90
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox_inputHint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->mInputHint:Ljava/lang/String;

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    sget-object v1, Lcom/alipay/mobile/antui/R$styleable;->EmojiAttr:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 94
    .local v1, "emojia":Landroid/content/res/TypedArray;
    sget v2, Lcom/alipay/mobile/antui/R$styleable;->EmojiAttr_supportEmoji:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->supportEmoji:Z

    .line 95
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "emojia":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_paragrash_input_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->drawable_bg_top_bottom_line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->setBackgroundResource(I)V

    .line 53
    sget v0, Lcom/alipay/mobile/antui/R$id;->paragraph_edit:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEditText;

    iput-object v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->paraEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    .line 54
    sget v0, Lcom/alipay/mobile/antui/R$id;->paragraph_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->paraTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->infateStyle(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->paraEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    iget-boolean v1, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->supportEmoji:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setSupportEmoji(Z)V

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->paraEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->maxLength:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->paraEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    new-instance v1, Lcom/alipay/mobile/antui/input/AUParagraphInputBox$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/input/AUParagraphInputBox$1;-><init>(Lcom/alipay/mobile/antui/input/AUParagraphInputBox;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->mInputHint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->paraEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->mInputHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->mInputText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->paraEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->mInputHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->paraTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->maxLength:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method


# virtual methods
.method public getParaEditView()Lcom/alipay/mobile/antui/basic/AUEditText;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->paraEditView:Lcom/alipay/mobile/antui/basic/AUEditText;

    return-object v0
.end method

.method public getParaTextView()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->paraTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method
