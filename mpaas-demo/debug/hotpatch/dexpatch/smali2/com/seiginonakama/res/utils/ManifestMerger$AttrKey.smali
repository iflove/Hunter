.class Lcom/seiginonakama/res/utils/ManifestMerger$AttrKey;
.super Ljava/lang/Object;
.source "ManifestMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seiginonakama/res/utils/ManifestMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttrKey"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private nameSpace:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameSpace"    # Ljava/lang/String;

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput-object p1, p0, Lcom/seiginonakama/res/utils/ManifestMerger$AttrKey;->name:Ljava/lang/String;

    .line 553
    iput-object p2, p0, Lcom/seiginonakama/res/utils/ManifestMerger$AttrKey;->nameSpace:Ljava/lang/String;

    .line 554
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/seiginonakama/res/utils/ManifestMerger$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/seiginonakama/res/utils/ManifestMerger$1;

    .line 547
    invoke-direct {p0, p1, p2}, Lcom/seiginonakama/res/utils/ManifestMerger$AttrKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 558
    if-ne p1, p0, :cond_0

    .line 559
    const/4 v0, 0x1

    return v0

    .line 560
    :cond_0
    instance-of v0, p1, Lcom/seiginonakama/res/utils/ManifestMerger$AttrKey;

    if-eqz v0, :cond_1

    .line 561
    invoke-virtual {p0}, Lcom/seiginonakama/res/utils/ManifestMerger$AttrKey;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 563
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$AttrKey;->name:Ljava/lang/String;

    # invokes: Lcom/seiginonakama/res/utils/ManifestMerger;->strHashCode(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/seiginonakama/res/utils/ManifestMerger;->access$2400(Ljava/lang/String;)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    .line 576
    mul-int v0, v0, v1

    .line 577
    iget-object v1, p0, Lcom/seiginonakama/res/utils/ManifestMerger$AttrKey;->nameSpace:Ljava/lang/String;

    # invokes: Lcom/seiginonakama/res/utils/ManifestMerger;->strHashCode(Ljava/lang/String;)I
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger;->access$2400(Ljava/lang/String;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 578
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AttrKey{name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/seiginonakama/res/utils/ManifestMerger$AttrKey;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " nameSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/seiginonakama/res/utils/ManifestMerger$AttrKey;->nameSpace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
