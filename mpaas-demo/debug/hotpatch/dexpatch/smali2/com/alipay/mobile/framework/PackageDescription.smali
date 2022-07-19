.class public Lcom/alipay/mobile/framework/PackageDescription;
.super Lcom/alipay/mobile/framework/MicroDescription;
.source "PackageDescription.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/framework/MicroDescription<",
        "Lcom/alipay/mobile/framework/PackageDescription;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_LAZY_BUNDLE:Ljava/lang/String; = "lazy_bundle"

.field public static final TYPE_PACKAGE_NAME:Ljava/lang/String; = "package_name"


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/MicroDescription;-><init>(B)V

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/PackageDescription;->deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/framework/PackageDescription;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/framework/PackageDescription;
    .locals 1
    .param p1, "bis"    # Ljava/io/BufferedInputStream;

    .line 67
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 69
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/PackageDescription;->a:[Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 76
    if-ne p0, p1, :cond_0

    .line 77
    const/4 v0, 0x1

    return v0

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 81
    return v1

    .line 83
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/framework/PackageDescription;

    if-nez v0, :cond_2

    .line 84
    return v1

    .line 86
    :cond_2
    const/4 v0, 0x0

    .line 87
    .local v0, "infoEqual":Z
    iget-object v1, p0, Lcom/alipay/mobile/framework/PackageDescription;->a:[Ljava/lang/String;

    if-nez v1, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/alipay/mobile/framework/PackageDescription;

    iget-object v2, v2, Lcom/alipay/mobile/framework/PackageDescription;->a:[Ljava/lang/String;

    if-nez v2, :cond_3

    .line 88
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    :cond_3
    if-eqz v1, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/alipay/mobile/framework/PackageDescription;

    iget-object v2, v2, Lcom/alipay/mobile/framework/PackageDescription;->a:[Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 90
    move-object v2, p1

    check-cast v2, Lcom/alipay/mobile/framework/PackageDescription;

    iget-object v2, v2, Lcom/alipay/mobile/framework/PackageDescription;->a:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    const/4 v0, 0x1

    .line 94
    :cond_4
    :goto_0
    return v0
.end method

.method public getInfo()[Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/framework/PackageDescription;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public getInfoSet()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 40
    .local v0, "infoSet":Ljava/util/Set;
    iget-object v1, p0, Lcom/alipay/mobile/framework/PackageDescription;->a:[Ljava/lang/String;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 41
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 42
    .local v4, "info":Ljava/lang/String;
    move-object v4, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 45
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    .end local v4    # "info":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_1
    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/PackageDescription;->serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/framework/PackageDescription;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/framework/PackageDescription;
    .locals 1
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;

    .line 58
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/framework/PackageDescription;->a:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V

    .line 62
    return-object p0
.end method

.method public setInfo([Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # [Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/framework/PackageDescription;->a:[Ljava/lang/String;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PackageDescription [mInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/framework/PackageDescription;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
