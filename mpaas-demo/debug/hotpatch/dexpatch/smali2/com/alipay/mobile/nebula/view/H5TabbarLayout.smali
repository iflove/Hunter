.class public Lcom/alipay/mobile/nebula/view/H5TabbarLayout;
.super Landroid/widget/LinearLayout;
.source "H5TabbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/view/H5TabbarLayout$H5TabListener;
    }
.end annotation


# instance fields
.field private selectedIndex:I

.field private tabListener:Lcom/alipay/mobile/nebula/view/H5TabbarLayout$H5TabListener;

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->tabs:Ljava/util/List;

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->initConfig()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->tabs:Ljava/util/List;

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->initConfig()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->tabs:Ljava/util/List;

    .line 38
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->initConfig()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/view/H5TabbarLayout;)Lcom/alipay/mobile/nebula/view/H5TabbarLayout$H5TabListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->tabListener:Lcom/alipay/mobile/nebula/view/H5TabbarLayout$H5TabListener;

    return-object v0
.end method

.method private initConfig()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->setOrientation(I)V

    .line 43
    return-void
.end method

.method private unselectAll()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->tabs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 76
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method


# virtual methods
.method public addTab(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->tabs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 47
    return-void

    .line 49
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 50
    .local v0, "position":I
    new-instance v1, Lcom/alipay/mobile/nebula/view/H5TabbarLayout$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout$1;-><init>(Lcom/alipay/mobile/nebula/view/H5TabbarLayout;ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v2, 0x0

    .line 59
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v2, v1

    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 60
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->tabs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->addView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->selectedIndex:I

    return v0
.end method

.method public getTabSize()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->tabs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 101
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public selectTab(I)V
    .locals 2
    .param p1, "i"    # I

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->tabs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 85
    const/4 p1, 0x0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 88
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->unselectAll()V

    .line 89
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 90
    iput p1, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->selectedIndex:I

    .line 91
    return-void
.end method

.method public setTabListener(Lcom/alipay/mobile/nebula/view/H5TabbarLayout$H5TabListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/nebula/view/H5TabbarLayout$H5TabListener;

    .line 68
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->tabListener:Lcom/alipay/mobile/nebula/view/H5TabbarLayout$H5TabListener;

    .line 69
    return-void
.end method
