.class public final Lcom/alipay/mobile/quinox/framemonitor/tool/d;
.super Ljava/util/LinkedHashMap;
.source "SizeConstrainedLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxItemCount"    # I

    .line 15
    invoke-direct {p0, p1, p1}, Lcom/alipay/mobile/quinox/framemonitor/tool/d;-><init>(II)V

    .line 16
    return-void
.end method

.method private constructor <init>(II)V
    .locals 3
    .param p1, "maxItemCount"    # I
    .param p2, "initialCapacity"    # I

    .line 19
    invoke-direct {p0, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 20
    if-ltz p1, :cond_0

    if-gt p2, p1, :cond_0

    .line 23
    iput p1, p0, Lcom/alipay/mobile/quinox/framemonitor/tool/d;->a:I

    .line 24
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxItemCount = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", initialCapacity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .param p1, "eldest"    # Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/framemonitor/tool/d;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/quinox/framemonitor/tool/d;->a:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
