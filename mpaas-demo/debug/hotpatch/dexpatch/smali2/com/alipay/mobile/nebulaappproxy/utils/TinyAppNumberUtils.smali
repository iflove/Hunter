.class public final Lcom/alipay/mobile/nebulaappproxy/utils/TinyAppNumberUtils;
.super Ljava/lang/Object;
.source "TinyAppNumberUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyAppNumberUtils;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .line 11
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    return p1
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .line 18
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyAppNumberUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong(Ljava/lang/String;J)J
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defValue"    # J

    .line 23
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    return-wide p1
.end method
