.class public abstract Lcom/alipay/mobile/quinox/utils/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/utils/Pool$Poolable;
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

    .line 25
    const/16 v0, 0x10

    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/quinox/utils/Pool;-><init>(II)V

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 30
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/quinox/utils/Pool;-><init>(II)V

    .line 31
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "max"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/Pool;->freeObjects:Ljava/util/ArrayDeque;

    .line 36
    iput p2, p0, Lcom/alipay/mobile/quinox/utils/Pool;->max:I

    .line 37
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 76
    return-void
.end method

.method public free(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 50
    if-eqz p1, :cond_2

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/quinox/utils/Pool;->max:I

    if-ge v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 53
    iget v0, p0, Lcom/alipay/mobile/quinox/utils/Pool;->peak:I

    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/quinox/utils/Pool;->peak:I

    .line 55
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobile/quinox/utils/Pool$Poolable;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/quinox/utils/Pool$Poolable;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/utils/Pool$Poolable;->reset()V

    .line 56
    :cond_1
    return-void

    .line 50
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public freeAll(Ljava/util/List;)V
    .locals 5
    .param p1, "objects"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 61
    if-eqz p1, :cond_3

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/Pool;->freeObjects:Ljava/util/ArrayDeque;

    .line 63
    .local v0, "freeObjects":Ljava/util/ArrayDeque;
    iget v1, p0, Lcom/alipay/mobile/quinox/utils/Pool;->max:I

    .line 64
    .local v1, "max":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 65
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 66
    .local v3, "object":Ljava/lang/Object;
    move-object v3, v4

    if-eqz v4, :cond_1

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    if-ge v4, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    instance-of v4, v3, Lcom/alipay/mobile/quinox/utils/Pool$Poolable;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/alipay/mobile/quinox/utils/Pool$Poolable;

    invoke-interface {v4}, Lcom/alipay/mobile/quinox/utils/Pool$Poolable;->reset()V

    .line 64
    .end local v3    # "object":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v2    # "i":I
    :cond_2
    iget v2, p0, Lcom/alipay/mobile/quinox/utils/Pool;->peak:I

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/quinox/utils/Pool;->peak:I

    .line 71
    return-void

    .line 61
    .end local v0    # "freeObjects":Ljava/util/ArrayDeque;
    .end local v1    # "max":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFree()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/Pool;->freeObjects:Ljava/util/ArrayDeque;

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

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/utils/Pool;->newObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
