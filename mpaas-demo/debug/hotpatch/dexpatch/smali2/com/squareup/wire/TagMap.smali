.class abstract Lcom/squareup/wire/TagMap;
.super Ljava/lang/Object;
.source "TagMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/TagMap$Sparse;,
        Lcom/squareup/wire/TagMap$Compact;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final RATIO_THRESHOLD:F = 0.75f

.field private static final SIZE_THRESHOLD:I = 0x40


# instance fields
.field values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/squareup/wire/TagMap$1;

    invoke-direct {v0}, Lcom/squareup/wire/TagMap$1;-><init>()V

    sput-object v0, Lcom/squareup/wire/TagMap;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/squareup/wire/TagMap;, "Lcom/squareup/wire/TagMap<TT;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/squareup/wire/TagMap;->sortedValues(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/TagMap;->values:Ljava/util/List;

    .line 72
    return-void
.end method

.method private static isCompact(II)Z
    .locals 2
    .param p0, "size"    # I
    .param p1, "maxTag"    # I

    .line 46
    const/16 v0, 0x40

    if-le p1, v0, :cond_1

    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static maxTag(Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;)I"
        }
    .end annotation

    .line 50
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;TT;>;"
    const/4 v0, -0x1

    .line 51
    .local v0, "maxTag":I
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 52
    .local v2, "tag":I
    if-le v2, v0, :cond_0

    .line 53
    move v0, v2

    .line 55
    .end local v2    # "tag":I
    :cond_0
    goto :goto_0

    .line 56
    :cond_1
    return v0
.end method

.method public static of(Ljava/util/Map;)Lcom/squareup/wire/TagMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;)",
            "Lcom/squareup/wire/TagMap<",
            "TT;>;"
        }
    .end annotation

    .line 37
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;TT;>;"
    invoke-static {p0}, Lcom/squareup/wire/TagMap;->maxTag(Ljava/util/Map;)I

    move-result v0

    .line 38
    .local v0, "maxTag":I
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1, v0}, Lcom/squareup/wire/TagMap;->isCompact(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {p0, v0}, Lcom/squareup/wire/TagMap$Compact;->compactTagMapOf(Ljava/util/Map;I)Lcom/squareup/wire/TagMap$Compact;

    move-result-object v1

    return-object v1

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/squareup/wire/TagMap$Sparse;->sparseTagMapOf(Ljava/util/Map;)Lcom/squareup/wire/TagMap$Sparse;

    move-result-object v1

    return-object v1
.end method

.method private static sortedValues(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 60
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;TT;>;"
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/squareup/wire/TagMap;->COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 61
    .local v0, "entries":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/util/Map$Entry<Ljava/lang/Integer;TT;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v1, "sortedValues":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 65
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TT;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TT;>;"
    goto :goto_0

    .line 67
    :cond_0
    return-object v1
.end method


# virtual methods
.method public abstract containsKey(I)Z
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/squareup/wire/TagMap;, "Lcom/squareup/wire/TagMap<TT;>;"
    iget-object v0, p0, Lcom/squareup/wire/TagMap;->values:Ljava/util/List;

    return-object v0
.end method
