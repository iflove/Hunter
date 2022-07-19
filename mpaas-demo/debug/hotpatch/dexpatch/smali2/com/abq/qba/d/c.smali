.class public final Lcom/abq/qba/d/c;
.super Ljava/lang/Object;
.source "UnsignedBytes.java"


# direct methods
.method public static a(J)B
    .locals 5
    .param p0, "value"    # J

    .line 76
    const/16 v0, 0x8

    shr-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 80
    long-to-int v0, p0

    int-to-byte v0, v0

    return v0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(B)I
    .locals 1
    .param p0, "value"    # B

    .line 64
    and-int/lit16 v0, p0, 0xff

    return v0
.end method
