.class public abstract Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool$Poolable;
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


# instance fields
.field protected final freeObjects:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final max:I

.field public peak:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    const/16 v0, 0x10

    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;-><init>(II)V

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 21
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;-><init>(II)V

    .line 22
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->freeObjects:Ljava/util/ArrayDeque;

    .line 27
    iput p2, p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->max:I

    .line 28
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 67
    return-void
.end method

.method public free(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    if-eqz p1, :cond_2

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->max:I

    if-ge v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 44
    iget v0, p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->peak:I

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->peak:I

    .line 46
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool$Poolable;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool$Poolable;

    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool$Poolable;->reset()V

    .line 47
    :cond_1
    return-void

    .line 41
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public freeAll(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    if-eqz p1, :cond_4

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->freeObjects:Ljava/util/ArrayDeque;

    .line 54
    iget v1, p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->max:I

    .line 55
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 56
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 57
    if-nez v3, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    if-ge v4, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    instance-of v4, v3, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool$Poolable;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool$Poolable;

    invoke-interface {v3}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool$Poolable;->reset()V

    .line 55
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_3
    iget p1, p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->peak:I

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->peak:I

    .line 62
    return-void

    .line 52
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFree()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method protected abstract newObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public obtain()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->newObject()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
