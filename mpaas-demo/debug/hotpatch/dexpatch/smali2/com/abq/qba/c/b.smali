.class public final Lcom/abq/qba/c/b;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/abq/qba/c/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 589
    new-instance v0, Lcom/abq/qba/c/b$1;

    invoke-direct {v0}, Lcom/abq/qba/c/b$1;-><init>()V

    sput-object v0, Lcom/abq/qba/c/b;->a:Ljava/io/OutputStream;

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 7
    .param p0, "from"    # Ljava/io/InputStream;
    .param p1, "to"    # Ljava/io/OutputStream;

    .line 96
    invoke-static {p0}, Lcom/abq/qba/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {p1}, Lcom/abq/qba/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {}, Lcom/abq/qba/c/b;->a()[B

    move-result-object v0

    .line 99
    .local v0, "buf":[B
    const-wide/16 v1, 0x0

    .local v1, "total":J
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 101
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 102
    .local v4, "r":I
    move v4, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 105
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 106
    int-to-long v5, v4

    add-long/2addr v1, v5

    .line 107
    .end local v4    # "r":I
    goto :goto_0

    .line 108
    :cond_0
    return-wide v1
.end method

.method public static a(I)Lcom/abq/qba/c/a;
    .locals 4
    .param p0, "size"    # I

    .line 424
    if-ltz p0, :cond_0

    .line 427
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v0}, Lcom/abq/qba/c/b;->a(Ljava/io/ByteArrayOutputStream;)Lcom/abq/qba/c/a;

    move-result-object v0

    return-object v0

    .line 425
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Invalid size: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;)Lcom/abq/qba/c/a;
    .locals 2
    .param p0, "byteArrayOutputSteam"    # Ljava/io/ByteArrayOutputStream;

    .line 443
    new-instance v0, Lcom/abq/qba/c/b$a;

    invoke-static {p0}, Lcom/abq/qba/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lcom/abq/qba/c/b$a;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-object v0
.end method

.method private static a()[B
    .locals 1

    .line 51
    const/16 v0, 0x2000

    new-array v0, v0, [B

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;

    .line 160
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    const/16 v2, 0x20

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 161
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/abq/qba/c/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 162
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
