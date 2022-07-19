.class public final Lcom/abq/qba/e/d;
.super Lcom/abq/qba/e/a;
.source "LibraryChunk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/abq/qba/e/d$a;
    }
.end annotation


# instance fields
.field private final e:I

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abq/qba/e/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "parent"    # Lcom/abq/qba/e/a;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/abq/qba/e/a;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/abq/qba/e/d;->f:Ljava/util/List;

    .line 41
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/d;->e:I

    .line 42
    return-void
.end method

.method private d(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/abq/qba/e/d$a;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/abq/qba/e/d;->e:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    .local v0, "result":Ljava/util/List;
    iget v1, p0, Lcom/abq/qba/e/d;->d:I

    invoke-virtual {p0}, Lcom/abq/qba/e/d;->c()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 53
    .local v2, "offset":I
    move v2, v1

    iget v3, p0, Lcom/abq/qba/e/d;->e:I

    mul-int/lit16 v3, v3, 0x104

    add-int/2addr v1, v3

    .line 55
    .local v1, "endOffset":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 56
    invoke-static {p1, v2}, Lcom/abq/qba/e/d$a;->a(Ljava/nio/ByteBuffer;I)Lcom/abq/qba/e/d$a;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit16 v2, v2, 0x104

    goto :goto_0

    .line 59
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 3
    .param p1, "output"    # Ljava/io/DataOutput;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "shrink"    # Z

    .line 76
    iget-object v0, p0, Lcom/abq/qba/e/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/abq/qba/e/d$a;

    .line 77
    .local v1, "entry":Lcom/abq/qba/e/d$a;
    invoke-virtual {v1}, Lcom/abq/qba/e/d$a;->c()[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write([B)V

    .line 78
    .end local v1    # "entry":Lcom/abq/qba/e/d$a;
    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method protected final a(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 46
    invoke-super {p0, p1}, Lcom/abq/qba/e/a;->a(Ljava/nio/ByteBuffer;)V

    .line 47
    iget-object v0, p0, Lcom/abq/qba/e/d;->f:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/abq/qba/e/d;->d(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    return-void
.end method

.method protected final b()Lcom/abq/qba/e/a$a;
    .locals 1

    .line 64
    sget-object v0, Lcom/abq/qba/e/a$a;->n:Lcom/abq/qba/e/a$a;

    return-object v0
.end method

.method protected final b(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "output"    # Ljava/nio/ByteBuffer;

    .line 69
    invoke-super {p0, p1}, Lcom/abq/qba/e/a;->b(Ljava/nio/ByteBuffer;)V

    .line 70
    iget-object v0, p0, Lcom/abq/qba/e/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 71
    return-void
.end method
