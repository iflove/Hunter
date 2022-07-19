.class public Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;
.super Ljava/lang/Object;
.source "PackageStats.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->a:Ljava/lang/String;

    .line 137
    return-void
.end method

.method private a()J
    .locals 4

    .line 125
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->c:J

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Z)J
    .locals 8
    .param p0, "availableOnly"    # Z

    .line 141
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    .local v0, "path":Ljava/io/File;
    :try_start_1
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, "stat":Landroid/os/StatFs;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1

    .line 144
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 146
    .local v2, "blockSize":J
    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    .local v4, "expectedBlocks":J
    goto :goto_0

    .line 149
    .end local v0    # "path":Ljava/io/File;
    .end local v4    # "expectedBlocks":J
    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4

    .line 151
    .restart local v4    # "expectedBlocks":J
    :goto_0
    mul-long v6, v4, v2

    return-wide v6

    .line 153
    .end local v2    # "blockSize":J
    .end local v4    # "expectedBlocks":J
    :cond_1
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    .line 155
    .restart local v2    # "blockSize":J
    if-eqz p0, :cond_2

    .line 156
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    .restart local v4    # "expectedBlocks":J
    goto :goto_1

    .line 158
    .end local v4    # "expectedBlocks":J
    :cond_2
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    int-to-long v4, v4

    .line 160
    .restart local v4    # "expectedBlocks":J
    :goto_1
    mul-long v6, v4, v2

    return-wide v6

    .line 162
    .end local v1    # "stat":Landroid/os/StatFs;
    .end local v2    # "blockSize":J
    .end local v4    # "expectedBlocks":J
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method private b()J
    .locals 4

    .line 132
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->d:J

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->e:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static b(Z)J
    .locals 8
    .param p0, "availableOnly"    # Z

    .line 169
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    .local v0, "path":Ljava/io/File;
    :try_start_1
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "stat":Landroid/os/StatFs;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1

    .line 172
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 174
    .local v2, "blockSize":J
    if-eqz p0, :cond_0

    .line 175
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    .local v4, "expectedBlocks":J
    goto :goto_0

    .line 177
    .end local v0    # "path":Ljava/io/File;
    .end local v4    # "expectedBlocks":J
    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4

    .line 179
    .restart local v4    # "expectedBlocks":J
    :goto_0
    mul-long v6, v4, v2

    return-wide v6

    .line 181
    .end local v2    # "blockSize":J
    .end local v4    # "expectedBlocks":J
    :cond_1
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    .line 183
    .restart local v2    # "blockSize":J
    if-eqz p0, :cond_2

    .line 184
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    .restart local v4    # "expectedBlocks":J
    goto :goto_1

    .line 186
    .end local v4    # "expectedBlocks":J
    :cond_2
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    int-to-long v4, v4

    .line 188
    .restart local v4    # "expectedBlocks":J
    :goto_1
    mul-long v6, v4, v2

    return-wide v6

    .line 190
    .end local v1    # "stat":Landroid/os/StatFs;
    .end local v2    # "blockSize":J
    .end local v4    # "expectedBlocks":J
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 197
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 198
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "EXT"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 201
    :cond_0
    const-string v0, "INNER"

    return-object v0

    .line 203
    :catchall_0
    move-exception v0

    .line 204
    const-string v0, "UNKNOWN"

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 97
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v1, v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "storageUsage"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SUAppSize"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->e:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SUExtData"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->h:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SUExtAlipay"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->a(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUAvailable"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->b(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SUExtAvailable"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->a(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUTotal"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->b(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SUExtTotal"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SUExtRemovable"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SUExtEmulated"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SUInsLoc"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-object v1
.end method
