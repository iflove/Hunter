.class public final Lcom/alipay/mobile/aompfilemanager/utils/c/b;
.super Ljava/lang/Object;
.source "ZipFileInfo.java"


# instance fields
.field public a:Z

.field public b:J

.field public c:J

.field public d:Z

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/mobile/aompfilemanager/utils/c/b;
    .locals 8

    .line 71
    nop

    .line 73
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/aompfilemanager/utils/c/b;

    invoke-direct {v0}, Lcom/alipay/mobile/aompfilemanager/utils/c/b;-><init>()V

    .line 75
    iput-object p0, v0, Lcom/alipay/mobile/aompfilemanager/utils/c/b;->e:Ljava/lang/String;

    .line 76
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/alipay/mobile/aompfilemanager/utils/c/b;->a:Z

    .line 77
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 78
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 80
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 81
    iget-boolean v5, v0, Lcom/alipay/mobile/aompfilemanager/utils/c/b;->d:Z

    if-nez v5, :cond_1

    const-string v5, "../"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "/.."

    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "/../"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    :cond_0
    iput-boolean p0, v0, Lcom/alipay/mobile/aompfilemanager/utils/c/b;->d:Z

    .line 85
    :cond_1
    iget-wide v4, v0, Lcom/alipay/mobile/aompfilemanager/utils/c/b;->b:J

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/alipay/mobile/aompfilemanager/utils/c/b;->b:J

    .line 86
    iget-wide v4, v0, Lcom/alipay/mobile/aompfilemanager/utils/c/b;->c:J

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/alipay/mobile/aompfilemanager/utils/c/b;->c:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    nop

    .line 92
    invoke-static {v1}, Lcom/alipay/mobile/aompfilemanager/utils/c/b;->a(Ljava/util/zip/ZipFile;)V

    .line 88
    return-object v0

    .line 92
    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    .line 90
    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    .line 92
    :catchall_1
    move-exception p0

    goto :goto_2

    .line 90
    :catch_1
    move-exception p0

    :goto_1
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    :goto_2
    invoke-static {v0}, Lcom/alipay/mobile/aompfilemanager/utils/c/b;->a(Ljava/util/zip/ZipFile;)V

    throw p0
.end method

.method private static a(Ljava/util/zip/ZipFile;)V
    .locals 1

    .line 98
    if-eqz p0, :cond_0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception p0

    .line 102
    const-string v0, "ZipFileInfo"

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    return-void

    .line 103
    :cond_0
    :goto_0
    return-void
.end method
