.class public Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;
.super Landroid/widget/GridView;
.source "GridViewWithHeaderAndFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;,
        Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$OnTouchInvalidPositionListener;,
        Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$b;,
        Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;
    }
.end annotation


# static fields
.field public static DEBUG:Z


# instance fields
.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;",
            ">;"
        }
    .end annotation
.end field

.field private mRowHeight:I

.field private mTouchInvalidPosListener:Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$OnTouchInvalidPositionListener;

.field private mViewForMeasureRowHeight:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mRowHeight:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->initHeaderGridView()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mRowHeight:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 69
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->initHeaderGridView()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mRowHeight:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 74
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->initHeaderGridView()V

    .line 75
    return-void
.end method

.method private initHeaderGridView()V
    .locals 0

    .line 60
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "where"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;",
            ">;)V"
        }
    .end annotation

    .line 237
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 238
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 239
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;

    .line 240
    iget-object v2, v2, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->a:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 241
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 242
    return-void

    .line 238
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 157
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 158
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .line 161
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 162
    .local v1, "mAdapter":Landroid/widget/ListAdapter;
    move-object v1, v0

    if-eqz v0, :cond_1

    instance-of v0, v1, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 169
    .local v0, "lyp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;-><init>(B)V

    .line 170
    .local v2, "info":Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;
    new-instance v3, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$b;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$b;-><init>(Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;Landroid/content/Context;)V

    .line 172
    .local v3, "fl":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_2

    .line 173
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    :cond_2
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 177
    iput-object p1, v2, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->a:Landroid/view/View;

    .line 178
    iput-object v3, v2, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->b:Landroid/view/ViewGroup;

    .line 179
    iput-object p2, v2, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->c:Ljava/lang/Object;

    .line 180
    iput-boolean p3, v2, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->d:Z

    .line 181
    iget-object v4, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    if-eqz v1, :cond_3

    .line 184
    move-object v4, v1

    check-cast v4, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;

    invoke-virtual {v4}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->a()V

    .line 186
    :cond_3
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 112
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 113
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .line 128
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 129
    .local v1, "adapter":Landroid/widget/ListAdapter;
    move-object v1, v0

    if-eqz v0, :cond_1

    instance-of v0, v1, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 136
    .local v0, "lyp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;-><init>(B)V

    .line 137
    .local v2, "info":Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;
    new-instance v3, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$b;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$b;-><init>(Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;Landroid/content/Context;)V

    .line 139
    .local v3, "fl":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_2

    .line 140
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    :cond_2
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 144
    iput-object p1, v2, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->a:Landroid/view/View;

    .line 145
    iput-object v3, v2, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->b:Landroid/view/ViewGroup;

    .line 146
    iput-object p2, v2, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->c:Ljava/lang/Object;

    .line 147
    iput-boolean p3, v2, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->d:Z

    .line 148
    iget-object v4, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    if-eqz v1, :cond_3

    .line 152
    move-object v4, v1

    check-cast v4, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;

    invoke-virtual {v4}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->a()V

    .line 154
    :cond_3
    return-void
.end method

.method public getFooterViewCount()I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderHeight(I)I
    .locals 1
    .param p1, "row"    # I

    .line 259
    if-ltz p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;

    iget-object v0, v0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 263
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderViewCount()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRowHeight()I
    .locals 9

    .line 267
    iget v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mRowHeight:I

    if-lez v0, :cond_0

    .line 268
    return v0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 271
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getNumColumns()I

    move-result v1

    .line 273
    .local v1, "numColumns":I
    const/4 v2, -0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    mul-int v4, v4, v1

    if-gt v3, v4, :cond_1

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getColumnWidth()I

    move-result v3

    .line 277
    .local v3, "mColumnWidth":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int v5, v5, v1

    iget-object v6, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mViewForMeasureRowHeight:Landroid/view/View;

    invoke-interface {v4, v5, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 278
    .local v6, "view":Landroid/view/View;
    move-object v6, v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 279
    .local v5, "p":Landroid/widget/AbsListView$LayoutParams;
    move-object v5, v4

    const/4 v7, 0x0

    if-nez v4, :cond_2

    .line 280
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v4, v2, v8, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    move-object v5, v4

    .line 281
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    :cond_2
    nop

    .line 284
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v4, v5, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 283
    invoke-static {v2, v7, v4}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getChildMeasureSpec(III)I

    move-result v2

    .line 285
    .local v2, "childHeightSpec":I
    const/high16 v4, 0x40000000    # 2.0f

    .line 286
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v8, v5, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 285
    invoke-static {v4, v7, v8}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getChildMeasureSpec(III)I

    move-result v4

    .line 287
    .local v4, "childWidthSpec":I
    invoke-virtual {v6, v4, v2}, Landroid/view/View;->measure(II)V

    .line 288
    iput-object v6, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 289
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mRowHeight:I

    .line 290
    return v7

    .line 274
    .end local v2    # "childHeightSpec":I
    .end local v3    # "mColumnWidth":I
    .end local v4    # "childWidthSpec":I
    .end local v5    # "p":Landroid/widget/AbsListView$LayoutParams;
    .end local v6    # "view":Landroid/view/View;
    :cond_3
    :goto_0
    return v2
.end method

.method public invalidateRowHeight()V
    .locals 1

    .line 255
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mRowHeight:I

    .line 256
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 250
    invoke-super {p0}, Landroid/widget/GridView;->onDetachedFromWindow()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 252
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 79
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 81
    .local v1, "adapter":Landroid/widget/ListAdapter;
    move-object v1, v0

    if-eqz v0, :cond_0

    instance-of v0, v1, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;

    if-eqz v0, :cond_0

    .line 82
    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getNumColumns()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->a(I)V

    .line 83
    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getRowHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 754
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mTouchInvalidPosListener:Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$OnTouchInvalidPositionListener;

    if-nez v0, :cond_0

    .line 755
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 758
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 761
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->isClickable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 764
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->pointToPosition(II)I

    move-result v0

    .line 767
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 768
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 769
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mTouchInvalidPosListener:Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$OnTouchInvalidPositionListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$OnTouchInvalidPositionListener;->onTouchInvalidPosition(I)Z

    move-result v0

    return v0

    .line 772
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    .line 227
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object v2, v1

    if-eqz v1, :cond_0

    move-object v1, v2

    check-cast v1, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const/4 v0, 0x1

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 231
    return v0

    .line 233
    .end local v0    # "result":Z
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    .line 207
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object v2, v1

    if-eqz v1, :cond_0

    move-object v1, v2

    check-cast v1, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const/4 v0, 0x1

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 211
    return v0

    .line 213
    .end local v0    # "result":Z
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 27
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    return-void

    .line 316
    :cond_1
    :goto_0
    new-instance v0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 317
    .local v0, "headerViewGridAdapter":Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getNumColumns()I

    move-result v1

    const/4 v2, 0x0

    .line 318
    .local v2, "numColumns":I
    move v2, v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    .line 319
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->a(I)V

    .line 321
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getRowHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b(I)V

    .line 322
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 323
    .end local v0    # "headerViewGridAdapter":Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;
    .end local v2    # "numColumns":I
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 0
    .param p1, "clipChildren"    # Z

    .line 90
    return-void
.end method

.method public setClipChildrenSupper(Z)V
    .locals 1
    .param p1, "clipChildren"    # Z

    .line 98
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setClipChildren(Z)V

    .line 99
    return-void
.end method

.method public setNumColumns(I)V
    .locals 2
    .param p1, "numColumns"    # I

    .line 357
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 358
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 359
    .local v1, "adapter":Landroid/widget/ListAdapter;
    move-object v1, v0

    if-eqz v0, :cond_0

    instance-of v0, v1, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;

    if-eqz v0, :cond_0

    .line 360
    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->a(I)V

    .line 362
    :cond_0
    return-void
.end method

.method public setOnTouchInvalidPositionListener(Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$OnTouchInvalidPositionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$OnTouchInvalidPositionListener;

    .line 377
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->mTouchInvalidPosListener:Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$OnTouchInvalidPositionListener;

    .line 378
    return-void
.end method

.method public tryToScrollToBottomSmoothly()V
    .locals 3

    .line 295
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 296
    .local v0, "lastPos":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 297
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->smoothScrollToPositionFromTop(II)V

    return-void

    .line 299
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->setSelection(I)V

    .line 301
    return-void
.end method

.method public tryToScrollToBottomSmoothly(I)V
    .locals 3
    .param p1, "duration"    # I

    .line 305
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 306
    .local v0, "lastPos":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 307
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->smoothScrollToPositionFromTop(III)V

    return-void

    .line 309
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->setSelection(I)V

    .line 311
    return-void
.end method
