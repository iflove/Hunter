.class public abstract Lcom/alipay/mobile/framework/MicroDescription;
.super Ljava/lang/Object;
.source "MicroDescription.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alipay/mobile/framework/MicroDescription<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected mClassLoader:Ljava/lang/ClassLoader;

.field protected mClassName:Ljava/lang/String;

.field protected mFormatVersion:B

.field protected mName:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(B)V
    .locals 1
    .param p1, "format"    # B

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->mFormatVersion:B

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->a:Ljava/lang/Class;

    .line 40
    iput-byte p1, p0, Lcom/alipay/mobile/framework/MicroDescription;->mFormatVersion:B

    .line 41
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 1
    .param p1, "bis"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedInputStream;",
            ")TT;"
        }
    .end annotation

    .line 104
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readByte(Ljava/io/BufferedInputStream;)B

    move-result v0

    iput-byte v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->mFormatVersion:B

    .line 105
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->mClassName:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/MicroDescription;->self()Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 111
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 112
    return v0

    .line 115
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobile/framework/MicroDescription;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 116
    return v2

    .line 119
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/framework/MicroDescription;

    .line 120
    .local v1, "o":Lcom/alipay/mobile/framework/MicroDescription;
    iget-object v3, p0, Lcom/alipay/mobile/framework/MicroDescription;->mClassName:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/framework/MicroDescription;->mClassName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/framework/MicroDescription;->mName:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/framework/MicroDescription;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getClazz()Ljava/lang/Class;
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->a:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/MicroDescription;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/MicroDescription;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/MicroDescription;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->a:Ljava/lang/Class;

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/ClassNotFoundException;

    const-string v1, "classloader is null. please setClassLoader() first"

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public getFormatVersion()B
    .locals 1

    .line 53
    iget-byte v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->mFormatVersion:B

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/mobile/framework/MicroDescription;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alipay/mobile/framework/MicroDescription;->mClassName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/alipay/mobile/framework/util/HashHelper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected self()Lcom/alipay/mobile/framework/MicroDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 49
    return-object p0
.end method

.method public serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 1
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedOutputStream;",
            ")TT;"
        }
    .end annotation

    .line 97
    iget-byte v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->mFormatVersion:B

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeByte(Ljava/io/BufferedOutputStream;B)V

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->mClassName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/MicroDescription;->self()Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v0

    return-object v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/framework/MicroDescription;->mClassLoader:Ljava/lang/ClassLoader;

    .line 77
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/MicroDescription;->self()Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/framework/MicroDescription;->mClassName:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/MicroDescription;->self()Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v0

    return-object v0
.end method

.method public setFormatVersion(B)V
    .locals 0
    .param p1, "formatVersion"    # B

    .line 57
    iput-byte p1, p0, Lcom/alipay/mobile/framework/MicroDescription;->mFormatVersion:B

    .line 58
    return-void
.end method

.method public setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/framework/MicroDescription;->mName:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/MicroDescription;->self()Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v0

    return-object v0
.end method
