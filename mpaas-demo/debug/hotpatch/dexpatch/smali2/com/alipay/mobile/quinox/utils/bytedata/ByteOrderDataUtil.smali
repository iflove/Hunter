.class public Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;
.super Ljava/lang/Object;
.source "ByteOrderDataUtil.java"


# static fields
.field static final BYTE_127:I = 0x7f

.field static final BYTE_2:I = 0x2

.field static final BYTE_4:I = 0x4

.field static final BYTE_8:I = 0x8

.field private static BYTE_ARRAY_127_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray127Pool;

.field private static BYTE_ARRAY_2_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray2Pool;

.field private static BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;

.field private static BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray2Pool;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray2Pool;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_2_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray2Pool;

    .line 22
    new-instance v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;

    .line 23
    new-instance v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;

    .line 24
    new-instance v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray127Pool;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray127Pool;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_127_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray127Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBoolean(Ljava/io/BufferedInputStream;)Z
    .locals 1
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 28
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static readBoolean2(Ljava/io/BufferedInputStream;)Z
    .locals 1
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;

    .line 37
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readByte(Ljava/io/BufferedInputStream;)B

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static readByte(Ljava/io/BufferedInputStream;)B
    .locals 3
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;

    .line 45
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    .line 46
    .local v1, "b":I
    move v1, v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 49
    int-to-byte v0, v1

    return v0

    .line 47
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "end of the stream has been reached"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readBytes(Ljava/io/BufferedInputStream;[B)I
    .locals 4
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;
    .param p1, "buffer"    # [B

    .line 53
    invoke-virtual {p0, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    const/4 v1, 0x0

    .line 54
    .local v1, "count":I
    move v1, v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 57
    return v1

    .line 55
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "end of the stream has been reached, expect length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readBytes(Ljava/io/BufferedInputStream;[BII)I
    .locals 4
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    const/4 v1, 0x0

    .line 63
    .local v1, "count":I
    move v1, v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 67
    return v1

    .line 64
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "end of the stream has been reached, expect count "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readDouble(Ljava/io/BufferedInputStream;)D
    .locals 4
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;

    .line 135
    sget-object v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;->obtain()[B

    move-result-object v0

    .line 136
    .local v0, "BUF_LONG":[B
    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[B)I

    .line 137
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->getDouble([B)D

    move-result-wide v1

    .line 138
    .local v1, "v":D
    sget-object v3, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;->free([B)V

    .line 139
    return-wide v1
.end method

.method public static readFloat(Ljava/io/BufferedInputStream;)F
    .locals 3
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;

    .line 120
    sget-object v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;->obtain()[B

    move-result-object v0

    .line 121
    .local v0, "BUF_INT":[B
    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[B)I

    .line 122
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->getFloat([B)F

    move-result v1

    .line 123
    .local v1, "v":F
    sget-object v2, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;->free([B)V

    .line 124
    return v1
.end method

.method public static readInt(Ljava/io/BufferedInputStream;)I
    .locals 3
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;

    .line 90
    sget-object v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;->obtain()[B

    move-result-object v0

    .line 91
    .local v0, "BUF_INT":[B
    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[B)I

    .line 92
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->getInt([B)I

    move-result v1

    .line 93
    .local v1, "v":I
    sget-object v2, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;->free([B)V

    .line 94
    return v1
.end method

.method public static readLong(Ljava/io/BufferedInputStream;)J
    .locals 4
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;

    .line 105
    sget-object v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;->obtain()[B

    move-result-object v0

    .line 106
    .local v0, "BUF_LONG":[B
    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[B)I

    .line 107
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->getLong([B)J

    move-result-wide v1

    .line 108
    .local v1, "v":J
    sget-object v3, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;->free([B)V

    .line 109
    return-wide v1
.end method

.method public static readShort(Ljava/io/BufferedInputStream;)S
    .locals 3
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;

    .line 75
    sget-object v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_2_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray2Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray2Pool;->obtain()[B

    move-result-object v0

    .line 76
    .local v0, "BUF_SHORT":[B
    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[B)I

    .line 77
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->getShort([B)S

    move-result v1

    .line 78
    .local v1, "v":S
    sget-object v2, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_2_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray2Pool;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray2Pool;->free([B)V

    .line 79
    return v1
.end method

.method public static readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 152
    .local v2, "len":I
    move v2, v0

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_0
    const/16 v0, 0x7f

    const-string v3, "utf-8"

    if-le v2, v0, :cond_1

    .line 155
    new-array v0, v2, [B

    .line 156
    .local v0, "bs":[B
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 157
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 159
    .end local v0    # "bs":[B
    :cond_1
    sget-object v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_127_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray127Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray127Pool;->obtain()[B

    move-result-object v0

    .line 160
    .local v0, "BUF_STRING":[B
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 161
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v1, v4

    .line 162
    .local v1, "v":Ljava/lang/String;
    sget-object v3, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_127_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray127Pool;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray127Pool;->free([B)V

    .line 163
    return-object v1
.end method

.method public static readString2(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;

    .line 231
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 232
    .local v2, "len":I
    move v2, v0

    if-gez v0, :cond_0

    .line 233
    const/4 v0, 0x0

    return-object v0

    .line 234
    :cond_0
    if-nez v2, :cond_1

    .line 235
    const-string v0, ""

    return-object v0

    .line 236
    :cond_1
    const/16 v0, 0x7f

    if-le v2, v0, :cond_2

    .line 237
    const-class v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;

    monitor-enter v0

    .line 238
    :try_start_0
    new-array v1, v2, [B

    .line 239
    .local v1, "bs":[B
    invoke-static {p0, v1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[B)I

    .line 240
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    monitor-exit v0

    return-object v3

    .line 241
    .end local v1    # "bs":[B
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 243
    :cond_2
    sget-object v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_127_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray127Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray127Pool;->obtain()[B

    move-result-object v0

    .line 244
    .local v0, "BUF_STRING":[B
    invoke-static {p0, v0, v1, v2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[BII)I

    .line 245
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v1, v3

    .line 246
    .local v1, "v":Ljava/lang/String;
    sget-object v3, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_127_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray127Pool;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray127Pool;->free([B)V

    .line 247
    return-object v1
.end method

.method public static readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;
    .locals 4
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    .line 181
    .local v1, "len":I
    move v1, v0

    if-nez v0, :cond_0

    .line 182
    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    .line 185
    .local v0, "strArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 186
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public static readStringArray2(Ljava/io/BufferedInputStream;)[Ljava/lang/String;
    .locals 4
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;

    .line 264
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 265
    .local v2, "len":I
    move v2, v0

    if-gez v0, :cond_0

    .line 266
    const/4 v0, 0x0

    return-object v0

    .line 267
    :cond_0
    if-nez v2, :cond_1

    .line 268
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 270
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    .line 271
    .local v0, "strArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 272
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString2(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static readStringList(Ljava/io/BufferedInputStream;)Ljava/util/List;
    .locals 4
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedInputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    .line 207
    .local v1, "len":I
    move v1, v0

    if-gtz v0, :cond_0

    .line 208
    const/4 v0, 0x0

    return-object v0

    .line 210
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    .local v0, "strList":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 212
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public static readStringList2(Ljava/io/BufferedInputStream;)Ljava/util/List;
    .locals 4
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedInputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 292
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 293
    .local v2, "len":I
    move v2, v0

    if-gez v0, :cond_0

    .line 294
    const/4 v0, 0x0

    return-object v0

    .line 295
    :cond_0
    if-nez v2, :cond_1

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 298
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    .local v0, "strList":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 300
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString2(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static writeBoolean(Ljava/io/BufferedOutputStream;Z)V
    .locals 0
    .param p0, "outputStream"    # Ljava/io/BufferedOutputStream;
    .param p1, "boolValue"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 34
    return-void
.end method

.method public static writeBoolean2(Ljava/io/BufferedOutputStream;Z)V
    .locals 1
    .param p0, "outputStream"    # Ljava/io/BufferedOutputStream;
    .param p1, "boolValue"    # Z

    .line 41
    int-to-byte v0, p1

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeByte(Ljava/io/BufferedOutputStream;B)V

    .line 42
    return-void
.end method

.method public static writeByte(Ljava/io/BufferedOutputStream;B)V
    .locals 0
    .param p0, "outputStream"    # Ljava/io/BufferedOutputStream;
    .param p1, "byteValue"    # B

    .line 71
    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 72
    return-void
.end method

.method public static writeDouble(Ljava/io/BufferedOutputStream;D)V
    .locals 2
    .param p0, "outputStream"    # Ljava/io/BufferedOutputStream;
    .param p1, "doubleValue"    # D

    .line 143
    sget-object v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;->obtain()[B

    move-result-object v0

    .line 144
    .local v0, "BUF_LONG":[B
    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->putDouble(D[B)V

    .line 145
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 146
    sget-object v1, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;->free([B)V

    .line 147
    return-void
.end method

.method public static writeFloat(Ljava/io/BufferedOutputStream;F)V
    .locals 2
    .param p0, "outputStream"    # Ljava/io/BufferedOutputStream;
    .param p1, "floatValue"    # F

    .line 128
    sget-object v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;->obtain()[B

    move-result-object v0

    .line 129
    .local v0, "BUF_INT":[B
    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->putFloat(F[B)V

    .line 130
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 131
    sget-object v1, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;->free([B)V

    .line 132
    return-void
.end method

.method public static writeInt(Ljava/io/BufferedOutputStream;I)V
    .locals 2
    .param p0, "outputStream"    # Ljava/io/BufferedOutputStream;
    .param p1, "intValue"    # I

    .line 98
    sget-object v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;->obtain()[B

    move-result-object v0

    .line 99
    .local v0, "BUF_INT":[B
    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->putInt(I[B)V

    .line 100
    sget-object v1, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray4Pool;->free([B)V

    .line 101
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 102
    return-void
.end method

.method public static writeLong(Ljava/io/BufferedOutputStream;J)V
    .locals 2
    .param p0, "outputStream"    # Ljava/io/BufferedOutputStream;
    .param p1, "longValue"    # J

    .line 113
    sget-object v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;->obtain()[B

    move-result-object v0

    .line 114
    .local v0, "BUF_LONG":[B
    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->putLong(J[B)V

    .line 115
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 116
    sget-object v1, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray8Pool;->free([B)V

    .line 117
    return-void
.end method

.method public static writeShort(Ljava/io/BufferedOutputStream;S)V
    .locals 2
    .param p0, "outputStream"    # Ljava/io/BufferedOutputStream;
    .param p1, "shortValue"    # S

    .line 83
    sget-object v0, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_2_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray2Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray2Pool;->obtain()[B

    move-result-object v0

    .line 84
    .local v0, "BUF_SHORT":[B
    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderValues;->putShort(S[B)V

    .line 85
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 86
    sget-object v1, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_2_POOL:Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray2Pool;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArray2Pool;->free([B)V

    .line 87
    return-void
.end method

.method public static writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V
    .locals 2
    .param p0, "outputStream"    # Ljava/io/BufferedOutputStream;
    .param p1, "strValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 173
    .local v0, "bs":[B
    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 174
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 176
    .end local v0    # "bs":[B
    return-void

    .line 170
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void
.end method

.method public static writeString2(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V
    .locals 2
    .param p0, "outputStream"    # Ljava/io/BufferedOutputStream;
    .param p1, "strValue"    # Ljava/lang/String;

    .line 252
    if-nez p1, :cond_0

    .line 253
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    return-void

    .line 254
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 255
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    return-void

    .line 257
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 258
    .local v0, "bs":[B
    array-length v1, v0

    invoke-static {p0, v1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 259
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 261
    .end local v0    # "bs":[B
    return-void
.end method

.method public static writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V
    .locals 3
    .param p0, "outputStream"    # Ljava/io/BufferedOutputStream;
    .param p1, "strArray"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 197
    :cond_0
    array-length v1, p1

    invoke-virtual {p0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 198
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 199
    .local v2, "str":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 198
    .end local v2    # "str":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    return-void

    .line 195
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void
.end method

.method public static writeStringArray2(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V
    .locals 3
    .param p0, "outputStream"    # Ljava/io/BufferedOutputStream;
    .param p1, "strArray"    # [Ljava/lang/String;

    .line 279
    if-nez p1, :cond_0

    .line 280
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    return-void

    .line 281
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 282
    invoke-static {p0, v1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    return-void

    .line 284
    :cond_1
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 285
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 286
    .local v2, "str":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString2(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 285
    .end local v2    # "str":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_2
    return-void
.end method

.method public static writeStringList(Ljava/io/BufferedOutputStream;Ljava/util/List;)V
    .locals 2
    .param p0, "outputStream"    # Ljava/io/BufferedOutputStream;
    .param p1, "strList"    # Ljava/util/List;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedOutputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 220
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 223
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 224
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    .local v1, "str":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 226
    .end local v1    # "str":Ljava/lang/String;
    goto :goto_0

    .line 228
    :cond_1
    return-void

    .line 221
    :cond_2
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void
.end method

.method public static writeStringList2(Ljava/io/BufferedOutputStream;Ljava/util/List;)V
    .locals 2
    .param p0, "outputStream"    # Ljava/io/BufferedOutputStream;
    .param p1, "strList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedOutputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 307
    if-nez p1, :cond_0

    .line 308
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    return-void

    .line 309
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    return-void

    .line 312
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 313
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 314
    .local v1, "str":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString2(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 315
    .end local v1    # "str":Ljava/lang/String;
    goto :goto_0

    .line 317
    :cond_2
    return-void
.end method
