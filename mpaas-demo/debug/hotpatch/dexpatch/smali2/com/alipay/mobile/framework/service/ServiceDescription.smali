.class public Lcom/alipay/mobile/framework/service/ServiceDescription;
.super Lcom/alipay/mobile/framework/MicroDescription;
.source "ServiceDescription.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/framework/MicroDescription<",
        "Lcom/alipay/mobile/framework/service/ServiceDescription;",
        ">;"
    }
.end annotation


# static fields
.field public static final VERSION_SERVICE:B = 0x2t


# instance fields
.field protected mDestroyWeight:I

.field protected mInterfaceClassName:Ljava/lang/String;

.field protected mIsLazy:Z

.field protected mSurviveRegionChange:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/MicroDescription;-><init>(B)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mIsLazy:Z

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mSurviveRegionChange:Z

    .line 42
    iput v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mDestroyWeight:I

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/framework/service/ServiceDescription;
    .locals 3
    .param p1, "bis"    # Ljava/io/BufferedInputStream;

    .line 116
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 118
    iget-byte v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mFormatVersion:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 120
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readBoolean2(Ljava/io/BufferedInputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mSurviveRegionChange:Z

    .line 121
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mDestroyWeight:I

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unexpected format version = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mFormatVersion:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mInterfaceClassName:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readBoolean(Ljava/io/BufferedInputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mIsLazy:Z

    .line 126
    nop

    .line 132
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 137
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 138
    return v0

    .line 141
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 142
    return v2

    .line 144
    :cond_1
    instance-of v1, p1, Lcom/alipay/mobile/framework/service/ServiceDescription;

    if-nez v1, :cond_2

    .line 145
    return v2

    .line 148
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 149
    .local v1, "o":Lcom/alipay/mobile/framework/service/ServiceDescription;
    iget-boolean v3, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mIsLazy:Z

    iget-boolean v4, v1, Lcom/alipay/mobile/framework/service/ServiceDescription;->mIsLazy:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mSurviveRegionChange:Z

    iget-boolean v4, v1, Lcom/alipay/mobile/framework/service/ServiceDescription;->mSurviveRegionChange:Z

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mDestroyWeight:I

    iget v4, v1, Lcom/alipay/mobile/framework/service/ServiceDescription;->mDestroyWeight:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mInterfaceClassName:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/framework/service/ServiceDescription;->mInterfaceClassName:Ljava/lang/String;

    .line 152
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v0

    :cond_3
    nop

    .line 149
    return v2
.end method

.method public getDestroyWeight()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mDestroyWeight:I

    return v0
.end method

.method public getInterfaceClass()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mInterfaceClassName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 157
    invoke-super {p0}, Lcom/alipay/mobile/framework/MicroDescription;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mInterfaceClassName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mIsLazy:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mSurviveRegionChange:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mDestroyWeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/util/HashHelper;->hashWithSuper(I[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLazy()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mIsLazy:Z

    return v0
.end method

.method public isSurviveRegionChange()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mSurviveRegionChange:Z

    return v0
.end method

.method public bridge synthetic serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/framework/service/ServiceDescription;
    .locals 3
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;

    .line 96
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 98
    iget-byte v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mFormatVersion:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 100
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mSurviveRegionChange:Z

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeBoolean2(Ljava/io/BufferedOutputStream;Z)V

    .line 101
    iget v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mDestroyWeight:I

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unexpected format version = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mFormatVersion:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mInterfaceClassName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 105
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mIsLazy:Z

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 106
    nop

    .line 111
    return-object p0
.end method

.method public setDestroyWeight(I)V
    .locals 0
    .param p1, "destroyWeight"    # I

    .line 63
    iput p1, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mDestroyWeight:I

    .line 64
    return-void
.end method

.method public setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;
    .locals 0
    .param p1, "interfaceClassName"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mInterfaceClassName:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;
    .locals 0
    .param p1, "isLazy"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mIsLazy:Z

    .line 72
    return-object p0
.end method

.method public setSurviveRegionChange(Z)V
    .locals 0
    .param p1, "surviveRegionChange"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mSurviveRegionChange:Z

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceDescription{mInterfaceClassName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mInterfaceClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mIsLazy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mIsLazy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSurviveRegionChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mSurviveRegionChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDestroyWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mDestroyWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
