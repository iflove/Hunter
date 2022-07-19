.class public Lcom/alipay/mobile/framework/pipeline/ValveDescription;
.super Lcom/alipay/mobile/framework/MicroDescription;
.source "ValveDescription.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/framework/MicroDescription<",
        "Lcom/alipay/mobile/framework/pipeline/ValveDescription;",
        ">;"
    }
.end annotation


# instance fields
.field protected mPipelineName:Ljava/lang/String;

.field protected mThreadName:Ljava/lang/String;

.field protected mWeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/MicroDescription;-><init>(B)V

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    .locals 1
    .param p1, "bis"    # Ljava/io/BufferedInputStream;

    .line 86
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 88
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mPipelineName:Ljava/lang/String;

    .line 89
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mThreadName:Ljava/lang/String;

    .line 90
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mWeight:I

    .line 92
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 98
    return v0

    .line 101
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 102
    return v2

    .line 104
    :cond_1
    instance-of v1, p1, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    if-nez v1, :cond_2

    .line 105
    return v2

    .line 107
    :cond_2
    const/4 v1, 0x0

    .line 108
    .local v1, "pipelineNameEqual":Z
    const/4 v3, 0x0

    .line 109
    .local v3, "threadNameEqual":Z
    const/4 v4, 0x0

    .line 110
    .local v4, "weightEqual":Z
    iget-object v5, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mPipelineName:Ljava/lang/String;

    if-nez v5, :cond_3

    move-object v6, p1

    check-cast v6, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    iget-object v6, v6, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mPipelineName:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 111
    const/4 v1, 0x1

    goto :goto_0

    .line 112
    :cond_3
    if-eqz v5, :cond_4

    move-object v6, p1

    check-cast v6, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    iget-object v6, v6, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mPipelineName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 113
    const/4 v1, 0x1

    .line 115
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mThreadName:Ljava/lang/String;

    if-nez v5, :cond_5

    move-object v6, p1

    check-cast v6, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    iget-object v6, v6, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mThreadName:Ljava/lang/String;

    if-nez v6, :cond_5

    .line 116
    const/4 v3, 0x1

    goto :goto_1

    .line 117
    :cond_5
    if-eqz v5, :cond_6

    move-object v6, p1

    check-cast v6, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    iget-object v6, v6, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mThreadName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 118
    const/4 v3, 0x1

    .line 120
    :cond_6
    :goto_1
    iget v5, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mWeight:I

    move-object v6, p1

    check-cast v6, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    iget v6, v6, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mWeight:I

    if-ne v5, v6, :cond_7

    .line 121
    const/4 v4, 0x1

    .line 123
    :cond_7
    if-eqz v1, :cond_8

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    return v0

    :cond_8
    return v2
.end method

.method public getPipelineName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mPipelineName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mThreadName:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mWeight:I

    return v0
.end method

.method public bridge synthetic serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    .locals 1
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;

    .line 72
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mPipelineName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mThreadName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mWeight:I

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 81
    return-object p0
.end method

.method public setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    .locals 0
    .param p1, "pipelineName"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mPipelineName:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    .locals 0
    .param p1, "threadName"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mThreadName:Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public setWeight(I)Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    .locals 0
    .param p1, "weight"    # I

    .line 36
    iput p1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mWeight:I

    .line 37
    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValveDescription (mClassName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mThreadName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValveDescription [mPipelineName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mPipelineName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mThreadName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mClassLoader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
