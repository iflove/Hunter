.class Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
.super Ljava/lang/Object;
.source "ManifestMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seiginonakama/res/utils/ManifestMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XmlNode"
.end annotation


# instance fields
.field private final attrs:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final children:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private final comment:Ljava/lang/String;

.field private endElementChunk:Lcom/abq/qba/e/y;

.field private final line:I

.field private final name:Ljava/lang/String;

.field private final namespace:Ljava/lang/String;

.field private final startElementChunk:Lcom/abq/qba/e/ae;


# direct methods
.method private constructor <init>(Lcom/abq/qba/e/ae;)V
    .locals 7
    .param p1, "startElementChunk"    # Lcom/abq/qba/e/ae;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->attrs:Ljava/util/LinkedHashMap;

    .line 323
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->children:Ljava/util/LinkedHashMap;

    .line 329
    invoke-virtual {p1}, Lcom/abq/qba/e/ae;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->name:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Lcom/abq/qba/e/ae;->h()I

    move-result v0

    iput v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->line:I

    .line 331
    invoke-virtual {p1}, Lcom/abq/qba/e/ae;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->comment:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Lcom/abq/qba/e/ae;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->namespace:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Lcom/abq/qba/e/ae;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/abq/qba/e/u;

    .line 334
    .local v1, "attribute":Lcom/abq/qba/e/u;
    iget-object v2, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->attrs:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lcom/abq/qba/e/u;->g()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct {v4, v1, v5, v6}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;-><init>(Lcom/abq/qba/e/u;ILcom/seiginonakama/res/utils/ManifestMerger$1;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .end local v1    # "attribute":Lcom/abq/qba/e/u;
    goto :goto_0

    .line 336
    :cond_0
    iput-object p1, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->startElementChunk:Lcom/abq/qba/e/ae;

    .line 337
    return-void
.end method

.method synthetic constructor <init>(Lcom/abq/qba/e/ae;Lcom/seiginonakama/res/utils/ManifestMerger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/abq/qba/e/ae;
    .param p2, "x1"    # Lcom/seiginonakama/res/utils/ManifestMerger$1;

    .line 317
    invoke-direct {p0, p1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;-><init>(Lcom/abq/qba/e/ae;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;Ljava/util/LinkedHashSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .param p1, "x1"    # Ljava/util/LinkedHashSet;

    .line 317
    invoke-direct {p0, p1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->collectOtherStrings(Ljava/util/LinkedHashSet;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .param p1, "x1"    # Ljava/util/List;

    .line 317
    invoke-direct {p0, p1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->collectNodeChunk(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;Lcom/abq/qba/e/a;Lcom/abq/qba/e/o;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .param p1, "x1"    # Lcom/abq/qba/e/a;
    .param p2, "x2"    # Lcom/abq/qba/e/o;
    .param p3, "x3"    # Ljava/util/List;

    .line 317
    invoke-direct {p0, p1, p2, p3}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->adjustStringIndex(Lcom/abq/qba/e/a;Lcom/abq/qba/e/o;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;Ljava/util/Map;Lcom/abq/qba/e/ad;)V
    .locals 0
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Lcom/abq/qba/e/ad;

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->collectResIds(Ljava/util/Map;Lcom/abq/qba/e/ad;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    .line 317
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->attrs:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    .line 317
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->children:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    .line 317
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;Lcom/abq/qba/e/y;)V
    .locals 0
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .param p1, "x1"    # Lcom/abq/qba/e/y;

    .line 317
    invoke-direct {p0, p1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->setEndElementChunk(Lcom/abq/qba/e/y;)V

    return-void
.end method

.method static synthetic access$900(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->collectResIdStrings(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private adjustStringIndex(Lcom/abq/qba/e/a;Lcom/abq/qba/e/o;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/abq/qba/e/a;",
            "Lcom/abq/qba/e/o;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->startElementChunk:Lcom/abq/qba/e/ae;

    invoke-virtual {v0, p1}, Lcom/abq/qba/e/ae;->a(Lcom/abq/qba/e/a;)V

    .line 408
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->endElementChunk:Lcom/abq/qba/e/y;

    invoke-virtual {v0, p1}, Lcom/abq/qba/e/y;->a(Lcom/abq/qba/e/a;)V

    .line 410
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/abq/qba/e/o;->a(Ljava/lang/String;)I

    move-result v0

    .line 411
    iget-object v1, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->namespace:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/abq/qba/e/o;->a(Ljava/lang/String;)I

    move-result v1

    .line 412
    iget-object v2, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->comment:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/abq/qba/e/o;->a(Ljava/lang/String;)I

    move-result v2

    .line 413
    iget-object v3, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->startElementChunk:Lcom/abq/qba/e/ae;

    invoke-virtual {v3, v0}, Lcom/abq/qba/e/ae;->b(I)V

    .line 414
    iget-object v3, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->startElementChunk:Lcom/abq/qba/e/ae;

    invoke-virtual {v3, v1}, Lcom/abq/qba/e/ae;->c(I)V

    .line 415
    iget-object v3, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->startElementChunk:Lcom/abq/qba/e/ae;

    invoke-virtual {v3, v2}, Lcom/abq/qba/e/ae;->d(I)V

    .line 416
    iget-object v3, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->endElementChunk:Lcom/abq/qba/e/y;

    invoke-virtual {v3, v0}, Lcom/abq/qba/e/y;->b(I)V

    .line 417
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->endElementChunk:Lcom/abq/qba/e/y;

    invoke-virtual {v0, v1}, Lcom/abq/qba/e/y;->c(I)V

    .line 418
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->endElementChunk:Lcom/abq/qba/e/y;

    invoke-virtual {v0, v2}, Lcom/abq/qba/e/y;->d(I)V

    .line 420
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->attrs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    .line 424
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->resId:I
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$1900(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 425
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->resId:I
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$1900(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 426
    invoke-virtual {p2, v2}, Lcom/abq/qba/e/o;->b(I)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$2000(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 427
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "can\'t find resId for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->xmlAttribute:Lcom/abq/qba/e/u;
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$1700(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Lcom/abq/qba/e/u;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 430
    :cond_1
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$2000(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/abq/qba/e/o;->a(Ljava/lang/String;)I

    move-result v2

    .line 432
    :goto_1
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->nameSpace:Ljava/lang/String;
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$2200(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/abq/qba/e/o;->a(Ljava/lang/String;)I

    move-result v3

    .line 433
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->rawValue:Ljava/lang/String;
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$2300(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/abq/qba/e/o;->a(Ljava/lang/String;)I

    move-result v4

    .line 434
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->xmlAttribute:Lcom/abq/qba/e/u;
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$1700(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Lcom/abq/qba/e/u;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/abq/qba/e/u;->b(I)V

    .line 435
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->xmlAttribute:Lcom/abq/qba/e/u;
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$1700(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Lcom/abq/qba/e/u;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/abq/qba/e/u;->a(I)V

    .line 436
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->xmlAttribute:Lcom/abq/qba/e/u;
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$1700(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Lcom/abq/qba/e/u;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/abq/qba/e/u;->c(I)V

    .line 437
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->typedString:Ljava/lang/String;
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$2100(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 438
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->typedString:Ljava/lang/String;
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$2100(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/abq/qba/e/o;->a(Ljava/lang/String;)I

    move-result v2

    .line 439
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->xmlAttribute:Lcom/abq/qba/e/u;
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$1700(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Lcom/abq/qba/e/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/abq/qba/e/u;->d()Lcom/abq/qba/e/m;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/abq/qba/e/m;->a(I)V

    .line 441
    :cond_2
    goto/16 :goto_0

    .line 443
    :cond_3
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->children:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 444
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    .line 445
    invoke-direct {v2, p1, p2, p3}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->adjustStringIndex(Lcom/abq/qba/e/a;Lcom/abq/qba/e/o;Ljava/util/List;)V

    .line 446
    goto :goto_3

    .line 447
    :cond_4
    goto :goto_2

    .line 448
    :cond_5
    return-void
.end method

.method private collectNodeChunk(Ljava/util/List;)V
    .locals 3
    .param p1, "xmlNodeList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/abq/qba/e/ac;",
            ">;)V"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->startElementChunk:Lcom/abq/qba/e/ae;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->children:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 454
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    .line 455
    invoke-direct {v2, p1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->collectNodeChunk(Ljava/util/List;)V

    .line 456
    goto :goto_1

    .line 457
    :cond_0
    goto :goto_0

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->endElementChunk:Lcom/abq/qba/e/y;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    return-void
.end method

.method private collectOtherStrings(Ljava/util/LinkedHashSet;)V
    .locals 4
    .param p1, "stringsPool"    # Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->namespace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->attrs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    .line 388
    .local v1, "attribute":Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;
    move-object v1, v2

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->resId:I
    invoke-static {v2}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$1900(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 389
    invoke-virtual {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_0
    invoke-virtual {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->nameSpace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->rawValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 393
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->typedString:Ljava/lang/String;
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$2100(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 394
    .end local v1    # "attribute":Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;
    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->children:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 396
    .local v1, "childList":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    .line 397
    invoke-direct {v3, p1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->collectOtherStrings(Ljava/util/LinkedHashSet;)V

    .line 398
    goto :goto_2

    .line 399
    .end local v1    # "childList":Ljava/util/List;
    :cond_2
    goto :goto_1

    .line 400
    :cond_3
    return-void
.end method

.method private collectResIdStrings(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "stringsPool"    # Ljava/util/List;
    .param p2, "resIds"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->attrs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    .line 363
    .local v1, "attribute":Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;
    move-object v1, v3

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->resId:I
    invoke-static {v3}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$1900(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 364
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->resId:I
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$1900(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 365
    .local v2, "index":I
    move v2, v3

    if-gez v3, :cond_0

    .line 366
    invoke-virtual {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->resId:I
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$1900(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 370
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$2000(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 371
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->xmlAttribute:Lcom/abq/qba/e/u;
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$1700(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Lcom/abq/qba/e/u;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has duplicate res id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    .end local v1    # "attribute":Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;
    .end local v2    # "index":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->children:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 377
    .local v1, "childList":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    .line 378
    invoke-direct {v3, p1, p2}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->collectResIdStrings(Ljava/util/List;Ljava/util/List;)V

    .line 379
    goto :goto_3

    .line 380
    .end local v1    # "childList":Ljava/util/List;
    :cond_4
    goto :goto_2

    .line 381
    :cond_5
    return-void
.end method

.method private collectResIds(Ljava/util/Map;Lcom/abq/qba/e/ad;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/seiginonakama/res/utils/ManifestMerger$AttrKey;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/abq/qba/e/ad;",
            ")V"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->attrs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    .line 341
    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->xmlAttribute:Lcom/abq/qba/e/u;
    invoke-static {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$1700(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Lcom/abq/qba/e/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/abq/qba/e/u;->b()I

    move-result v2

    .line 342
    const/4 v3, -0x1

    .line 343
    iget-object v4, p2, Lcom/abq/qba/e/ad;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 344
    iget-object v3, p2, Lcom/abq/qba/e/ad;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 346
    :cond_0
    new-instance v2, Lcom/seiginonakama/res/utils/ManifestMerger$AttrKey;

    invoke-virtual {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->nameSpace()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v6}, Lcom/seiginonakama/res/utils/ManifestMerger$AttrKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/seiginonakama/res/utils/ManifestMerger$1;)V

    .line 347
    # setter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->resId:I
    invoke-static {v1, v3}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->access$1902(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;I)I

    .line 348
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 349
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 350
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "duplicate attr found!, attr="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_2
    :goto_1
    goto :goto_0

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->children:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 355
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    .line 356
    invoke-direct {v2, p1, p2}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->collectResIds(Ljava/util/Map;Lcom/abq/qba/e/ad;)V

    .line 357
    goto :goto_3

    .line 358
    :cond_4
    goto :goto_2

    .line 359
    :cond_5
    return-void
.end method

.method private setEndElementChunk(Lcom/abq/qba/e/y;)V
    .locals 0
    .param p1, "endElementChunk"    # Lcom/abq/qba/e/y;

    .line 403
    iput-object p1, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->endElementChunk:Lcom/abq/qba/e/y;

    .line 404
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XmlNode{name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " nameSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
