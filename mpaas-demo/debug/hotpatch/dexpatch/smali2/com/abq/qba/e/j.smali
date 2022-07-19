.class public final Lcom/abq/qba/e/j;
.super Ljava/lang/Object;
.source "ResourceFile.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abq/qba/e/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([B)V
    .locals 3
    .param p1, "buf"    # [B

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/abq/qba/e/j;->a:Ljava/util/List;

    .line 37
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 38
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/abq/qba/e/j;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/abq/qba/e/a;->c(Ljava/nio/ByteBuffer;)Lcom/abq/qba/e/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/abq/qba/e/j;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .line 52
    invoke-static {p0}, Lcom/abq/qba/c/b;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 53
    .local v0, "buf":[B
    new-instance v1, Lcom/abq/qba/e/j;

    invoke-direct {v1, v0}, Lcom/abq/qba/e/j;-><init>([B)V

    return-object v1
.end method

.method private a(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "output"    # Ljava/io/OutputStream;

    .line 74
    iget-object v0, p0, Lcom/abq/qba/e/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/abq/qba/e/a;

    .line 75
    .local v1, "chunk":Lcom/abq/qba/e/a;
    invoke-virtual {v1}, Lcom/abq/qba/e/a;->e()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 76
    .end local v1    # "chunk":Lcom/abq/qba/e/a;
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 78
    return-void
.end method

.method private c()[B
    .locals 2

    .line 68
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 69
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0}, Lcom/abq/qba/e/j;->a(Ljava/io/OutputStream;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/abq/qba/e/a;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/abq/qba/e/j;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b()[B
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/abq/qba/e/j;->c()[B

    move-result-object v0

    return-object v0
.end method
