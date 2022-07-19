.class public Lcom/alipay/mobile/base/config/model/ConfigMD5;
.super Ljava/lang/Object;
.source "ConfigMD5.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# instance fields
.field public name:Ljava/lang/String;

.field public updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 15
    instance-of v0, p1, Lcom/alipay/mobile/base/config/model/ConfigMD5;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 16
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/base/config/model/ConfigMD5;

    iget-wide v2, v0, Lcom/alipay/mobile/base/config/model/ConfigMD5;->updateTime:J

    iget-wide v4, p0, Lcom/alipay/mobile/base/config/model/ConfigMD5;->updateTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    move-wide v6, v4

    .line 17
    .local v6, "l":J
    move-wide v6, v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, -0x1

    return v0

    .line 19
    .end local v6    # "l":J
    :cond_2
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 32
    instance-of v0, p1, Lcom/alipay/mobile/base/config/model/ConfigMD5;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/base/config/model/ConfigMD5;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/base/config/model/ConfigMD5;->name:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/base/config/model/ConfigMD5;

    iget-object v1, v1, Lcom/alipay/mobile/base/config/model/ConfigMD5;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 36
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/base/config/model/ConfigMD5;

    iget-object v0, v0, Lcom/alipay/mobile/base/config/model/ConfigMD5;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 39
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/base/config/model/ConfigMD5;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/base/config/model/ConfigMD5;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 27
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
