.class Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;
.super Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArrayPool;
.source "ByteArrayPools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteArray4Pool"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArrayPool;-><init>(Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;->newObject()[B

    move-result-object v0

    return-object v0
.end method

.method protected newObject()[B
    .locals 1

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [B

    return-object v0
.end method
