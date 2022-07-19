.class public abstract Lcom/abq/qba/e/z;
.super Lcom/abq/qba/e/ac;
.source "XmlNamespaceChunk.java"


# instance fields
.field private e:I

.field private f:I


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "parent"    # Lcom/abq/qba/e/a;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/abq/qba/e/ac;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/z;->e:I

    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/z;->f:I

    .line 36
    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 1
    .param p1, "output"    # Ljava/io/DataOutput;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "shrink"    # Z

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/abq/qba/e/ac;->a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V

    .line 62
    iget v0, p0, Lcom/abq/qba/e/z;->e:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 63
    iget v0, p0, Lcom/abq/qba/e/z;->f:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 64
    return-void
.end method

.method public final b(I)V
    .locals 0
    .param p1, "prefixIndex"    # I

    .line 50
    iput p1, p0, Lcom/abq/qba/e/z;->e:I

    .line 51
    return-void
.end method

.method public final c(I)V
    .locals 0
    .param p1, "uriIndex"    # I

    .line 55
    iput p1, p0, Lcom/abq/qba/e/z;->f:I

    .line 56
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 40
    iget v0, p0, Lcom/abq/qba/e/z;->e:I

    invoke-virtual {p0, v0}, Lcom/abq/qba/e/z;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 45
    iget v0, p0, Lcom/abq/qba/e/z;->f:I

    invoke-virtual {p0, v0}, Lcom/abq/qba/e/z;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{line=%d, comment=%s, prefix=%s, uri=%s}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 77
    invoke-virtual {p0}, Lcom/abq/qba/e/z;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/abq/qba/e/z;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/abq/qba/e/z;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/abq/qba/e/z;->g()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 76
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
