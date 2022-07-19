.class final Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PdfViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/alipay/mobile/aompfilemanager/pdf/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;

.field private b:Landroid/app/Activity;

.field private c:Lcom/alipay/mobile/aompfilemanager/pdf/b;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;->b:Landroid/app/Activity;

    .line 80
    new-instance v0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b$1;-><init>(Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;)V

    .line 87
    invoke-virtual {v0}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b$1;->start()V

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;Lcom/alipay/mobile/aompfilemanager/pdf/b;)Lcom/alipay/mobile/aompfilemanager/pdf/b;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;->c:Lcom/alipay/mobile/aompfilemanager/pdf/b;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;)V
    .locals 2

    .line 74
    nop

    .line 5092
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;->a:Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;

    new-instance v1, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b$2;-><init>(Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;->c:Lcom/alipay/mobile/aompfilemanager/pdf/b;

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_0
    nop

    .line 1069
    iget v0, v0, Lcom/alipay/mobile/aompfilemanager/pdf/b;->b:I

    .line 119
    return v0
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 74
    check-cast p1, Lcom/alipay/mobile/aompfilemanager/pdf/a;

    .line 1110
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;->c:Lcom/alipay/mobile/aompfilemanager/pdf/b;

    .line 2073
    const/4 v1, 0x0

    if-gez p2, :cond_0

    .line 2074
    goto :goto_0

    .line 2076
    :cond_0
    iget v2, v0, Lcom/alipay/mobile/aompfilemanager/pdf/b;->b:I

    if-lt p2, v2, :cond_1

    .line 2077
    goto :goto_0

    .line 2079
    :cond_1
    iget-object v2, v0, Lcom/alipay/mobile/aompfilemanager/pdf/b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2080
    goto :goto_0

    .line 2082
    :cond_2
    iget-object v0, v0, Lcom/alipay/mobile/aompfilemanager/pdf/b;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    .line 1110
    :goto_0
    nop

    .line 1111
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;->c:Lcom/alipay/mobile/aompfilemanager/pdf/b;

    .line 3069
    iget v0, v0, Lcom/alipay/mobile/aompfilemanager/pdf/b;->b:I

    .line 1111
    nop

    .line 4038
    iget-object v2, p1, Lcom/alipay/mobile/aompfilemanager/pdf/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 4039
    const-wide v3, 0x3ff6b851eb851eb8L    # 1.42

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v5, v5

    mul-double v5, v5, v3

    double-to-int v3, v5

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4040
    iget-object v2, p1, Lcom/alipay/mobile/aompfilemanager/pdf/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4041
    iget-object p1, p1, Lcom/alipay/mobile/aompfilemanager/pdf/a;->b:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    add-int/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    const-string p2, "%d/%d"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 74
    nop

    .line 4104
    iget-object p2, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;->b:Landroid/app/Activity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/alipay/mobile/aompfilemanager/b$b;->item_page_image:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4105
    new-instance p2, Lcom/alipay/mobile/aompfilemanager/pdf/a;

    invoke-direct {p2, p1}, Lcom/alipay/mobile/aompfilemanager/pdf/a;-><init>(Landroid/view/View;)V

    .line 74
    return-object p2
.end method
