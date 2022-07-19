.class public Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;
.super Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;
.source "AUParallelTitleListItem.java"


# instance fields
.field private leftSubText:Ljava/lang/String;

.field private leftText:Ljava/lang/String;

.field private mLeftSubTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mLeftTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mRightSubTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private rightSubText:Ljava/lang/String;

.field private rightText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->initView()V

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->initContent(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->leftText:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->leftSubText:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->rightText:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->rightSubText:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->setParallelText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private initContent(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 64
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->listItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listLeftText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->leftText:Ljava/lang/String;

    .line 66
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listLeftSubText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->leftSubText:Ljava/lang/String;

    .line 67
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listRightText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->rightText:Ljava/lang/String;

    .line 68
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listRightSubText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->rightSubText:Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-void
.end method

.method private initView()V
    .locals 1

    .line 57
    sget v0, Lcom/alipay/mobile/antui/R$id;->parallel_left_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->mLeftTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 58
    sget v0, Lcom/alipay/mobile/antui/R$id;->parallel_left_sub_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->mLeftSubTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 59
    sget v0, Lcom/alipay/mobile/antui/R$id;->parallel_right_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 60
    sget v0, Lcom/alipay/mobile/antui/R$id;->parallel_right_sub_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->mRightSubTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 61
    return-void
.end method

.method private setTextViewString(Lcom/alipay/mobile/antui/basic/AUTextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "textView"    # Lcom/alipay/mobile/antui/basic/AUTextView;
    .param p2, "text"    # Ljava/lang/String;

    .line 124
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 128
    invoke-virtual {p1, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method


# virtual methods
.method protected inflateLayout(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_parallel_title_item:I

    iget-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->mListLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    return-void
.end method

.method public setLeftSubText(Ljava/lang/String;)V
    .locals 1
    .param p1, "leftSubText"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->mLeftSubTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->setTextViewString(Lcom/alipay/mobile/antui/basic/AUTextView;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setLeftText(Ljava/lang/String;)V
    .locals 1
    .param p1, "leftText"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->mLeftTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->setTextViewString(Lcom/alipay/mobile/antui/basic/AUTextView;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setParallelText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "leftText"    # Ljava/lang/String;
    .param p2, "leftSubText"    # Ljava/lang/String;
    .param p3, "rightText"    # Ljava/lang/String;
    .param p4, "rightSubText"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->setLeftText(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->setLeftSubText(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->setRightText(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p4}, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->setRightSubText(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public setRightSubText(Ljava/lang/String;)V
    .locals 1
    .param p1, "rightSubText"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->mRightSubTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->setTextViewString(Lcom/alipay/mobile/antui/basic/AUTextView;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public setRightText(Ljava/lang/String;)V
    .locals 1
    .param p1, "rightText"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/antui/tablelist/AUParallelTitleListItem;->setTextViewString(Lcom/alipay/mobile/antui/basic/AUTextView;Ljava/lang/String;)V

    .line 103
    return-void
.end method
