.class public Lcom/alipay/mobile/framework/util/HashHelper;
.super Ljava/lang/Object;
.source "HashHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs hash([Ljava/lang/Object;)I
    .locals 1
    .param p0, "values"    # [Ljava/lang/Object;

    .line 12
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static varargs hashWithSuper(I[Ljava/lang/Object;)I
    .locals 2
    .param p0, "superHashCode"    # I
    .param p1, "values"    # [Ljava/lang/Object;

    .line 8
    mul-int/lit8 v0, p0, 0x1f

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
