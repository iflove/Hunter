.class public Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;
.super Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;
.source "AULineBreakListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$a;,
        Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$b;
    }
.end annotation


# instance fields
.field private leftParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mLeftContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field private mLeftLength:I

.field private mLeftText:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mRightLength:I

.field private mRightText:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private middleScreenWidth:I

.field private rightParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;
    .param p1, "x1"    # I

    .line 22
    iput p1, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mLeftLength:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;)Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mRightText:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;

    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->adjustWeight()V

    return-void
.end method

.method static synthetic access$302(Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;
    .param p1, "x1"    # I

    .line 22
    iput p1, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mRightLength:I

    return p1
.end method

.method private adjustWeight()V
    .locals 7

    .line 162
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mLeftLength:I

    iget v1, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->middleScreenWidth:I

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-le v0, v1, :cond_0

    iget v6, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mRightLength:I

    if-gt v6, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->leftParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->rightParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->leftParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->rightParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 168
    :cond_0
    if-gt v0, v1, :cond_1

    iget v6, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mRightLength:I

    if-le v6, v1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->leftParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->rightParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->leftParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->rightParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 174
    :cond_1
    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mRightLength:I

    if-gt v0, v1, :cond_2

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->leftParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->rightParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->leftParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->rightParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->leftParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->rightParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->leftParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->rightParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mLeftContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->leftParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mRightText:Lcom/alipay/mobile/antui/basic/AUTextView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->rightParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    return-void
.end method

.method private static getScreenWidth(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 203
    nop

    .line 204
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 205
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 59
    invoke-static {p1}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_MARGIN_UNIVERSAL:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->middleScreenWidth:I

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->initView()V

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->initStyle(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method private initStyle(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 95
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->listItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 96
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    move-object v1, v0

    sget v2, Lcom/alipay/mobile/antui/R$styleable;->listItem_listLeftText:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "leftText":Ljava/lang/String;
    sget v2, Lcom/alipay/mobile/antui/R$styleable;->listItem_listRightText:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "rightText":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private initView()V
    .locals 4

    .line 65
    sget v0, Lcom/alipay/mobile/antui/R$id;->break_left_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mLeftText:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 66
    sget v0, Lcom/alipay/mobile/antui/R$id;->break_right_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mRightText:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 67
    sget v0, Lcom/alipay/mobile/antui/R$id;->break_left_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mLeftContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 68
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->leftParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    const/16 v3, 0x10

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 70
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->rightParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->rightParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE17:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 74
    new-instance v0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$b;

    new-instance v1, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$1;-><init>(Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;)V

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$b;-><init>(Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$a;)V

    .line 82
    .local v0, "leftWatcher":Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$b;
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mLeftText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    new-instance v1, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$b;

    new-instance v2, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$2;-><init>(Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;)V

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$b;-><init>(Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$a;)V

    .line 91
    .local v1, "rightWatcher":Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem$b;
    iget-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mRightText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    return-void
.end method


# virtual methods
.method public getLeftText()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mLeftText:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public getRightText()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mRightText:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method protected inflateLayout(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_line_break_list_item:I

    iget-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mListLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE18:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 55
    .local v0, "padding":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mListLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setPadding(IIII)V

    .line 56
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 193
    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->onLayout(ZIIII)V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mRightText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mRightText:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setGravity(I)V

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mRightText:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setGravity(I)V

    .line 199
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "left"    # Ljava/lang/String;
    .param p2, "right"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mLeftText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AULineBreakListItem;->mRightText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method
