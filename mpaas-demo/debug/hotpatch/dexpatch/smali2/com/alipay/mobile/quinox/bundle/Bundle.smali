.class public Lcom/alipay/mobile/quinox/bundle/Bundle;
.super Ljava/lang/Object;
.source "Bundle.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/bundle/IBundle;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/quinox/bundle/IBundle<",
        "Lcom/alipay/mobile/quinox/bundle/Bundle;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/alipay/mobile/quinox/bundle/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field mIsDisable:Z

.field final mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/bundle/IBundle;)V
    .locals 1
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->f:Z

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 46
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 361
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public check(Ljava/io/File;)Z
    .locals 11
    .param p1, "file"    # Ljava/io/File;

    .line 488
    const/4 v0, 0x1

    .line 489
    .local v0, "same":Z
    const/4 v1, 0x0

    .line 490
    .local v1, "msg":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 491
    const/4 v0, 0x0

    .line 492
    const-string v1, "bundle.check() same=false : file == null"

    goto/16 :goto_2

    .line 493
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "bundle.check("

    if-nez v2, :cond_1

    .line 494
    const/4 v0, 0x0

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") same=false : file is not exists."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVERSION()I

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v4, :cond_4

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown Bundle Format Version:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVERSION()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 507
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getAdler32Sum()J

    move-result-wide v7

    .line 508
    .local v7, "_adler32Sum":J
    invoke-static {p1}, Lcom/alipay/mobile/quinox/security/Adler32Verifier;->genFileAdler32Sum(Ljava/io/File;)J

    move-result-wide v9

    .line 509
    .local v9, "adler32Sum":J
    cmp-long v2, v7, v9

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 510
    :goto_0
    move v0, v5

    if-nez v5, :cond_6

    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") same=false : genFileAdler32Sum(file)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", bundle.getAdler32Sum()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 499
    .end local v7    # "_adler32Sum":J
    .end local v9    # "adler32Sum":J
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getSize()J

    move-result-wide v7

    .line 500
    .local v7, "size":J
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 501
    .local v9, "length":J
    cmp-long v2, v7, v9

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    .line 502
    :goto_1
    move v0, v5

    if-nez v5, :cond_6

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") same=false : file.length()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", bundle.getSize()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 521
    .end local v7    # "size":J
    .end local v9    # "length":J
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 522
    const-string v2, "Bundle"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_7
    return v0
.end method

.method public check(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .line 484
    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->check(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public compareTo(Lcom/alipay/mobile/quinox/bundle/Bundle;)I
    .locals 2
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 335
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getInitLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getInitLevel()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->compareTo(Lcom/alipay/mobile/quinox/bundle/Bundle;)I

    move-result p1

    return p1
.end method

.method public containCode()Z
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/IBundle;->containCode()Z

    move-result v0

    return v0
.end method

.method public containNativeLibs()Z
    .locals 2

    .line 231
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getNativeLibs()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 232
    .local v1, "nativeLibs":Ljava/util/List;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public containRes()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/IBundle;->containRes()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 366
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 367
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobile/quinox/bundle/IBundle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 369
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 370
    .local v1, "o":Lcom/alipay/mobile/quinox/bundle/IBundle;
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVERSION()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getVERSION()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 371
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 372
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 373
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 374
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getAdler32Sum()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getAdler32Sum()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 375
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getMD5()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getMD5()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 376
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getInitLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getInitLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 377
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getPackageId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->containRes()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->containRes()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 379
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->containCode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->containCode()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getPackageNames()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 381
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getExportPackages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getExportPackages()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 382
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getComponents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getComponents()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getNativeLibs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getNativeLibs()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 384
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getDependencies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getDependencies()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 386
    .local v3, "e":Z
    :goto_0
    instance-of v4, p1, Lcom/alipay/mobile/quinox/bundle/Bundle;

    if-eqz v4, :cond_4

    .line 387
    move-object v4, p1

    check-cast v4, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 388
    .local v4, "ob":Lcom/alipay/mobile/quinox/bundle/Bundle;
    if-eqz v3, :cond_3

    iget-boolean v5, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mIsDisable:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, v4, Lcom/alipay/mobile/quinox/bundle/Bundle;->mIsDisable:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->a:Ljava/util/Set;

    iget-object v6, v4, Lcom/alipay/mobile/quinox/bundle/Bundle;->a:Ljava/util/Set;

    .line 389
    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->b:Ljava/util/List;

    iget-object v6, v4, Lcom/alipay/mobile/quinox/bundle/Bundle;->b:Ljava/util/List;

    .line 390
    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->c:Ljava/util/List;

    iget-object v6, v4, Lcom/alipay/mobile/quinox/bundle/Bundle;->c:Ljava/util/List;

    .line 391
    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->e:Ljava/util/List;

    iget-object v6, v4, Lcom/alipay/mobile/quinox/bundle/Bundle;->e:Ljava/util/List;

    .line 392
    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->d:Ljava/util/List;

    iget-object v6, v4, Lcom/alipay/mobile/quinox/bundle/Bundle;->d:Ljava/util/List;

    .line 393
    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->f:Z

    .line 394
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, v4, Lcom/alipay/mobile/quinox/bundle/Bundle;->f:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->g:Ljava/lang/String;

    iget-object v6, v4, Lcom/alipay/mobile/quinox/bundle/Bundle;->g:Ljava/lang/String;

    .line 395
    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->h:Ljava/lang/String;

    iget-object v6, v4, Lcom/alipay/mobile/quinox/bundle/Bundle;->h:Ljava/lang/String;

    .line 396
    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/bundle/Bundle;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v0

    :cond_3
    nop

    .line 388
    return v2

    .line 398
    .end local v4    # "ob":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_4
    return v3
.end method

.method public getActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->b:Ljava/util/List;

    return-object v0
.end method

.method public getAdler32Sum()J
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getAdler32Sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBroadcastReceivers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->d:Ljava/util/List;

    return-object v0
.end method

.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getComponents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContentProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->e:Ljava/util/List;

    return-object v0
.end method

.method public getCreatedBy()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getDependNames()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->a:Ljava/util/Set;

    if-nez v0, :cond_5

    .line 301
    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->a:Ljava/util/Set;

    if-nez v0, :cond_4

    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, "set":Ljava/util/HashSet;
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getDependencies()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 305
    .local v3, "dependencies":Ljava/util/List;
    move-object v3, v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 306
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    move-object v0, v1

    .line 308
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 309
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 310
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 311
    .local v2, "dependency":Ljava/lang/String;
    move-object v2, v4

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 312
    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 313
    .local v4, "index":I
    const/4 v5, -0x1

    if-eq v5, v4, :cond_0

    .line 316
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 314
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " has a wrong format depend: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 319
    .end local v2    # "dependency":Ljava/lang/String;
    .end local v4    # "index":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 322
    .end local v1    # "iterator":Ljava/util/Iterator;
    :cond_2
    if-nez v0, :cond_3

    .line 323
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->a:Ljava/util/Set;

    goto :goto_2

    .line 325
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->a:Ljava/util/Set;

    .line 328
    .end local v0    # "set":Ljava/util/HashSet;
    .end local v3    # "dependencies":Ljava/util/List;
    :cond_4
    :goto_2
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 330
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->a:Ljava/util/Set;

    return-object v0
.end method

.method public getDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getDependencies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExportPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getExportPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInitLevel()I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getInitLevel()I

    move-result v0

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMD5()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getMD5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManifestVersion()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeLibs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getNativeLibs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackageId()I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getPackageId()I

    move-result v0

    return v0
.end method

.method public getPackageNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getPackageNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->c:Ljava/util/List;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getAdler32Sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVERSION()I
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getVERSION()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initFromInputStream(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 404
    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0, p1}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .line 405
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    .line 407
    .local v0, "attributes":Ljava/util/jar/Attributes;
    const-string v1, "Bundle-Name"

    invoke-virtual {v0, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 409
    const-string v1, "Bundle-Version"

    invoke-virtual {v0, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/quinox/bundle/tools/BundleHelper;->genBundleVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setVersion(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 411
    const-string v1, "Init-Level"

    invoke-virtual {v0, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setInitLevel(I)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 413
    const-string v1, "Package-Name"

    invoke-virtual {v0, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 414
    .local v2, "value":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, ","

    if-nez v1, :cond_0

    .line 415
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setPackageNames(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 418
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v1, "components":Ljava/util/List;
    const-string v4, "Activity-Name"

    invoke-virtual {v0, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 420
    move-object v2, v4

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 421
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 422
    .local v4, "activities":Ljava/util/List;
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setActivities(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 423
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 425
    .end local v4    # "activities":Ljava/util/List;
    :cond_1
    const-string v4, "Service-Name"

    invoke-virtual {v0, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 426
    move-object v2, v4

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 428
    .local v4, "services":Ljava/util/List;
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setServices(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 429
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 431
    .end local v4    # "services":Ljava/util/List;
    :cond_2
    const-string v4, "Receiver-Name"

    invoke-virtual {v0, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 432
    move-object v2, v4

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 433
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 434
    .local v4, "receivers":Ljava/util/List;
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setBroadcastReceivers(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 435
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 437
    .end local v4    # "receivers":Ljava/util/List;
    :cond_3
    const-string v4, "Provider-Name"

    invoke-virtual {v0, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 438
    move-object v2, v4

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 439
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 440
    .local v4, "providers":Ljava/util/List;
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setContentProviders(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 441
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 444
    .end local v4    # "providers":Ljava/util/List;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 445
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setComponents(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 448
    :cond_5
    const-string v4, "Package-Id"

    invoke-virtual {v0, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setPackageId(I)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 450
    const-string v4, "Contains-Dex"

    invoke-virtual {v0, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setContainCode(Z)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 452
    const-string v4, "Contains-Res"

    invoke-virtual {v0, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setContainRes(Z)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 454
    const-string v4, "Native-Library"

    invoke-virtual {v0, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 455
    move-object v2, v4

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 456
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setNativeLibs(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 459
    :cond_6
    const-string v4, "Require-Bundle"

    invoke-virtual {v0, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 460
    move-object v2, v4

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 461
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setDependencies(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 464
    :cond_7
    const-string v4, "Export-Package"

    invoke-virtual {v0, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 465
    move-object v2, v4

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 466
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setExportPackages(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 469
    :cond_8
    const-string v3, "Inject-ClassVerifier"

    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 470
    move-object v2, v3

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 471
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setInjectClassVerifier(Z)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 474
    :cond_9
    const-string v3, "Created-By"

    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setCreatedBy(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 476
    const-string v3, "Manifest-Version"

    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setManifestVersion(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 477
    return-void
.end method

.method public declared-synchronized isDisable()Z
    .locals 1

    monitor-enter p0

    .line 291
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mIsDisable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 291
    .end local p0    # "this":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInjectClassVerifier()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->f:Z

    return v0
.end method

.method public isPure()Z
    .locals 1

    .line 344
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->containCode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->containRes()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->containNativeLibs()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setActivities(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 0
    .param p1, "activities"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->b:Ljava/util/List;

    .line 183
    return-object p0
.end method

.method public setAdler32Sum(J)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "size"    # J

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/IBundle;->setAdler32Sum(J)Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 265
    return-object p0
.end method

.method public bridge synthetic setAdler32Sum(J)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setAdler32Sum(J)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setBroadcastReceivers(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 0
    .param p1, "broadcastReceivers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->d:Ljava/util/List;

    .line 161
    return-object p0
.end method

.method public setComponents(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "components"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->setComponents(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 147
    return-object p0
.end method

.method public bridge synthetic setComponents(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setComponents(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setContainCode(Z)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "containCode"    # Z

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->setContainCode(Z)Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 216
    return-object p0
.end method

.method public bridge synthetic setContainCode(Z)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setContainCode(Z)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setContainRes(Z)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "containRes"    # Z

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->setContainRes(Z)Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 205
    return-object p0
.end method

.method public bridge synthetic setContainRes(Z)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setContainRes(Z)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setContentProviders(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 0
    .param p1, "contentProviders"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->e:Ljava/util/List;

    .line 156
    return-object p0
.end method

.method public setCreatedBy(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 0
    .param p1, "createdBy"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->g:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public setDependencies(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "dependencies"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->setDependencies(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 243
    return-object p0
.end method

.method public bridge synthetic setDependencies(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setDependencies(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized setDisable(Z)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 0
    .param p1, "disable"    # Z

    monitor-enter p0

    .line 295
    :try_start_0
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mIsDisable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-object p0

    .line 294
    .end local p0    # "this":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local p1    # "disable":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setExportPackages(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "exportPackages"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->setExportPackages(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 136
    return-object p0
.end method

.method public bridge synthetic setExportPackages(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setExportPackages(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setInitLevel(I)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "initLevel"    # I

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->setInitLevel(I)Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 114
    return-object p0
.end method

.method public bridge synthetic setInitLevel(I)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setInitLevel(I)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setInjectClassVerifier(Z)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 0
    .param p1, "injectClassVerifier"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->f:Z

    .line 72
    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->setLocation(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 81
    return-object p0
.end method

.method public bridge synthetic setLocation(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setLocation(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setMD5(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "md5"    # Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->setMD5(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 276
    return-object p0
.end method

.method public bridge synthetic setMD5(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setMD5(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setManifestVersion(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 0
    .param p1, "manifestVersion"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->h:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->setName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 92
    return-object p0
.end method

.method public bridge synthetic setName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setNativeLibs(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "nativeLibs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->setNativeLibs(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 227
    return-object p0
.end method

.method public bridge synthetic setNativeLibs(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setNativeLibs(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setPackageId(I)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "packageId"    # I

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->setPackageId(I)Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 194
    return-object p0
.end method

.method public bridge synthetic setPackageId(I)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setPackageId(I)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setPackageNames(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "packageNames"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->setPackageNames(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 125
    return-object p0
.end method

.method public bridge synthetic setPackageNames(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setPackageNames(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setServices(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 0
    .param p1, "services"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->c:Ljava/util/List;

    .line 174
    return-object p0
.end method

.method public setSize(J)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "size"    # J

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/IBundle;->setAdler32Sum(J)Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 254
    return-object p0
.end method

.method public bridge synthetic setSize(J)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setSize(J)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setVERSION(I)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "VER"    # I

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->setVERSION(I)Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 287
    return-object p0
.end method

.method public bridge synthetic setVERSION(I)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setVERSION(I)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setVersion(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->setVersion(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 103
    return-object p0
.end method

.method public bridge synthetic setVersion(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setVersion(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public toLongString()Ljava/lang/String;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 350
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bundle: VERSION="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVERSION()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    return-object v0

    .line 354
    :catchall_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Bundle"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    const-string v1, "Invalid Bundle (null == mTarget)?"

    return-object v1
.end method
