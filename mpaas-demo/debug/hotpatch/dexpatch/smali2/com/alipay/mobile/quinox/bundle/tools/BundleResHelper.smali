.class public Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;
.super Ljava/lang/Object;
.source "BundleResHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper$Result;
    }
.end annotation


# static fields
.field public static final MAX_PACKAGE_ID:I

.field public static final MIN_PACKAGE_ID:I = 0x1b

.field public static final TYPE_ID_OFFSETS:[I

.field public static final TYPE_ID_OFFSET_DISTANCE:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->TYPE_ID_OFFSETS:[I

    .line 31
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x65

    add-int/lit8 v0, v0, 0x1b

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->MAX_PACKAGE_ID:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x20
        0x40
        0x60
        0x80
        0xa0
        0xc0
        0xe0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;J)V
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "skipCount"    # J

    .line 211
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 212
    .local v2, "result":J
    move-wide v2, v0

    cmp-long v4, v0, p1

    if-nez v4, :cond_0

    .line 215
    return-void

    .line 213
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "want skip "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes, but skipped "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes at fact."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/io/InputStream;[BI)V
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .param p2, "readCount"    # I

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 219
    .local v0, "result":I
    move v0, v1

    if-ne v1, p2, :cond_0

    .line 222
    return-void

    .line 220
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "want read "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes, but read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes at fact."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static calculateBundlePackageId(II)I
    .locals 4
    .param p0, "realPkgId"    # I
    .param p1, "typeIdOffset"    # I

    .line 64
    const/4 v0, -0x1

    .line 65
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->TYPE_ID_OFFSETS:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 66
    aget v2, v2, v1

    if-ne p1, v2, :cond_0

    .line 67
    move v0, v1

    .line 65
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "i":I
    :cond_1
    if-gez v0, :cond_2

    .line 71
    return p0

    .line 74
    :cond_2
    mul-int/lit8 v1, v0, 0x65

    add-int/2addr v1, p0

    return v1
.end method

.method public static calculatePkgIdAndTypeOffset(I)Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper$Result;
    .locals 5
    .param p0, "packageId"    # I

    const/4 v0, 0x0

    .local v0, "resultTypeOffset":I
    const/4 v1, 0x0

    .line 39
    .local v1, "resultPkgId":I
    const/16 v2, 0x1b

    if-lt p0, v2, :cond_1

    sget v2, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->MAX_PACKAGE_ID:I

    if-gt p0, v2, :cond_1

    .line 40
    const/16 v2, 0x7f

    if-gt p0, v2, :cond_0

    .line 41
    move v1, p0

    .line 42
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :cond_0
    add-int/lit8 v2, p0, -0x1b

    rem-int/lit8 v2, v2, 0x65

    .line 46
    .local v2, "number":I
    add-int/lit8 v1, v2, 0x1b

    .line 47
    add-int/lit8 v3, p0, -0x1b

    div-int/lit8 v3, v3, 0x65

    .line 48
    .local v3, "index":I
    sget-object v4, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->TYPE_ID_OFFSETS:[I

    aget v0, v4, v3

    .line 49
    .end local v2    # "number":I
    .end local v3    # "index":I
    nop

    .line 53
    :goto_0
    new-instance v2, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper$Result;

    invoke-direct {v2, v1, v0}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper$Result;-><init>(II)V

    return-object v2

    .line 51
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "packageId only can be [27-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->MAX_PACKAGE_ID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static calculateRealPackageId(I)I
    .locals 1
    .param p0, "bundlePackageId"    # I

    .line 57
    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    .line 58
    return p0

    .line 60
    :cond_0
    add-int/lit8 v0, p0, -0x1b

    rem-int/lit8 v0, v0, 0x65

    add-int/lit8 v0, v0, 0x1b

    return v0
.end method

.method public static getPackageId(I)I
    .locals 1
    .param p0, "resId"    # I

    .line 78
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method public static getResId(III)I
    .locals 2
    .param p0, "pkgId"    # I
    .param p1, "typeId"    # I
    .param p2, "entryId"    # I

    .line 102
    shl-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    or-int/2addr v0, p2

    return v0
.end method

.method public static getTypeIdOffset(I)I
    .locals 5
    .param p0, "resId"    # I

    .line 82
    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x10

    .line 84
    .local v0, "typeId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->TYPE_ID_OFFSETS:[I

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_3

    .line 85
    aget v3, v2, v1

    if-gt v0, v3, :cond_1

    .line 86
    if-nez v1, :cond_0

    .line 87
    aget v2, v2, v4

    return v2

    .line 89
    :cond_0
    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    return v2

    .line 92
    :cond_1
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_2

    aget v3, v2, v1

    if-le v0, v3, :cond_2

    .line 93
    aget v2, v2, v1

    return v2

    .line 84
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getTypeIdOffset failed! resId:0x"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " TYPE_ID_OFFSETS:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string v2, "BundleResHelper"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return v4
.end method

.method public static readPackageFromArsc(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 17
    .param p0, "bundleFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 121
    .local v2, "zipFile":Ljava/util/zip/ZipFile;
    const/4 v3, 0x0

    .line 123
    .local v3, "packages":Landroid/util/SparseArray;
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 124
    move-object v2, v0

    const-string v4, "resources.arsc"

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v4, 0x0

    move-object v5, v4

    .line 125
    .local v5, "zipEntry":Ljava/util/zip/ZipEntry;
    move-object v5, v0

    if-eqz v0, :cond_7

    .line 126
    const/4 v6, 0x0

    .line 128
    .local v6, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 130
    move-object v6, v0

    const-wide/16 v7, 0x2

    invoke-static {v0, v7, v8}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->a(Ljava/io/InputStream;J)V

    .line 132
    invoke-static {v6, v7, v8}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->a(Ljava/io/InputStream;J)V

    .line 134
    const-wide/16 v9, 0x4

    invoke-static {v6, v9, v10}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->a(Ljava/io/InputStream;J)V

    .line 137
    const/16 v0, 0x100

    new-array v9, v0, [B

    .line 138
    .local v9, "buffers":[B
    const/4 v10, 0x4

    invoke-static {v6, v9, v10}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->a(Ljava/io/InputStream;[BI)V

    .line 139
    const/4 v11, 0x0

    invoke-static {v9, v11, v10}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v12

    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    move-object v13, v4

    .line 140
    .local v13, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    if-nez v12, :cond_1

    .line 195
    if-eqz v6, :cond_0

    .line 196
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 204
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 142
    return-object v4

    .line 146
    :cond_1
    const/4 v4, 0x2

    :try_start_3
    invoke-static {v6, v9, v4}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->a(Ljava/io/InputStream;[BI)V

    .line 147
    invoke-static {v9, v11, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v12

    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 148
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    .line 153
    .local v12, "type":S
    :goto_0
    const/16 v14, 0x200

    if-ne v12, v14, :cond_3

    .line 156
    invoke-static {v6, v7, v8}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->a(Ljava/io/InputStream;J)V

    .line 158
    invoke-static {v6, v9, v10}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->a(Ljava/io/InputStream;[BI)V

    .line 159
    invoke-static {v9, v11, v10}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v14

    sget-object v15, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 160
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    .line 162
    .local v14, "chunkSize":I
    invoke-static {v6, v9, v10}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->a(Ljava/io/InputStream;[BI)V

    .line 163
    invoke-static {v9, v11, v10}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v15

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v15, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 164
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 166
    .local v4, "pkgChunkId":I
    invoke-static {v6, v9, v0}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->a(Ljava/io/InputStream;[BI)V

    .line 167
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v15

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v15, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 168
    .end local v13    # "byteBuffer":Ljava/nio/ByteBuffer;
    .local v11, "byteBuffer":Ljava/nio/ByteBuffer;
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    const-string v16, "UTF-16LE"

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v13, v15, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "packageName":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 170
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    move-object v3, v8

    .line 172
    :cond_2
    invoke-virtual {v3, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    add-int/lit8 v8, v14, -0x8

    sub-int/2addr v8, v10

    sub-int/2addr v8, v0

    int-to-long v0, v8

    invoke-static {v6, v0, v1}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->a(Ljava/io/InputStream;J)V

    .line 175
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v14    # "chunkSize":I
    move-object v13, v11

    const-wide/16 v0, 0x2

    goto :goto_1

    .line 177
    .end local v4    # "pkgChunkId":I
    .end local v11    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local v13    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_3
    const-wide/16 v0, 0x2

    invoke-static {v6, v0, v1}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->a(Ljava/io/InputStream;J)V

    .line 179
    invoke-static {v6, v9, v10}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->a(Ljava/io/InputStream;[BI)V

    .line 180
    const/4 v4, 0x0

    invoke-static {v9, v4, v10}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 181
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    move v14, v4

    .line 183
    .restart local v14    # "chunkSize":I
    add-int/lit8 v4, v14, -0x8

    int-to-long v7, v4

    invoke-static {v6, v7, v8}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->a(Ljava/io/InputStream;J)V

    .line 186
    .end local v14    # "chunkSize":I
    :goto_1
    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-virtual {v6, v9, v7, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    move v11, v14

    .line 187
    .local v11, "result":I
    if-lt v8, v4, :cond_4

    .line 191
    invoke-static {v9, v7, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 192
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v12, v8

    .line 193
    .end local v11    # "result":I
    const/4 v11, 0x0

    move-wide v7, v0

    const/16 v0, 0x100

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 195
    .end local v9    # "buffers":[B
    .end local v12    # "type":S
    .end local v13    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_4
    if-eqz v6, :cond_5

    .line 196
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 199
    .end local v6    # "inputStream":Ljava/io/InputStream;
    :cond_5
    nop

    .line 204
    .end local v5    # "zipEntry":Ljava/util/zip/ZipEntry;
    :goto_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 207
    return-object v3

    .line 195
    .restart local v5    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 196
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_6
    nop

    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v3    # "packages":Landroid/util/SparseArray;
    .end local p0    # "bundleFile":Ljava/lang/String;
    throw v0

    .line 200
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v3    # "packages":Landroid/util/SparseArray;
    .restart local p0    # "bundleFile":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "resources.arsc not found in "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v4, p0

    :try_start_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v3    # "packages":Landroid/util/SparseArray;
    .end local p0    # "bundleFile":Ljava/lang/String;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 203
    .end local v5    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v3    # "packages":Landroid/util/SparseArray;
    .restart local p0    # "bundleFile":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v1

    :goto_3
    if-eqz v2, :cond_8

    .line 204
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    :cond_8
    throw v0
.end method

.method public static readPackageNameFromArsc(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "bundleFile"    # Ljava/lang/String;
    .param p1, "packageId"    # I

    .line 109
    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 110
    return-object v0

    .line 112
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/quinox/bundle/tools/BundleResHelper;->readPackageFromArsc(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    move-object v2, v0

    .line 113
    .local v2, "packages":Landroid/util/SparseArray;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 116
    :cond_1
    return-object v0
.end method
