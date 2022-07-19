.class public final Lcom/abq/qba/d/a;
.super Ljava/lang/Object;
.source "Longs.java"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 301
    invoke-static {}, Lcom/abq/qba/d/a;->a()[B

    move-result-object v0

    sput-object v0, Lcom/abq/qba/d/a;->a:[B

    return-void
.end method

.method private static a()[B
    .locals 4

    .line 304
    const/4 v0, 0x0

    .local v0, "result":[B
    const/16 v1, 0x80

    new-array v1, v1, [B

    .line 305
    move-object v0, v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 306
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x9

    if-gt v1, v2, :cond_0

    .line 307
    add-int/lit8 v2, v1, 0x30

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    const/16 v2, 0x1a

    if-gt v1, v2, :cond_1

    .line 310
    add-int/lit8 v2, v1, 0x41

    add-int/lit8 v3, v1, 0xa

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 311
    add-int/lit8 v2, v1, 0x61

    add-int/lit8 v3, v1, 0xa

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 313
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static a(J)[B
    .locals 5
    .param p0, "value"    # J

    .line 258
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 259
    .local v1, "result":[B
    const/4 v2, 0x7

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 260
    const-wide/16 v3, 0xff

    and-long/2addr v3, p0

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    .line 261
    shr-long/2addr p0, v0

    .line 259
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 263
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method
