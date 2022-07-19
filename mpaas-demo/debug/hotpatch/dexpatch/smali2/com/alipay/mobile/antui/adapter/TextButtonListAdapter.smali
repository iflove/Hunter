.class public Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TextButtonListAdapter.java"


# instance fields
.field private itemListener:Lcom/alipay/mobile/antui/api/OnItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mGravity:I

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "textColor"    # I

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->mItemList:Ljava/util/List;

    .line 30
    iput p1, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->mGravity:I

    .line 31
    iput p2, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->mTextColor:I

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;)Lcom/alipay/mobile/antui/api/OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->itemListener:Lcom/alipay/mobile/antui/api/OnItemClickListener;

    return-object v0
.end method

.method private initTextView()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 5

    .line 85
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 86
    .local v1, "textView":Lcom/alipay/mobile/antui/basic/AUTextView;
    move-object v1, v0

    iget v2, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->mTextColor:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_TEXTSIZE4:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 88
    iget v0, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->mGravity:I

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setGravity(I)V

    .line 89
    iget v0, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->mGravity:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE6:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setPadding(IIII)V

    .line 92
    :cond_0
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE12:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 93
    .local v0, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    return-object v1
.end method

.method private resolveItemBgDrawable(I)I
    .locals 1
    .param p1, "position"    # I

    .line 76
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 77
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_round_bottom:I

    return v0

    .line 79
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_shape:I

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 54
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 59
    if-nez p2, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->initTextView()Lcom/alipay/mobile/antui/basic/AUTextView;

    move-result-object p2

    .line 62
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->resolveItemBgDrawable(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 63
    new-instance v0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter$1;-><init>(Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-object p2
.end method

.method public setData(Landroid/content/Context;Ljava/util/List;Lcom/alipay/mobile/antui/api/OnItemClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemList"    # Ljava/util/List;
    .param p3, "listener"    # Lcom/alipay/mobile/antui/api/OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/antui/api/OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    iput-object p3, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->itemListener:Lcom/alipay/mobile/antui/api/OnItemClickListener;

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->notifyDataSetChanged()V

    .line 40
    return-void
.end method
