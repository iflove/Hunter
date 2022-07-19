.class final Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;
.super Ljava/lang/Object;
.source "GridViewWithHeaderAndFooter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field private final e:Landroid/database/DataSetObservable;

.field private final f:Landroid/widget/ListAdapter;

.field private g:I

.field private h:I

.field private final i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "headerViewInfos"    # Ljava/util/ArrayList;
    .param p2, "footViewInfos"    # Ljava/util/ArrayList;
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->e:Landroid/database/DataSetObservable;

    .line 398
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    .line 399
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->h:I

    .line 402
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->j:Z

    .line 404
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->k:Z

    .line 407
    iput-object p3, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    .line 408
    instance-of v2, p3, Landroid/widget/Filterable;

    iput-boolean v2, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->i:Z

    .line 409
    if-nez p1, :cond_0

    .line 410
    sget-object v2, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->a:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b:Ljava/util/ArrayList;

    goto :goto_0

    .line 412
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b:Ljava/util/ArrayList;

    .line 415
    :goto_0
    if-nez p2, :cond_1

    .line 416
    sget-object v2, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->a:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->c:Ljava/util/ArrayList;

    goto :goto_1

    .line 418
    :cond_1
    iput-object p2, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->c:Ljava/util/ArrayList;

    .line 420
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->a(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->c:Ljava/util/ArrayList;

    .line 421
    invoke-static {v2}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->a(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->d:Z

    .line 422
    return-void
.end method

.method private static a(Ljava/util/ArrayList;)Z
    .locals 2
    .param p0, "infos"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;",
            ">;)Z"
        }
    .end annotation

    .line 452
    if-eqz p0, :cond_1

    .line 453
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;

    .line 454
    iget-boolean v1, v1, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->d:Z

    if-nez v1, :cond_0

    .line 455
    const/4 v0, 0x0

    return v0

    .line 457
    :cond_0
    goto :goto_0

    .line 459
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private b()I
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private c()I
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private d()I
    .locals 4

    .line 509
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iget v2, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    int-to-double v2, v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 510
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->e:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 748
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .line 425
    if-gtz p1, :cond_0

    .line 426
    return-void

    .line 428
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    if-eq v0, p1, :cond_1

    .line 429
    iput p1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    .line 430
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->a()V

    .line 432
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 464
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;

    .line 465
    iget-object v1, v1, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->a:Landroid/view/View;

    if-ne v1, p1, :cond_1

    .line 466
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 467
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b:Ljava/util/ArrayList;

    .line 468
    invoke-static {v1}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->a(Ljava/util/ArrayList;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->c:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->d:Z

    .line 469
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->e:Landroid/database/DataSetObservable;

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 470
    return v3

    .line 463
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 473
    .end local v0    # "i":I
    :cond_2
    return v2
.end method

.method public final areAllItemsEnabled()Z
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 502
    iget-boolean v2, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->d:Z

    if-eqz v2, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 504
    :cond_1
    return v1
.end method

.method public final b(I)V
    .locals 0
    .param p1, "height"    # I

    .line 435
    iput p1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->h:I

    .line 436
    return-void
.end method

.method public final b(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 477
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 478
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;

    .line 479
    iget-object v1, v1, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->a:Landroid/view/View;

    if-ne v1, p1, :cond_1

    .line 480
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 481
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b:Ljava/util/ArrayList;

    .line 482
    invoke-static {v1}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->a(Ljava/util/ArrayList;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->c:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->d:Z

    .line 483
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->e:Landroid/database/DataSetObservable;

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 484
    return v3

    .line 477
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    .end local v0    # "i":I
    :cond_2
    return v2
.end method

.method public final getCount()I
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->c()I

    move-result v0

    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    mul-int v0, v0, v1

    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 495
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->c()I

    move-result v0

    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    mul-int v0, v0, v1

    return v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .line 735
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->i:Z

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0

    .line 738
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "position"    # I

    .line 541
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    mul-int v0, v0, v1

    .line 542
    .local v0, "numHeadersAndPlaceholders":I
    const/4 v2, 0x0

    if-ge p1, v0, :cond_1

    .line 543
    rem-int v3, p1, v1

    if-nez v3, :cond_0

    .line 544
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b:Ljava/util/ArrayList;

    div-int v1, p1, v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;

    iget-object v1, v1, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->c:Ljava/lang/Object;

    return-object v1

    .line 546
    :cond_0
    return-object v2

    .line 550
    :cond_1
    sub-int v1, p1, v0

    .line 551
    .local v1, "adjPosition":I
    const/4 v3, 0x0

    .line 552
    .local v3, "adapterCount":I
    iget-object v4, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_3

    .line 553
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->d()I

    move-result v3

    .line 554
    if-ge v1, v3, :cond_3

    .line 555
    iget-object v4, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 556
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 558
    :cond_2
    return-object v2

    .line 564
    :cond_3
    sub-int v4, v1, v3

    const/4 v5, 0x0

    .line 565
    .local v5, "footerPosition":I
    move v5, v4

    iget v6, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    rem-int/2addr v4, v6

    if-nez v4, :cond_4

    .line 566
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;

    iget-object v2, v2, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->c:Ljava/lang/Object;

    return-object v2

    .line 568
    :cond_4
    return-object v2
.end method

.method public final getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    .line 574
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    mul-int v0, v0, v1

    .line 575
    .local v0, "numHeadersAndPlaceholders":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    .line 576
    sub-int v2, p1, v0

    .line 577
    .local v2, "adjPosition":I
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 578
    .local v1, "adapterCount":I
    if-ge v2, v1, :cond_0

    .line 579
    iget-object v3, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    invoke-interface {v3, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    return-wide v3

    .line 582
    .end local v1    # "adapterCount":I
    .end local v2    # "adjPosition":I
    :cond_0
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public final getItemViewType(I)I
    .locals 8
    .param p1, "position"    # I

    .line 656
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    mul-int v0, v0, v1

    .line 657
    .local v0, "numHeadersAndPlaceholders":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 658
    .local v1, "adapterViewTypeStart":I
    :goto_0
    const/4 v3, -0x2

    .line 659
    .local v3, "type":I
    iget-boolean v4, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->j:Z

    if-eqz v4, :cond_2

    .line 661
    if-ge p1, v0, :cond_2

    .line 662
    if-nez p1, :cond_1

    .line 663
    iget-boolean v4, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->k:Z

    if-eqz v4, :cond_1

    .line 664
    iget-object v4, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v4, 0x1

    .line 667
    :cond_1
    iget v4, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    rem-int v5, p1, v4

    if-eqz v5, :cond_2

    .line 668
    div-int v4, p1, v4

    add-int/lit8 v4, v4, 0x1

    add-int v3, v1, v4

    .line 674
    :cond_2
    sub-int v4, p1, v0

    .line 675
    .local v4, "adjPosition":I
    const/4 v5, 0x0

    .line 676
    .local v5, "adapterCount":I
    iget-object v6, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_4

    .line 677
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->d()I

    move-result v5

    .line 678
    if-ltz v4, :cond_4

    if-ge v4, v5, :cond_4

    .line 679
    iget-object v6, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 680
    iget-object v6, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    invoke-interface {v6, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    goto :goto_1

    .line 682
    :cond_3
    iget-boolean v6, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->j:Z

    if-eqz v6, :cond_4

    .line 683
    iget-object v6, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v3, v6, 0x1

    .line 689
    :cond_4
    :goto_1
    iget-boolean v6, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->j:Z

    if-eqz v6, :cond_5

    .line 691
    sub-int v6, v4, v5

    .line 692
    .local v2, "footerPosition":I
    move v2, v6

    if-ltz v6, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_5

    iget v6, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    rem-int v6, v2, v6

    if-eqz v6, :cond_5

    .line 693
    iget-object v6, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    div-int v7, v2, v7

    add-int/lit8 v7, v7, 0x1

    add-int v3, v6, v7

    .line 696
    .end local v2    # "footerPosition":I
    :cond_5
    return v3
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 596
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    mul-int v0, v0, v1

    .line 597
    .local v0, "numHeadersAndPlaceholders":I
    const/4 v2, 0x4

    if-ge p1, v0, :cond_2

    .line 598
    iget-object v3, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b:Ljava/util/ArrayList;

    div-int v1, p1, v1

    .line 599
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;

    iget-object v1, v1, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->b:Landroid/view/ViewGroup;

    .line 600
    .local v1, "headerViewContainer":Landroid/view/View;
    iget v3, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    rem-int v3, p1, v3

    if-nez v3, :cond_0

    .line 601
    return-object v1

    .line 603
    :cond_0
    if-nez p2, :cond_1

    .line 604
    new-instance v3, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object p2, v3

    .line 608
    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 609
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 610
    return-object p2

    .line 614
    .end local v1    # "headerViewContainer":Landroid/view/View;
    :cond_2
    sub-int v1, p1, v0

    .line 615
    .local v1, "adjPosition":I
    const/4 v3, 0x0

    .line 616
    .local v3, "adapterCount":I
    iget-object v4, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 617
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->d()I

    move-result v3

    .line 618
    if-ge v1, v3, :cond_5

    .line 619
    iget-object v4, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 620
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move v4, v5

    .line 621
    .local v4, "view":Landroid/view/View;
    return-object v2

    .line 623
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    if-nez p2, :cond_4

    .line 624
    new-instance v4, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object p2, v4

    .line 626
    :cond_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 627
    iget v2, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->h:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 628
    return-object p2

    .line 633
    :cond_5
    sub-int v4, v1, v3

    .line 634
    .local v5, "footerPosition":I
    move v5, v4

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_8

    .line 635
    iget-object v4, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->c:Ljava/util/ArrayList;

    iget v6, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    div-int v6, v5, v6

    .line 636
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;

    iget-object v4, v4, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->b:Landroid/view/ViewGroup;

    .line 637
    .local v4, "footViewContainer":Landroid/view/View;
    iget v6, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    rem-int v6, p1, v6

    if-nez v6, :cond_6

    .line 638
    return-object v4

    .line 640
    :cond_6
    if-nez p2, :cond_7

    .line 641
    new-instance v6, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object p2, v6

    .line 645
    :cond_7
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 646
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 647
    return-object p2

    .line 650
    .end local v4    # "footViewContainer":Landroid/view/View;
    :cond_8
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v2
.end method

.method public final getViewTypeCount()I
    .locals 3

    .line 706
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 707
    .local v0, "count":I
    :goto_0
    iget-boolean v2, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->j:Z

    if-eqz v2, :cond_2

    .line 708
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v2, v1

    .line 709
    .local v2, "offset":I
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->k:Z

    if-eqz v1, :cond_1

    .line 710
    add-int/lit8 v2, v2, 0x1

    .line 712
    :cond_1
    add-int/2addr v0, v2

    .line 714
    .end local v2    # "offset":I
    :cond_2
    return v0
.end method

.method public final getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 588
    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0

    .line 590
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->c()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 8
    .param p1, "position"    # I

    .line 516
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    mul-int v0, v0, v1

    .line 517
    .local v0, "numHeadersAndPlaceholders":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge p1, v0, :cond_1

    .line 518
    rem-int v4, p1, v1

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->b:Ljava/util/ArrayList;

    div-int v1, p1, v1

    .line 519
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;

    iget-boolean v1, v1, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->d:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    nop

    .line 518
    return v3

    .line 523
    :cond_1
    sub-int v1, p1, v0

    .line 524
    .local v1, "adjPosition":I
    const/4 v4, 0x0

    .line 525
    .local v4, "adapterCount":I
    iget-object v5, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_3

    .line 526
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->d()I

    move-result v4

    .line 527
    if-ge v1, v4, :cond_3

    .line 528
    iget-object v5, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    invoke-interface {v5, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    return v2

    :cond_2
    return v3

    .line 533
    :cond_3
    sub-int v5, v1, v4

    move v6, v3

    .line 534
    .local v6, "footerPosition":I
    move v6, v5

    iget v7, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->g:I

    rem-int/2addr v5, v7

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->c:Ljava/util/ArrayList;

    div-int v7, v6, v7

    .line 535
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;

    iget-boolean v5, v5, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$a;->d:Z

    if-eqz v5, :cond_4

    return v2

    :cond_4
    nop

    .line 534
    return v3
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 719
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->e:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 720
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 721
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 723
    :cond_0
    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 727
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->e:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 728
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$c;->f:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 729
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 731
    :cond_0
    return-void
.end method
