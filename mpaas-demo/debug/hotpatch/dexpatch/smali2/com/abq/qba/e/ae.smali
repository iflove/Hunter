.class public final Lcom/abq/qba/e/ae;
.super Lcom/abq/qba/e/ac;
.source "XmlStartElementChunk.java"


# instance fields
.field private e:I

.field private f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abq/qba/e/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "parent"    # Lcom/abq/qba/e/a;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/abq/qba/e/ac;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/abq/qba/e/ae;->l:Ljava/util/List;

    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/ae;->e:I

    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/ae;->f:I

    .line 59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/abq/qba/e/ae;->g:I

    .line 60
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    .line 61
    .local v3, "attributeSize":I
    move v3, v0

    const/16 v4, 0x14

    const/4 v5, 0x1

    if-ne v0, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v0, "attributeSize is wrong size. Got %s, want %s"

    invoke-static {v2, v0, v3, v4}, Lcom/abq/qba/b/b;->a(ZLjava/lang/String;II)V

    .line 63
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v1

    iput v0, p0, Lcom/abq/qba/e/ae;->h:I

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v1

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/abq/qba/e/ae;->i:I

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v1

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/abq/qba/e/ae;->j:I

    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v1

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/abq/qba/e/ae;->k:I

    .line 69
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
            "Lcom/abq/qba/e/u;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/abq/qba/e/ae;->h:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .local v0, "result":Ljava/util/List;
    iget v1, p0, Lcom/abq/qba/e/ae;->d:I

    invoke-virtual {p0}, Lcom/abq/qba/e/ae;->c()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/abq/qba/e/ae;->g:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 80
    .local v2, "offset":I
    move v2, v1

    iget v3, p0, Lcom/abq/qba/e/ae;->h:I

    mul-int/lit8 v3, v3, 0x14

    add-int/2addr v1, v3

    .line 81
    .local v1, "endOffset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 82
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    :goto_0
    if-ge v2, v1, :cond_0

    .line 85
    invoke-static {p1, p0}, Lcom/abq/qba/e/u;->a(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/ac;)Lcom/abq/qba/e/u;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v2, v2, 0x14

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 90
    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 3
    .param p1, "output"    # Ljava/io/DataOutput;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "shrink"    # Z

    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/abq/qba/e/ac;->a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V

    .line 127
    iget v0, p0, Lcom/abq/qba/e/ae;->e:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 128
    iget v0, p0, Lcom/abq/qba/e/ae;->f:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 129
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 130
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 131
    iget-object v0, p0, Lcom/abq/qba/e/ae;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-short v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 132
    iget v0, p0, Lcom/abq/qba/e/ae;->i:I

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 133
    iget v0, p0, Lcom/abq/qba/e/ae;->j:I

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 134
    iget v0, p0, Lcom/abq/qba/e/ae;->k:I

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 135
    iget-object v0, p0, Lcom/abq/qba/e/ae;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/abq/qba/e/u;

    .line 136
    .local v1, "attribute":Lcom/abq/qba/e/u;
    invoke-virtual {v1}, Lcom/abq/qba/e/u;->i()[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write([B)V

    .line 137
    .end local v1    # "attribute":Lcom/abq/qba/e/u;
    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method protected final a(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 73
    invoke-super {p0, p1}, Lcom/abq/qba/e/ac;->a(Ljava/nio/ByteBuffer;)V

    .line 74
    iget-object v0, p0, Lcom/abq/qba/e/ae;->l:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/abq/qba/e/ae;->d(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    return-void
.end method

.method protected final b()Lcom/abq/qba/e/a$a;
    .locals 1

    .line 120
    sget-object v0, Lcom/abq/qba/e/a$a;->g:Lcom/abq/qba/e/a$a;

    return-object v0
.end method

.method public final b(I)V
    .locals 0
    .param p1, "nameIndex"    # I

    .line 105
    iput p1, p0, Lcom/abq/qba/e/ae;->f:I

    .line 106
    return-void
.end method

.method public final c(I)V
    .locals 0
    .param p1, "namespaceIndex"    # I

    .line 110
    iput p1, p0, Lcom/abq/qba/e/ae;->e:I

    .line 111
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 95
    iget v0, p0, Lcom/abq/qba/e/ae;->e:I

    invoke-virtual {p0, v0}, Lcom/abq/qba/e/ae;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 100
    iget v0, p0, Lcom/abq/qba/e/ae;->f:I

    invoke-virtual {p0, v0}, Lcom/abq/qba/e/ae;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/abq/qba/e/u;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/abq/qba/e/ae;->l:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 150
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 152
    invoke-virtual {p0}, Lcom/abq/qba/e/ae;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/abq/qba/e/ae;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/abq/qba/e/ae;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/abq/qba/e/ae;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/abq/qba/e/ae;->l:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 150
    const-string v1, "XmlStartElementChunk{line=%d, comment=%s, namespace=%s, name=%s, attributes=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
