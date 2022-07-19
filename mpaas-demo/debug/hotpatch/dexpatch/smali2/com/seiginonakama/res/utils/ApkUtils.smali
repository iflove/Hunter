.class public Lcom/seiginonakama/res/utils/ApkUtils;
.super Ljava/lang/Object;
.source "ApkUtils.java"


# static fields
.field private static final sNoCompressExt:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 22
    new-instance v0, Ljava/util/HashSet;

    const-string v1, ".jpg"

    const-string v2, ".jpeg"

    const-string v3, ".png"

    const-string v4, ".gif"

    const-string v5, ".wav"

    const-string v6, ".mp2"

    const-string v7, ".mp3"

    const-string v8, ".ogg"

    const-string v9, ".aac"

    const-string v10, ".mpg"

    const-string v11, ".mpeg"

    const-string v12, ".mid"

    const-string v13, ".midi"

    const-string v14, ".smf"

    const-string v15, ".jet"

    const-string v16, ".rtttl"

    const-string v17, ".imy"

    const-string v18, ".xmf"

    const-string v19, ".mp4"

    const-string v20, ".m4a"

    const-string v21, ".m4v"

    const-string v22, ".3gp"

    const-string v23, ".3gpp"

    const-string v24, ".3g2"

    const-string v25, ".3gpp2"

    const-string v26, ".amr"

    const-string v27, ".awb"

    const-string v28, ".wma"

    const-string v29, ".wmv"

    const-string v30, ".webm"

    const-string v31, ".mkv"

    const-string v32, ".webp"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/seiginonakama/res/utils/ApkUtils;->sNoCompressExt:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCrc32(Ljava/io/File;)J
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 66
    const/16 v1, 0x200

    new-array v1, v1, [B

    .line 68
    .local v1, "buffer":[B
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v3, 0x0

    .line 69
    .local v3, "crc32":Ljava/util/zip/CRC32;
    move-object v3, v2

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    .line 70
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    move v4, v2

    .local v4, "length":I
    if-lez v2, :cond_0

    .line 71
    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2, v4}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-static {v0}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 73
    return-wide v5

    .line 75
    .end local v1    # "buffer":[B
    .end local v3    # "crc32":Ljava/util/zip/CRC32;
    .end local v4    # "length":I
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static getCrc32([B)J
    .locals 4
    .param p0, "data"    # [B

    .line 80
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v1, 0x0

    .line 81
    .local v1, "crc32":Ljava/util/zip/CRC32;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 82
    array-length v0, p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 83
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    return-wide v2
.end method

.method private static getFileExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .line 54
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 55
    .local v1, "lastDot":I
    move v1, v0

    if-ltz v0, :cond_0

    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static okToCompressed(Ljava/lang/String;)Z
    .locals 3
    .param p0, "zipPath"    # Ljava/lang/String;

    .line 33
    const-string v0, "resources.arsc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 35
    return v1

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/seiginonakama/res/utils/ApkUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "ext":Ljava/lang/String;
    sget-object v2, Lcom/seiginonakama/res/utils/ApkUtils;->sNoCompressExt:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "/raw/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static setNoCompress(Ljava/util/zip/ZipEntry;Ljava/io/File;)V
    .locals 2
    .param p0, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p1, "origin"    # Ljava/io/File;

    .line 42
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 44
    invoke-static {p1}, Lcom/seiginonakama/res/utils/ApkUtils;->getCrc32(Ljava/io/File;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 45
    return-void
.end method

.method public static setNoCompress(Ljava/util/zip/ZipEntry;[B)V
    .locals 2
    .param p0, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p1, "data"    # [B

    .line 48
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 50
    invoke-static {p1}, Lcom/seiginonakama/res/utils/ApkUtils;->getCrc32([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 51
    return-void
.end method
