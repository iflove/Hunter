.class public final Lcom/abq/qba/d/b;
.super Ljava/lang/Object;
.source "Shorts.java"


# direct methods
.method public static a(J)S
    .locals 4
    .param p0, "value"    # J

    .line 83
    long-to-int v0, p0

    int-to-short v0, v0

    const/4 v1, 0x0

    .line 84
    .local v1, "result":S
    move v1, v0

    int-to-long v2, v0

    cmp-long v0, v2, p0

    if-nez v0, :cond_0

    .line 88
    return v1

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Out of range: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
