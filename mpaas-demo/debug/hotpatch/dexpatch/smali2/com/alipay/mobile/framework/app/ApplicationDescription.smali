.class public Lcom/alipay/mobile/framework/app/ApplicationDescription;
.super Lcom/alipay/mobile/framework/MicroDescription;
.source "ApplicationDescription.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/framework/MicroDescription<",
        "Lcom/alipay/mobile/framework/app/ApplicationDescription;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAppId:Ljava/lang/String;

.field protected mEngineType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/MicroDescription;-><init>(B)V

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .locals 1
    .param p1, "bis"    # Ljava/io/BufferedInputStream;

    .line 81
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 83
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mAppId:Ljava/lang/String;

    .line 84
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mEngineType:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 91
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 92
    return v0

    .line 95
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 96
    return v2

    .line 98
    :cond_1
    instance-of v1, p1, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    if-nez v1, :cond_2

    .line 99
    return v2

    .line 101
    :cond_2
    const/4 v1, 0x0

    .line 102
    .local v1, "appIdEqual":Z
    const/4 v3, 0x0

    .line 103
    .local v3, "engineTypeEqual":Z
    iget-object v4, p0, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mAppId:Ljava/lang/String;

    if-nez v4, :cond_3

    move-object v5, p1

    check-cast v5, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    iget-object v5, v5, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mAppId:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 104
    const/4 v1, 0x1

    goto :goto_0

    .line 105
    :cond_3
    if-eqz v4, :cond_4

    move-object v5, p1

    check-cast v5, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    iget-object v5, v5, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mAppId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 106
    const/4 v1, 0x1

    .line 108
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mEngineType:Ljava/lang/String;

    if-nez v4, :cond_5

    move-object v5, p1

    check-cast v5, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    iget-object v5, v5, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mEngineType:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 109
    const/4 v3, 0x1

    goto :goto_1

    .line 110
    :cond_5
    if-eqz v4, :cond_6

    move-object v5, p1

    check-cast v5, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    iget-object v5, v5, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mEngineType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 111
    const/4 v3, 0x1

    .line 113
    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    if-eqz v3, :cond_7

    return v0

    :cond_7
    return v2
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getEngineType()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mEngineType:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .locals 1
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;

    .line 69
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mAppId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mEngineType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 76
    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mAppId:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public setEngineType(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .locals 0
    .param p1, "engineType"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mEngineType:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApplicationDescription [mAppId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mEngineType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mEngineType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mClassLoader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ApplicationDescription;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
