.class public final Lcom/abq/qba/e/t;
.super Lcom/abq/qba/e/a;
.source "UnknownChunk.java"


# instance fields
.field private final e:Lcom/abq/qba/e/a$a;

.field private final f:[B

.field private final g:[B


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "parent"    # Lcom/abq/qba/e/a;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/abq/qba/e/a;-><init>(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/a;)V

    .line 38
    iget v0, p0, Lcom/abq/qba/e/t;->d:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Lcom/abq/qba/e/a$a;->a(S)Lcom/abq/qba/e/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/abq/qba/e/t;->e:Lcom/abq/qba/e/a$a;

    .line 39
    iget v0, p0, Lcom/abq/qba/e/t;->b:I

    add-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/abq/qba/e/t;->f:[B

    .line 40
    iget v1, p0, Lcom/abq/qba/e/t;->c:I

    iget v2, p0, Lcom/abq/qba/e/t;->b:I

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/abq/qba/e/t;->g:[B

    .line 41
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 43
    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 1
    .param p1, "output"    # Ljava/io/DataOutput;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "shrink"    # Z

    .line 53
    iget-object v0, p0, Lcom/abq/qba/e/t;->g:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 54
    return-void
.end method

.method protected final b()Lcom/abq/qba/e/a$a;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/abq/qba/e/t;->e:Lcom/abq/qba/e/a$a;

    return-object v0
.end method

.method protected final b(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "output"    # Ljava/nio/ByteBuffer;

    .line 47
    iget-object v0, p0, Lcom/abq/qba/e/t;->f:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 48
    return-void
.end method
