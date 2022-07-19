.class public final Lcom/alipay/mobile/quinox/bundle/d$a;
.super Ljava/lang/Object;
.source "BundleResMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/bundle/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/d$a;->a:I

    .line 292
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/d$a;->c:Landroid/util/SparseArray;

    .line 306
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .param p1, "realPkgId"    # I
    .param p2, "mergeBundle"    # Ljava/lang/String;
    .param p3, "pkgNameMap"    # Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/d$a;->a:I

    .line 292
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/d$a;->c:Landroid/util/SparseArray;

    .line 309
    iput p1, p0, Lcom/alipay/mobile/quinox/bundle/d$a;->a:I

    .line 310
    iput-object p2, p0, Lcom/alipay/mobile/quinox/bundle/d$a;->b:Ljava/lang/String;

    .line 311
    iput-object p3, p0, Lcom/alipay/mobile/quinox/bundle/d$a;->c:Landroid/util/SparseArray;

    .line 312
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/bundle/d$a;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/bundle/d$a;

    .line 280
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/d$a;->a:I

    return v0
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/d$a;
    .locals 5
    .param p0, "src"    # Ljava/lang/String;

    .line 328
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 329
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/d$a;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/bundle/d$a;-><init>()V

    .line 330
    .local v0, "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 331
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 332
    .local v4, "item":Ljava/lang/String;
    invoke-direct {v0, v4}, Lcom/alipay/mobile/quinox/bundle/d$a;->b(Ljava/lang/String;)V

    .line 331
    .end local v4    # "item":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 334
    :cond_0
    iget v1, v0, Lcom/alipay/mobile/quinox/bundle/d$a;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/alipay/mobile/quinox/bundle/d$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 337
    return-object v0

    .line 335
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MergeInfo parse failed!, src:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", parsed: pkgId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/alipay/mobile/quinox/bundle/d$a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mergeBundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alipay/mobile/quinox/bundle/d$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mPkgNameMap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alipay/mobile/quinox/bundle/d$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b(Ljava/lang/String;)V
    .locals 12
    .param p1, "itemString"    # Ljava/lang/String;

    .line 361
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 362
    .local v2, "keyvalue":[Ljava/lang/String;
    move-object v2, v0

    array-length v0, v0

    const-string v3, ") when parse MergedResInfo item"

    const-string v4, "BundleResMerge"

    const/4 v5, 0x2

    if-ne v0, v5, :cond_9

    .line 363
    const/4 v0, 0x0

    aget-object v6, v2, v0

    move-object v7, v1

    .line 364
    .local v7, "key":Ljava/lang/String;
    move-object v7, v6

    const/4 v8, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x117a4926

    const/4 v11, 0x1

    if-eq v9, v10, :cond_3

    const v10, 0x65c7807

    if-eq v9, v10, :cond_2

    const v10, 0x42fa74dc

    if-eq v9, v10, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v9, "pkgNames"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x2

    goto :goto_0

    :cond_2
    const-string v9, "pkgId"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    const-string v9, "mergeBundle"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x1

    :goto_0
    if-eqz v8, :cond_8

    if-eq v8, v11, :cond_7

    if-eq v8, v5, :cond_4

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown key("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .end local v7    # "key":Ljava/lang/String;
    return-void

    .line 372
    .restart local v7    # "key":Ljava/lang/String;
    :cond_4
    aget-object v3, v2, v11

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 373
    array-length v4, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_6

    aget-object v8, v3, v6

    .line 374
    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 375
    .local v1, "pkgIdAndPkgName":[Ljava/lang/String;
    move-object v1, v8

    array-length v8, v8

    if-ne v8, v5, :cond_5

    .line 378
    aget-object v8, v1, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 379
    .local v8, "pkgId":I
    aget-object v9, v1, v11

    .line 380
    .local v9, "pkgName":Ljava/lang/String;
    iget-object v10, p0, Lcom/alipay/mobile/quinox/bundle/d$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v10, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 373
    .end local v1    # "pkgIdAndPkgName":[Ljava/lang/String;
    .end local v8    # "pkgId":I
    .end local v9    # "pkgName":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 376
    .restart local v1    # "pkgIdAndPkgName":[Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown format when parse mPkgNameMap, value:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v2, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    .end local v1    # "pkgIdAndPkgName":[Ljava/lang/String;
    :cond_6
    return-void

    .line 369
    :cond_7
    aget-object v0, v2, v11

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/d$a;->b:Ljava/lang/String;

    .line 370
    return-void

    .line 366
    :cond_8
    aget-object v0, v2, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/d$a;->a:I

    .line 367
    return-void

    .line 389
    .end local v7    # "key":Ljava/lang/String;
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown format("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/d$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/d$a;->c:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 6

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 342
    .local v1, "strBuilder":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string v2, "pkgId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/quinox/bundle/d$a;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|mergeBundle:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/d$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/d$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    .line 345
    .local v2, "pkgMapSize":I
    move v2, v0

    if-lez v0, :cond_0

    .line 346
    const-string v0, "|pkgNames:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 350
    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/d$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 351
    .local v3, "bundlePackageId":I
    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/d$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 352
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    add-int/lit8 v5, v2, -0x1

    if-eq v0, v5, :cond_1

    .line 354
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .end local v3    # "bundlePackageId":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
