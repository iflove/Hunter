.class public final Lcom/alipay/mobile/aompfilemanager/pdf/a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PageImageHolder.java"


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 22
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    sget v0, Lcom/alipay/mobile/aompfilemanager/b$a;->page:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/a;->a:Landroid/widget/ImageView;

    .line 24
    sget v0, Lcom/alipay/mobile/aompfilemanager/b$a;->page_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/a;->b:Landroid/widget/TextView;

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 27
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 28
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 29
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 30
    int-to-double v0, p1

    const-wide v2, 0x3ff6b851eb851eb8L    # 1.42

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 31
    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/a;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 32
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 33
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    return-void
.end method
