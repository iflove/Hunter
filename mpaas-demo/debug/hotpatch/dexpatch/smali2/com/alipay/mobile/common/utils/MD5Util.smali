.class public Lcom/alipay/mobile/common/utils/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# static fields
.field public static final ALGORIGTHM_MD5:Ljava/lang/String; = "MD5"

.field protected static hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/common/utils/MD5Util;->hexDigits:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 230
    invoke-static {}, Lcom/alipay/mobile/common/utils/MD5Util;->getMD5Digest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 232
    .local v0, "messagedigest":Ljava/security/MessageDigest;
    new-instance v1, Ljava/security/DigestInputStream;

    invoke-direct {v1, p0, v0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 233
    .local v1, "din":Ljava/security/DigestInputStream;
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 236
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {v1, v2}, Ljava/security/DigestInputStream;->read([B)I

    move-result v3

    .line 237
    if-gtz v3, :cond_0

    .line 238
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v3

    .line 240
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    return-object v3

    .line 237
    :cond_0
    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "inputText"    # Ljava/lang/String;

    .line 251
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/MD5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getByteArrayChunkMD5String([BII)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "chunkSequence"    # I
    .param p2, "chunkSize"    # I

    .line 177
    if-lez p1, :cond_3

    if-eqz p0, :cond_3

    .line 180
    array-length v0, p0

    const/4 v1, 0x0

    .line 181
    .local v1, "length":I
    move v1, v0

    div-int/2addr v0, p2

    int-to-long v2, v0

    .line 182
    .local v2, "chunkNumer":J
    rem-int v0, v1, p2

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 183
    :cond_0
    if-lez p1, :cond_2

    int-to-long v4, p1

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 186
    add-int/lit8 v0, p1, -0x1

    mul-int v0, v0, p2

    .line 187
    .local v0, "offset":I
    move v4, p2

    .line 188
    .local v4, "readLength":I
    mul-int v5, p1, p2

    .line 189
    if-le v5, v1, :cond_1

    .line 190
    sub-int v4, v1, v0

    .line 192
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/utils/MD5Util;->getMD5Digest()Ljava/security/MessageDigest;

    move-result-object v5

    const/4 v6, 0x0

    .line 193
    .local v6, "messagedigest":Ljava/security/MessageDigest;
    move-object v6, v5

    invoke-virtual {v5, p0, v0, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 194
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/common/utils/HexStringUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 184
    .end local v0    # "offset":I
    .end local v4    # "readLength":I
    .end local v6    # "messagedigest":Ljava/security/MessageDigest;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Chunk sequence greater than file size !"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    .end local v1    # "length":I
    .end local v2    # "chunkNumer":J
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalide parameter!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFileChunkMD5String(Ljava/io/File;IJ)Ljava/lang/String;
    .locals 11
    .param p0, "file"    # Ljava/io/File;
    .param p1, "chunkSequence"    # I
    .param p2, "chunkSize"    # J

    .line 152
    if-lez p1, :cond_3

    if-eqz p0, :cond_3

    .line 155
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 156
    .local v4, "fileLength":J
    move-wide v4, v0

    div-long/2addr v0, p2

    .line 157
    .local v0, "chunkNumer":J
    rem-long v6, v4, p2

    cmp-long v8, v6, v2

    if-eqz v8, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 158
    :cond_0
    if-lez p1, :cond_2

    int-to-long v2, p1

    cmp-long v6, v0, v2

    if-ltz v6, :cond_2

    .line 161
    add-int/lit8 v2, p1, -0x1

    int-to-long v2, v2

    mul-long v2, v2, p2

    .line 162
    .local v2, "offset":J
    move-wide v6, p2

    .line 163
    .local v6, "readLength":J
    int-to-long v8, p1

    mul-long v8, v8, p2

    .line 164
    cmp-long v10, v8, v4

    if-lez v10, :cond_1

    .line 165
    sub-long v6, v4, v2

    .line 167
    :cond_1
    invoke-static {p0, v2, v3, v6, v7}, Lcom/alipay/mobile/common/utils/MD5Util;->getFileChunkMD5String(Ljava/io/File;JJ)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 159
    .end local v2    # "offset":J
    .end local v6    # "readLength":J
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Chunk sequence greater than file size !"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    .end local v0    # "chunkNumer":J
    .end local v4    # "fileLength":J
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalide parameter!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFileChunkMD5String(Ljava/io/File;JJ)Ljava/lang/String;
    .locals 11
    .param p0, "file"    # Ljava/io/File;
    .param p1, "offset"    # J
    .param p3, "length"    # J

    .line 203
    invoke-static {}, Lcom/alipay/mobile/common/utils/MD5Util;->getMD5Digest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 204
    .local v0, "messagedigest":Ljava/security/MessageDigest;
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    .local v1, "randomAccessFile":Ljava/io/RandomAccessFile;
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    .line 207
    :try_start_0
    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 210
    :cond_0
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 211
    .local v4, "buffer":[B
    move-wide v5, p3

    .local v5, "remain":J
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 212
    :goto_0
    cmp-long v9, v5, v2

    if-lez v9, :cond_1

    .line 213
    const-wide/16 v9, 0x400

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v10, v9

    invoke-virtual {v1, v4, v7, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v9

    .line 214
    .local v8, "n":I
    move v8, v9

    if-ltz v9, :cond_1

    .line 217
    invoke-virtual {v0, v4, v7, v8}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    int-to-long v9, v8

    sub-long/2addr v5, v9

    .line 219
    .end local v8    # "n":I
    goto :goto_0

    .line 221
    .end local v4    # "buffer":[B
    .end local v5    # "remain":J
    :cond_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 222
    nop

    .line 223
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/HexStringUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 221
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v2
.end method

.method public static getFileMD5Byte(Ljava/io/File;)[B
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 91
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 92
    .local v1, "fis":Ljava/io/InputStream;
    move-object v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/MD5Util;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 93
    .local v0, "fileMd5Byte":[B
    invoke-static {v1}, Lcom/alipay/mobile/common/utils/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 94
    return-object v0
.end method

.method public static getFileMD5String(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 138
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/MD5Util;->getFileMD5Byte(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/HexStringUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MD5Util"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMD5Base64(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # Ljava/lang/String;

    .line 102
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/MD5Util;->getMD5Byte([B)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MD5Util"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMD5Byte(Ljava/lang/String;)[B
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .line 84
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/utils/MD5Util;->getMD5Byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getMD5Byte(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;

    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 63
    return-object v1

    .line 66
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const-string p1, "UTF-8"

    .line 70
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/MD5Util;->getMD5Byte([B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MD5Util"

    invoke-static {v3, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object v1
.end method

.method public static getMD5Byte([B)[B
    .locals 2
    .param p0, "source"    # [B

    .line 49
    invoke-static {}, Lcom/alipay/mobile/common/utils/MD5Util;->getMD5Digest()Ljava/security/MessageDigest;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    .local v1, "messagedigest":Ljava/security/MessageDigest;
    move-object v1, v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 51
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public static getMD5Digest()Ljava/security/MessageDigest;
    .locals 2

    .line 36
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getMD5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # Ljava/lang/String;

    .line 114
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/MD5Util;->getMD5Byte([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/HexStringUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MD5Util"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMD5String([B)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # [B

    .line 126
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/MD5Util;->getMD5Byte([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/HexStringUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MD5Util"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method
