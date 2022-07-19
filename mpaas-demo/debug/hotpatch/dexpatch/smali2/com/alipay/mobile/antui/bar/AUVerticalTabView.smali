.class public Lcom/alipay/mobile/antui/bar/AUVerticalTabView;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "AUVerticalTabView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/bar/AUVerticalTabView$OnItemClickListener;
    }
.end annotation


# instance fields
.field private mOnItemClickListener:Lcom/alipay/mobile/antui/bar/AUVerticalTabView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->init()V

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
    invoke-direct {p0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->init()V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/bar/AUVerticalTabView;)Lcom/alipay/mobile/antui/bar/AUVerticalTabView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/bar/AUVerticalTabView;

    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->mOnItemClickListener:Lcom/alipay/mobile/antui/bar/AUVerticalTabView$OnItemClickListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->setOrientation(I)V

    .line 38
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_CLIENT_BG1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->setBackgroundColor(I)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->setClickable(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method public setItems(Ljava/util/List;)V
    .locals 4
    .param p1, "items"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->removeAllViews()V

    .line 44
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 46
    new-instance v2, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;-><init>(Landroid/content/Context;)V

    .line 47
    .local v1, "itemView":Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;
    move-object v1, v2

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->getNameView()Lcom/alipay/mobile/antui/basic/AUTextView;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->setTag(Ljava/lang/Object;)V

    .line 49
    new-instance v2, Lcom/alipay/mobile/antui/bar/AUVerticalTabView$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabView$1;-><init>(Lcom/alipay/mobile/antui/bar/AUVerticalTabView;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->addView(Landroid/view/View;)V

    .line 45
    .end local v1    # "itemView":Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/alipay/mobile/antui/bar/AUVerticalTabView$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/alipay/mobile/antui/bar/AUVerticalTabView$OnItemClickListener;

    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->mOnItemClickListener:Lcom/alipay/mobile/antui/bar/AUVerticalTabView$OnItemClickListener;

    .line 88
    return-void
.end method

.method public setSelected(I)V
    .locals 5
    .param p1, "index"    # I

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->getChildCount()I

    move-result v0

    .line 68
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 69
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 70
    .local v2, "childView":Landroid/view/View;
    move-object v2, v3

    instance-of v3, v3, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;

    if-eqz v3, :cond_1

    .line 71
    move-object v3, v2

    check-cast v3, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;

    .line 72
    .local v3, "verticalTabItemView":Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;
    if-ne p1, v1, :cond_0

    .line 73
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->setSelected(Z)V

    goto :goto_1

    .line 75
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;->setSelected(Z)V

    .line 68
    .end local v2    # "childView":Landroid/view/View;
    .end local v3    # "verticalTabItemView":Lcom/alipay/mobile/antui/bar/AUVerticalTabItemView;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
