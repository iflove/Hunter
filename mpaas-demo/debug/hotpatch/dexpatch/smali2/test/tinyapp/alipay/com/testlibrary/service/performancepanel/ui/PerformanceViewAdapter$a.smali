.class final Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PerformanceViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 193
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 194
    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$a;->a:Landroid/widget/TextView;

    .line 195
    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewAdapter$a;->b:Landroid/widget/TextView;

    .line 196
    return-void
.end method
