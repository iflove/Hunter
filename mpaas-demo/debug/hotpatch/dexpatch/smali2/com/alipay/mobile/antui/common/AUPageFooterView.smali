.class public Lcom/alipay/mobile/antui/common/AUPageFooterView;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "AUPageFooterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/common/AUPageFooterView$OnLinkClickListener;
    }
.end annotation


# instance fields
.field private copyRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private layout:Landroid/view/ViewGroup;

.field private linkClickListener:Lcom/alipay/mobile/antui/common/AUPageFooterView$OnLinkClickListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/common/AUPageFooterView;->init(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/common/AUPageFooterView;->init(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/common/AUPageFooterView;->init(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/common/AUPageFooterView;)Lcom/alipay/mobile/antui/common/AUPageFooterView$OnLinkClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/common/AUPageFooterView;

    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->linkClickListener:Lcom/alipay/mobile/antui/common/AUPageFooterView$OnLinkClickListener;

    return-object v0
.end method

.method private addLinkerView(Ljava/util/List;)V
    .locals 9
    .param p1, "tagList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 77
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 80
    new-instance v4, Lcom/alipay/mobile/antui/basic/AUTextView;

    iget-object v5, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;)V

    .line 82
    .local v4, "tagTv":Lcom/alipay/mobile/antui/basic/AUTextView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    iget-object v7, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41900000    # 18.0f

    invoke-static {v7, v8}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v1, "viewParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v1, v5

    iget-object v6, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->mContext:Landroid/content/Context;

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v6, v7}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iget-object v8, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 84
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTag(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v4, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(F)V

    .line 88
    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/antui/basic/AUTextView;->setGravity(I)V

    .line 89
    const-string v5, "#108EE9"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    .line 90
    new-instance v5, Lcom/alipay/mobile/antui/basic/AUImageView;

    iget-object v6, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/alipay/mobile/antui/basic/AUImageView;-><init>(Landroid/content/Context;)V

    .line 91
    .local v2, "splitter":Lcom/alipay/mobile/antui/basic/AUImageView;
    move-object v2, v5

    const-string v6, "#CCCCCC"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/antui/basic/AUImageView;->setBackgroundColor(I)V

    .line 93
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->mContext:Landroid/content/Context;

    const v7, 0x3e99999a    # 0.3f

    .line 94
    invoke-static {v6, v7}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iget-object v7, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41300000    # 11.0f

    invoke-static {v7, v8}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 95
    .local v3, "splitterParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object v3, v5

    iget-object v6, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->mContext:Landroid/content/Context;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 96
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/basic/AUImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v5, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_0

    .line 100
    iget-object v5, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    :cond_0
    move v5, v0

    .line 103
    .local v5, "tmp":I
    new-instance v6, Lcom/alipay/mobile/antui/common/AUPageFooterView$1;

    invoke-direct {v6, p0, v5}, Lcom/alipay/mobile/antui/common/AUPageFooterView$1;-><init>(Lcom/alipay/mobile/antui/common/AUPageFooterView;I)V

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/antui/basic/AUTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .end local v1    # "viewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "splitter":Lcom/alipay/mobile/antui/basic/AUImageView;
    .end local v3    # "splitterParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "tagTv":Lcom/alipay/mobile/antui/basic/AUTextView;
    .end local v5    # "tmp":I
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 113
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_page_footer:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    sget v0, Lcom/alipay/mobile/antui/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/AUPageFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->layout:Landroid/view/ViewGroup;

    .line 49
    sget v0, Lcom/alipay/mobile/antui/R$id;->copyright_textview:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/AUPageFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->copyRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 50
    return-void
.end method


# virtual methods
.method public addFooterLinker(Ljava/util/List;)V
    .locals 0
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/common/AUPageFooterView;->addLinkerView(Ljava/util/List;)V

    .line 117
    return-void
.end method

.method public getCopyRightTextView()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->copyRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public getLinkedKernel()Landroid/view/View;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->layout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setCopyRightText(Ljava/lang/String;)V
    .locals 1
    .param p1, "copyRightText"    # Ljava/lang/String;

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->copyRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    return-void
.end method

.method public setCopyRightTextViewVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->copyRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 72
    return-void
.end method

.method public setLinkedVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 68
    return-void
.end method

.method public setOnLinkClickListener(Lcom/alipay/mobile/antui/common/AUPageFooterView$OnLinkClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/common/AUPageFooterView$OnLinkClickListener;

    .line 123
    iput-object p1, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView;->linkClickListener:Lcom/alipay/mobile/antui/common/AUPageFooterView$OnLinkClickListener;

    .line 125
    return-void
.end method
