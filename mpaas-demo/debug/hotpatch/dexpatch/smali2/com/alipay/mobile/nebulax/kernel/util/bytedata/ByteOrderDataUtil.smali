.class public Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;
.super Ljava/lang/Object;
.source "ByteOrderDataUtil.java"


# static fields
.field static final BYTE_127:I = 0x7f

.field static final BYTE_2:I = 0x2

.field static final BYTE_4:I = 0x4

.field static final BYTE_8:I = 0x8

.field private static BYTE_ARRAY_127_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray127Pool;

.field private static BYTE_ARRAY_2_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray2Pool;

.field private static BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;

.field private static BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray2Pool;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray2Pool;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_2_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray2Pool;

    .line 17
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;

    .line 18
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;

    .line 19
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray127Pool;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray127Pool;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_127_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray127Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBoolean(Ljava/io/BufferedInputStream;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static readBoolean2(Ljava/io/BufferedInputStream;)Z
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readByte(Ljava/io/BufferedInputStream;)B

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static readByte(Ljava/io/BufferedInputStream;)B
    .locals 1

    .line 40
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result p0

    .line 41
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 44
    int-to-byte p0, p0

    return p0

    .line 42
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "end of the stream has been reached"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readBytes(Ljava/io/BufferedInputStream;[B)I
    .locals 3

    .line 48
    invoke-virtual {p0, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result p0

    .line 49
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 52
    return p0

    .line 50
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end of the stream has been reached, expect length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readBytes(Ljava/io/BufferedInputStream;[BII)I
    .locals 1

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p0

    .line 58
    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    .line 62
    return p0

    .line 59
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "end of the stream has been reached, expect count "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " but got "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static readDouble(Ljava/io/BufferedInputStream;)D
    .locals 3

    .line 130
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;->obtain()[B

    move-result-object v0

    .line 131
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[B)I

    .line 132
    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderValues;->getDouble([B)D

    move-result-wide v1

    .line 133
    sget-object p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;->free([B)V

    .line 134
    return-wide v1
.end method

.method public static readFloat(Ljava/io/BufferedInputStream;)F
    .locals 2

    .line 115
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;->obtain()[B

    move-result-object v0

    .line 116
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[B)I

    .line 117
    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderValues;->getFloat([B)F

    move-result p0

    .line 118
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;->free([B)V

    .line 119
    return p0
.end method

.method public static readInt(Ljava/io/BufferedInputStream;)I
    .locals 2

    .line 85
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;->obtain()[B

    move-result-object v0

    .line 86
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[B)I

    .line 87
    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderValues;->getInt([B)I

    move-result p0

    .line 88
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;->free([B)V

    .line 89
    return p0
.end method

.method public static readLong(Ljava/io/BufferedInputStream;)J
    .locals 3

    .line 100
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;->obtain()[B

    move-result-object v0

    .line 101
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[B)I

    .line 102
    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderValues;->getLong([B)J

    move-result-wide v1

    .line 103
    sget-object p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;->free([B)V

    .line 104
    return-wide v1
.end method

.method public static readShort(Ljava/io/BufferedInputStream;)S
    .locals 2

    .line 70
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_2_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray2Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray2Pool;->obtain()[B

    move-result-object v0

    .line 71
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[B)I

    .line 72
    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderValues;->getShort([B)S

    move-result p0

    .line 73
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_2_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray2Pool;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray2Pool;->free([B)V

    .line 74
    return p0
.end method

.method public static readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 147
    if-nez v0, :cond_0

    .line 148
    const/4 p0, 0x0

    return-object p0

    .line 149
    :cond_0
    const/16 v1, 0x7f

    const-string v2, "utf-8"

    if-le v0, v1, :cond_1

    .line 150
    new-array v0, v0, [B

    .line 151
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 152
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0

    .line 154
    :cond_1
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_127_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray127Pool;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray127Pool;->obtain()[B

    move-result-object v1

    .line 155
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 156
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 157
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_127_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray127Pool;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray127Pool;->free([B)V

    .line 158
    return-object p0
.end method

.method public static readString2(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 4

    .line 226
    invoke-static {p0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    .line 227
    if-gez v0, :cond_0

    .line 228
    const/4 p0, 0x0

    return-object p0

    .line 229
    :cond_0
    if-nez v0, :cond_1

    .line 230
    const-string p0, ""

    return-object p0

    .line 231
    :cond_1
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    .line 232
    const-class v1, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;

    monitor-enter v1

    .line 233
    :try_start_0
    new-array v0, v0, [B

    .line 234
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[B)I

    .line 235
    new-instance p0, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {p0, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    monitor-exit v1

    return-object p0

    .line 236
    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 238
    :cond_2
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_127_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray127Pool;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray127Pool;->obtain()[B

    move-result-object v1

    .line 239
    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[BII)I

    .line 240
    new-instance p0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {p0, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 241
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_127_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray127Pool;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray127Pool;->free([B)V

    .line 242
    return-object p0
.end method

.method public static readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 176
    if-nez v0, :cond_0

    .line 177
    const/4 p0, 0x0

    return-object p0

    .line 179
    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    .line 180
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 181
    invoke-static {p0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_1
    return-object v1
.end method

.method public static readStringArray2(Ljava/io/BufferedInputStream;)[Ljava/lang/String;
    .locals 4

    .line 259
    invoke-static {p0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    .line 260
    if-gez v0, :cond_0

    .line 261
    const/4 p0, 0x0

    return-object p0

    .line 262
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 263
    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    .line 265
    :cond_1
    new-array v2, v0, [Ljava/lang/String;

    .line 266
    nop

    :goto_0
    if-ge v1, v0, :cond_2

    .line 267
    invoke-static {p0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readString2(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_2
    return-object v2
.end method

.method public static readStringList(Ljava/io/BufferedInputStream;)Ljava/util/List;
    .locals 4
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

    .line 201
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 202
    if-gtz v0, :cond_0

    .line 203
    const/4 p0, 0x0

    return-object p0

    .line 205
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 207
    invoke-static {p0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_1
    return-object v1
.end method

.method public static readStringList2(Ljava/io/BufferedInputStream;)Ljava/util/List;
    .locals 4
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

    .line 287
    invoke-static {p0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    .line 288
    if-gez v0, :cond_0

    .line 289
    const/4 p0, 0x0

    return-object p0

    .line 290
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 291
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 293
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    nop

    :goto_0
    if-ge v1, v0, :cond_2

    .line 295
    invoke-static {p0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readString2(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_2
    return-object v2
.end method

.method public static writeBoolean(Ljava/io/BufferedOutputStream;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 29
    return-void
.end method

.method public static writeBoolean2(Ljava/io/BufferedOutputStream;Z)V
    .locals 0

    .line 36
    int-to-byte p1, p1

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeByte(Ljava/io/BufferedOutputStream;B)V

    .line 37
    return-void
.end method

.method public static writeByte(Ljava/io/BufferedOutputStream;B)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 67
    return-void
.end method

.method public static writeDouble(Ljava/io/BufferedOutputStream;D)V
    .locals 1

    .line 138
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;->obtain()[B

    move-result-object v0

    .line 139
    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderValues;->putDouble(D[B)V

    .line 140
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 141
    sget-object p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;->free([B)V

    .line 142
    return-void
.end method

.method public static writeFloat(Ljava/io/BufferedOutputStream;F)V
    .locals 1

    .line 123
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;->obtain()[B

    move-result-object v0

    .line 124
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderValues;->putFloat(F[B)V

    .line 125
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 126
    sget-object p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;->free([B)V

    .line 127
    return-void
.end method

.method public static writeInt(Ljava/io/BufferedOutputStream;I)V
    .locals 1

    .line 93
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;->obtain()[B

    move-result-object v0

    .line 94
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderValues;->putInt(I[B)V

    .line 95
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray4Pool;->free([B)V

    .line 96
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 97
    return-void
.end method

.method public static writeLong(Ljava/io/BufferedOutputStream;J)V
    .locals 1

    .line 108
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;->obtain()[B

    move-result-object v0

    .line 109
    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderValues;->putLong(J[B)V

    .line 110
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 111
    sget-object p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray8Pool;->free([B)V

    .line 112
    return-void
.end method

.method public static writeShort(Ljava/io/BufferedOutputStream;S)V
    .locals 1

    .line 78
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_2_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray2Pool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray2Pool;->obtain()[B

    move-result-object v0

    .line 79
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderValues;->putShort(S[B)V

    .line 80
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 81
    sget-object p0, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_2_POOL:Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray2Pool;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArray2Pool;->free([B)V

    .line 82
    return-void
.end method

.method public static writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 168
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 169
    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    goto :goto_1

    .line 165
    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 171
    :goto_1
    return-void
.end method

.method public static writeString2(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V
    .locals 1

    .line 247
    if-nez p1, :cond_0

    .line 248
    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 250
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 253
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 254
    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 256
    :goto_0
    return-void
.end method

.method public static writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    array-length v1, p1

    invoke-virtual {p0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 193
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 194
    invoke-static {p0, v2}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 197
    :cond_2
    return-void
.end method

.method public static writeStringArray2(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V
    .locals 3

    .line 274
    if-nez p1, :cond_0

    .line 275
    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    goto :goto_1

    .line 276
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 277
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    goto :goto_1

    .line 279
    :cond_1
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 280
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 281
    invoke-static {p0, v2}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeString2(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_2
    :goto_1
    return-void
.end method

.method public static writeStringList(Ljava/io/BufferedOutputStream;Ljava/util/List;)V
    .locals 1
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

    .line 215
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 218
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 219
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 221
    goto :goto_0

    .line 216
    :cond_1
    :goto_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 223
    :cond_2
    return-void
.end method

.method public static writeStringList2(Ljava/io/BufferedOutputStream;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedOutputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 302
    if-nez p1, :cond_0

    .line 303
    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    goto :goto_1

    .line 304
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    goto :goto_1

    .line 307
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 308
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeString2(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 310
    goto :goto_0

    .line 312
    :cond_2
    :goto_1
    return-void
.end method
