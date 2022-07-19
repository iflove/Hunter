.class public final Lcom/abq/qba/e/k;
.super Ljava/lang/Object;
.source "ResourceString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/abq/qba/e/k$a;
    }
.end annotation


# direct methods
.method private static a(ILcom/abq/qba/e/k$a;)I
    .locals 4
    .param p0, "length"    # I
    .param p1, "type"    # Lcom/abq/qba/e/k$a;

    .line 137
    sget-object v0, Lcom/abq/qba/e/k$a;->a:Lcom/abq/qba/e/k$a;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    sget-object v3, Lcom/abq/qba/e/k$a;->a:Lcom/abq/qba/e/k$a;

    if-ne p1, v3, :cond_1

    const/16 v3, 0x80

    goto :goto_1

    :cond_1
    const v3, 0x8000

    :goto_1
    if-lt p0, v3, :cond_2

    const/4 v1, 0x2

    :cond_2
    mul-int v0, v0, v1

    return v0
.end method

.method private static a(Ljava/nio/ByteBuffer;I)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 148
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/abq/qba/d/c;->a(B)I

    move-result v0

    const/4 v1, 0x0

    .line 149
    .local v1, "length":I
    move v1, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 150
    and-int/lit8 v0, v1, 0x7f

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/abq/qba/d/c;->a(B)I

    move-result v2

    or-int v1, v0, v2

    .line 152
    :cond_0
    return v1
.end method

.method public static a(Ljava/nio/ByteBuffer;ILcom/abq/qba/e/k$a;)Ljava/lang/String;
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "type"    # Lcom/abq/qba/e/k$a;

    .line 70
    invoke-static {p0, p1, p2}, Lcom/abq/qba/e/k;->b(Ljava/nio/ByteBuffer;ILcom/abq/qba/e/k$a;)I

    move-result v0

    .line 71
    .local v0, "characterCount":I
    invoke-static {v0, p2}, Lcom/abq/qba/e/k;->a(ILcom/abq/qba/e/k$a;)I

    move-result v1

    add-int/2addr p1, v1

    .line 74
    sget-object v1, Lcom/abq/qba/e/k$a;->a:Lcom/abq/qba/e/k$a;

    if-ne p2, v1, :cond_0

    .line 75
    invoke-static {p0, p1, p2}, Lcom/abq/qba/e/k;->b(Ljava/nio/ByteBuffer;ILcom/abq/qba/e/k$a;)I

    move-result v1

    .line 76
    .local v1, "length":I
    invoke-static {v1, p2}, Lcom/abq/qba/e/k;->a(ILcom/abq/qba/e/k$a;)I

    move-result v2

    add-int/2addr p1, v2

    goto :goto_0

    .line 78
    .end local v1    # "length":I
    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 80
    .restart local v1    # "length":I
    :goto_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p2}, Lcom/abq/qba/e/k$a;->a()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, p1, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2
.end method

.method private static a(Lcom/abq/qba/c/a;ILcom/abq/qba/e/k$a;)V
    .locals 3
    .param p0, "output"    # Lcom/abq/qba/c/a;
    .param p1, "length"    # I
    .param p2, "type"    # Lcom/abq/qba/e/k$a;

    .line 114
    if-gez p1, :cond_0

    .line 115
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/abq/qba/c/a;->write(I)V

    .line 116
    return-void

    .line 118
    :cond_0
    sget-object v0, Lcom/abq/qba/e/k$a;->a:Lcom/abq/qba/e/k$a;

    if-ne p2, v0, :cond_2

    .line 119
    const/16 v0, 0x7f

    if-le p1, v0, :cond_1

    .line 120
    and-int/lit16 v0, p1, 0x7f00

    shr-int/lit8 v0, v0, 0x8

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Lcom/abq/qba/c/a;->write(I)V

    .line 122
    :cond_1
    and-int/lit16 v0, p1, 0xff

    invoke-interface {p0, v0}, Lcom/abq/qba/c/a;->write(I)V

    return-void

    .line 125
    :cond_2
    const/16 v0, 0x7fff

    const v1, 0xff00

    if-le p1, v0, :cond_3

    .line 126
    const/high16 v0, 0x7fff0000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x10

    const v2, 0x8000

    or-int/2addr v0, v2

    .line 127
    .local v0, "highBytes":I
    and-int/lit16 v2, v0, 0xff

    invoke-interface {p0, v2}, Lcom/abq/qba/c/a;->write(I)V

    .line 128
    and-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x8

    invoke-interface {p0, v2}, Lcom/abq/qba/c/a;->write(I)V

    .line 130
    .end local v0    # "highBytes":I
    :cond_3
    const v0, 0xffff

    and-int/2addr v0, p1

    .line 131
    .local v0, "lowBytes":I
    and-int/lit16 v2, v0, 0xff

    invoke-interface {p0, v2}, Lcom/abq/qba/c/a;->write(I)V

    .line 132
    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x8

    invoke-interface {p0, v1}, Lcom/abq/qba/c/a;->write(I)V

    .line 134
    .end local v0    # "lowBytes":I
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/abq/qba/e/k$a;)[B
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/abq/qba/e/k$a;

    .line 96
    invoke-virtual {p1}, Lcom/abq/qba/e/k$a;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 98
    .local v2, "bytes":[B
    move-object v2, v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    invoke-static {v0}, Lcom/abq/qba/c/b;->a(I)Lcom/abq/qba/c/a;

    move-result-object v0

    .line 99
    .local v1, "output":Lcom/abq/qba/c/a;
    move-object v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3, p1}, Lcom/abq/qba/e/k;->a(Lcom/abq/qba/c/a;ILcom/abq/qba/e/k$a;)V

    .line 100
    sget-object v0, Lcom/abq/qba/e/k$a;->a:Lcom/abq/qba/e/k$a;

    if-ne p1, v0, :cond_0

    .line 101
    array-length v0, v2

    invoke-static {v1, v0, p1}, Lcom/abq/qba/e/k;->a(Lcom/abq/qba/c/a;ILcom/abq/qba/e/k$a;)V

    .line 103
    :cond_0
    invoke-interface {v1, v2}, Lcom/abq/qba/c/a;->write([B)V

    .line 105
    sget-object v0, Lcom/abq/qba/e/k$a;->a:Lcom/abq/qba/e/k$a;

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 106
    invoke-interface {v1, v3}, Lcom/abq/qba/c/a;->write(I)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {v1, v3}, Lcom/abq/qba/c/a;->writeShort(I)V

    .line 110
    :goto_0
    invoke-interface {v1}, Lcom/abq/qba/c/a;->a()[B

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/nio/ByteBuffer;I)I
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 159
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v2, 0x0

    .line 160
    .local v2, "length":I
    move v2, v0

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    .line 161
    and-int/lit16 v0, v2, 0x7fff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    and-int/2addr v1, v3

    or-int v2, v0, v1

    .line 163
    :cond_0
    return v2
.end method

.method private static b(Ljava/nio/ByteBuffer;ILcom/abq/qba/e/k$a;)I
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "type"    # Lcom/abq/qba/e/k$a;

    .line 141
    sget-object v0, Lcom/abq/qba/e/k$a;->a:Lcom/abq/qba/e/k$a;

    if-ne p2, v0, :cond_0

    invoke-static {p0, p1}, Lcom/abq/qba/e/k;->a(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/abq/qba/e/k;->b(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method
