.class public final Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs hasZero([I)Z
    .locals 4
    .param p0, "args"    # [I

    .line 22
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    .line 23
    if-nez v3, :cond_0

    .line 24
    const/4 v0, 0x1

    return v0

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_1
    return v1
.end method
