.class public Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PerformanceViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$b;,
        Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$a;,
        Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$SpaceItemDecoration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I


# instance fields
.field private final d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->a:I

    .line 29
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->b:I

    .line 30
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    iput-object p1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->d:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 25
    sget v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->b:I

    return v0
.end method

.method private static a(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 126
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, "relativeLayout":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 129
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v2, v4

    .line 133
    .local v2, "itemLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 134
    .local v4, "title":Landroid/widget/TextView;
    move-object v4, v3

    sget v5, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->a:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setId(I)V

    .line 135
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 138
    return-object v0
.end method

.method static synthetic b()I
    .locals 1

    .line 25
    sget v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->c:I

    return v0
.end method

.method private static b(Landroid/content/Context;)Landroid/view/View;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 142
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 143
    .local v0, "relativeLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 145
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v4, "itemNameLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    move-object v7, v6

    .line 152
    .local v7, "itemName":Landroid/widget/TextView;
    move-object v7, v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    sget v5, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->b:I

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setId(I)V

    .line 155
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v6

    .line 157
    .local v3, "itemValueLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v3, v5

    const/4 v8, 0x2

    invoke-static {v8}, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->a(I)I

    move-result v8

    invoke-virtual {v5, v8, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 158
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v5, v6

    .line 159
    .local v5, "itemValue":Landroid/widget/TextView;
    move-object v5, v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    sget v2, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->c:I

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setId(I)V

    .line 162
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    .line 25
    sget v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->a:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;
    .locals 0
    .param p1, "displayInfoList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;",
            ">;)",
            "Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->e:Ljava/util/List;

    .line 41
    return-object p0
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .param p1, "newDisplayInfoList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->e:Ljava/util/List;

    .line 46
    invoke-virtual {p0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->notifyDataSetChanged()V

    .line 47
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 117
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 122
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;

    invoke-virtual {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;->c()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 82
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 86
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;

    .line 88
    .local v0, "displayItemInfo":Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x41500000    # 13.0f

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    move-object v1, p1

    check-cast v1, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$a;

    .line 91
    .local v1, "descriptionHolder":Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$a;
    invoke-virtual {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;->b()Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/PerformanceItemInfo;

    move-result-object v2

    .line 93
    .local v2, "performanceItemInfo":Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/PerformanceItemInfo;
    iget-object v4, v1, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$a;->a:Landroid/widget/TextView;

    const-string v5, "#FFFFFF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object v4, v1, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    iget-object v4, v1, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/PerformanceItemInfo;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v4, v1, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$a;->b:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object v4, v1, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 99
    iget-object v3, v1, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/PerformanceItemInfo;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-void

    .line 103
    .end local v1    # "descriptionHolder":Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$a;
    .end local v2    # "performanceItemInfo":Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/PerformanceItemInfo;
    :cond_1
    move-object v1, p1

    check-cast v1, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$b;

    const/4 v2, 0x0

    .line 105
    .local v2, "titleHolder":Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$b;
    move-object v2, v1

    iget-object v1, v1, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$b;->a:Landroid/widget/TextView;

    const-string v4, "#ABABAE"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    iget-object v1, v2, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$b;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 107
    iget-object v1, v2, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .end local v2    # "titleHolder":Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$b;
    :goto_0
    return-void

    .line 83
    .end local v0    # "displayItemInfo":Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "must call setDisplayInfo before display"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->d:Landroid/content/Context;

    invoke-static {v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, "descriptionViewItem":Landroid/view/View;
    new-instance v2, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$a;

    invoke-direct {v2, v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$a;-><init>(Landroid/view/View;)V

    move-object v0, v2

    .line 66
    goto :goto_0

    .line 69
    .end local v1    # "descriptionViewItem":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->d:Landroid/content/Context;

    invoke-static {v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, "titleViewItem":Landroid/view/View;
    new-instance v2, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$b;

    invoke-direct {v2, v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$b;-><init>(Landroid/view/View;)V

    move-object v0, v2

    .line 77
    .end local v1    # "titleViewItem":Landroid/view/View;
    :goto_0
    return-object v0
.end method
