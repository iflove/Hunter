.class public Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$SpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "PerformanceViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpaceItemDecoration"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "space"    # I

    .line 171
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 172
    iput p1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$SpaceItemDecoration;->a:I

    .line 173
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 177
    iget v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$SpaceItemDecoration;->a:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 178
    iget v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$SpaceItemDecoration;->a:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 180
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 181
    :goto_0
    if-eqz v0, :cond_1

    .line 182
    iget v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$SpaceItemDecoration;->a:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 184
    :cond_1
    return-void
.end method
