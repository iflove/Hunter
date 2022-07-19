.class public final Lcom/abq/qba/e/w;
.super Lcom/abq/qba/e/ac;
.source "XmlCdataChunk.java"


# instance fields
.field private final e:I

.field private final f:Lcom/abq/qba/e/m;


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

    iput v0, p0, Lcom/abq/qba/e/w;->e:I

    .line 35
    invoke-static {p1}, Lcom/abq/qba/e/m;->a(Ljava/nio/ByteBuffer;)Lcom/abq/qba/e/m;

    move-result-object v0

    iput-object v0, p0, Lcom/abq/qba/e/w;->f:Lcom/abq/qba/e/m;

    .line 36
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .line 40
    iget v0, p0, Lcom/abq/qba/e/w;->e:I

    invoke-virtual {p0, v0}, Lcom/abq/qba/e/w;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 1
    .param p1, "output"    # Ljava/io/DataOutput;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "shrink"    # Z

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/abq/qba/e/ac;->a(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V

    .line 57
    iget v0, p0, Lcom/abq/qba/e/w;->e:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 58
    iget-object v0, p0, Lcom/abq/qba/e/w;->f:Lcom/abq/qba/e/m;

    invoke-virtual {v0}, Lcom/abq/qba/e/m;->d()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 59
    return-void
.end method

.method protected final b()Lcom/abq/qba/e/a$a;
    .locals 1

    .line 50
    sget-object v0, Lcom/abq/qba/e/a$a;->i:Lcom/abq/qba/e/a$a;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Lcom/abq/qba/e/w;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/abq/qba/e/w;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0}, Lcom/abq/qba/e/w;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 69
    const-string v1, "XmlCdataChunk{line=%d, comment=%s, value=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
