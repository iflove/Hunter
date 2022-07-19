.class Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;
.super Ljava/lang/Object;
.source "ManifestMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seiginonakama/res/utils/ManifestMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XmlAttributeKey"
.end annotation


# instance fields
.field private xmlAttributeWrapper:Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;


# direct methods
.method private constructor <init>(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)V
    .locals 0
    .param p1, "xmlAttributeWrapper"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput-object p1, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->xmlAttributeWrapper:Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    .line 508
    return-void
.end method

.method static synthetic access$2600(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;)Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;

    .line 503
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->xmlAttributeWrapper:Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    return-object v0
.end method

.method public static wrap(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;
    .locals 1
    .param p0, "xmlAttributeWrapper"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    .line 511
    new-instance v0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;

    invoke-direct {v0, p0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;-><init>(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 516
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 517
    return v1

    .line 518
    :cond_0
    instance-of v0, p1, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 519
    move-object v0, p1

    check-cast v0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;

    const/4 v3, 0x0

    .line 520
    .local v3, "other":Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;
    move-object v3, v0

    iget-object v0, v0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->xmlAttributeWrapper:Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    iget-object v4, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->xmlAttributeWrapper:Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    return v1

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->xmlAttributeWrapper:Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    if-eqz v0, :cond_3

    .line 524
    iget-object v0, v3, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->xmlAttributeWrapper:Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$2000(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->xmlAttributeWrapper:Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->name:Ljava/lang/String;
    invoke-static {v4}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$2000(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->xmlAttributeWrapper:Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    .line 525
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->nameSpace:Ljava/lang/String;
    invoke-static {v0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$2200(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->xmlAttributeWrapper:Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->nameSpace:Ljava/lang/String;
    invoke-static {v4}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$2200(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->xmlAttributeWrapper:Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    .line 526
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->rawValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$2300(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->xmlAttributeWrapper:Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->rawValue:Ljava/lang/String;
    invoke-static {v4}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$2300(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    nop

    .line 524
    return v2

    .line 529
    .end local v3    # "other":Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 534
    const/4 v0, 0x1

    .line 535
    .local v0, "h":I
    iget-object v1, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->xmlAttributeWrapper:Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    if-eqz v1, :cond_0

    .line 537
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$2000(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/seiginonakama/res/utils/ManifestMerger;->strHashCode(Ljava/lang/String;)I
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger;->access$2400(Ljava/lang/String;)I

    move-result v1

    const v2, 0xf4243

    xor-int/2addr v1, v2

    .line 538
    mul-int v1, v1, v2

    .line 539
    iget-object v3, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->xmlAttributeWrapper:Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->nameSpace:Ljava/lang/String;
    invoke-static {v3}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$2200(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/seiginonakama/res/utils/ManifestMerger;->strHashCode(Ljava/lang/String;)I
    invoke-static {v3}, Lcom/seiginonakama/res/utils/ManifestMerger;->access$2400(Ljava/lang/String;)I

    move-result v3

    xor-int/2addr v1, v3

    .line 540
    mul-int v1, v1, v2

    .line 541
    iget-object v2, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeKey;->xmlAttributeWrapper:Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->rawValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$2300(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/seiginonakama/res/utils/ManifestMerger;->strHashCode(Ljava/lang/String;)I
    invoke-static {v2}, Lcom/seiginonakama/res/utils/ManifestMerger;->access$2400(Ljava/lang/String;)I

    move-result v2

    xor-int v0, v1, v2

    .line 543
    :cond_0
    return v0
.end method
