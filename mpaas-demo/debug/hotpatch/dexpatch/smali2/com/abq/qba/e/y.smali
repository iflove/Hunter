.class public final Lcom/abq/qba/e/y;
.super Lcom/abq/qba/e/ac;
.source "XmlEndElementChunk.java"


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

    iput v0, p0, Lcom/abq/qba/e/y;->e:I

    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/abq/qba/e/y;->f:I

    .line 36
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .line 40
    iget v0, p0, Lcom/abq/qba/e/y;->e:I

    invoke-virtual {p0, v0}, Lcom/abq/qba/e/y;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .line 45
    iget v0, p0, Lcom/abq/qba/e/y;->f:I

    invoke-virtual {p0, v0}, Lcom/abq/qba/e/y;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 1
    .param p1, "output"    # Ljava/io/DataOutput;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "shrink"    # Z

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/abq/qba/e/ac;->a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V

    .line 67
    iget v0, p0, Lcom/abq/qba/e/y;->e:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/abq/qba/e/y;->f:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 69
    return-void
.end method

.method protected final b()Lcom/abq/qba/e/a$a;
    .locals 1

    .line 60
    sget-object v0, Lcom/abq/qba/e/a$a;->h:Lcom/abq/qba/e/a$a;

    return-object v0
.end method

.method public final b(I)V
    .locals 0
    .param p1, "nameIndex"    # I

    .line 50
    iput p1, p0, Lcom/abq/qba/e/y;->f:I

    .line 51
    return-void
.end method

.method public final c(I)V
    .locals 0
    .param p1, "namespaceIndex"    # I

    .line 55
    iput p1, p0, Lcom/abq/qba/e/y;->e:I

    .line 56
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    invoke-virtual {p0}, Lcom/abq/qba/e/y;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/abq/qba/e/y;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0}, Lcom/abq/qba/e/y;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-direct {p0}, Lcom/abq/qba/e/y;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 81
    const-string v1, "XmlEndElementChunk{line=%d, comment=%s, namespace=%s, name=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
