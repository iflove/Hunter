.class final Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PerformanceViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 203
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 204
    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$b;->a:Landroid/widget/TextView;

    .line 205
    return-void
.end method
