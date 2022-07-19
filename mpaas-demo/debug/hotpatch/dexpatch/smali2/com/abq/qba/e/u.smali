.class public abstract Lcom/abq/qba/e/u;
.super Ljava/lang/Object;
.source "XmlAttribute.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;Lcom/abq/qba/e/ac;)Lcom/abq/qba/e/u;
    .locals 11
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "parent"    # Lcom/abq/qba/e/ac;

    .line 74
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 75
    .local v6, "namespace":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 76
    .local v7, "name":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 77
    .local v8, "rawValue":I
    invoke-static {p0}, Lcom/abq/qba/e/m;->a(Ljava/nio/ByteBuffer;)Lcom/abq/qba/e/m;

    move-result-object v9

    .line 78
    .local v9, "typedValue":Lcom/abq/qba/e/m;
    new-instance v10, Lcom/abq/qba/e/v;

    move-object v0, v10

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/abq/qba/e/v;-><init>(IIILcom/abq/qba/e/m;Lcom/abq/qba/e/ac;)V

    return-object v10
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(I)V
.end method

.method public abstract b()I
.end method

.method public abstract b(I)V
.end method

.method public abstract c()I
.end method

.method public abstract c(I)V
.end method

.method public abstract d()Lcom/abq/qba/e/m;
.end method

.method public final d(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 82
    invoke-virtual {p0}, Lcom/abq/qba/e/u;->e()Lcom/abq/qba/e/ac;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/abq/qba/e/ac;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Lcom/abq/qba/e/ac;
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/abq/qba/e/u;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/abq/qba/e/u;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/abq/qba/e/u;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/abq/qba/e/u;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/abq/qba/e/u;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/abq/qba/e/u;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()[B
    .locals 3

    .line 92
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    move-object v1, v0

    invoke-virtual {p0}, Lcom/abq/qba/e/u;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 94
    invoke-virtual {p0}, Lcom/abq/qba/e/u;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {p0}, Lcom/abq/qba/e/u;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 96
    invoke-virtual {p0}, Lcom/abq/qba/e/u;->d()Lcom/abq/qba/e/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/abq/qba/e/m;->e()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 108
    invoke-virtual {p0}, Lcom/abq/qba/e/u;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 109
    .local v1, "value":Ljava/lang/String;
    move-object v1, v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/abq/qba/e/u;->d()Lcom/abq/qba/e/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/abq/qba/e/u;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/abq/qba/e/u;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 112
    const-string v2, "XmlAttribute{namespace=%s, name=%s, value=%s}"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
