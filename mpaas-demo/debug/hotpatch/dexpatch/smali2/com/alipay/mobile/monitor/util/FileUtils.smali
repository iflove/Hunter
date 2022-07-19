.class public Lcom/alipay/mobile/monitor/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/monitor/util/FileUtils$Result;,
        Lcom/alipay/mobile/monitor/util/FileUtils$PathType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .line 202
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "fileAbsolutePath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "innerPath":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 205
    new-instance v2, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "can not delete file in prohibit path, specified path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", but file path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v3, v5}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v2

    .line 207
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    new-instance v2, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "can not delete inner root dir "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v3, v5}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v2

    .line 210
    :cond_1
    new-instance v2, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    const/4 v3, 0x1

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v2
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Lcom/alipay/mobile/monitor/util/FileUtils$PathType;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "pathType"    # Lcom/alipay/mobile/monitor/util/FileUtils$PathType;

    .line 272
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 273
    new-instance v2, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    const-string v3, "context is null"

    invoke-direct {v2, v1, v0, v3}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v2

    .line 275
    :cond_0
    if-nez p1, :cond_1

    .line 276
    new-instance v2, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    const-string v3, "file is null"

    invoke-direct {v2, v1, v0, v3}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v2

    .line 278
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 279
    .local v4, "fileAbsolutePath":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    new-instance v2, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    const-string/jumbo v3, "param file getAbsolutePath returns null"

    invoke-direct {v2, v1, v0, v3}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v2

    .line 282
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 283
    new-instance v0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " do not exist"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v0

    .line 286
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x3

    if-nez v2, :cond_4

    .line 287
    new-instance v0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file path "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " do not contains package name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v0

    .line 290
    :cond_4
    const-string v2, "/.."

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "../"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 293
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/monitor/util/FileUtils$PathType;->checkPathValid(Landroid/content/Context;Ljava/io/File;Lcom/alipay/mobile/monitor/util/FileUtils$PathType;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    move-result-object v2

    .line 294
    .local v3, "checkPathValidResult":Lcom/alipay/mobile/monitor/util/FileUtils$Result;
    move-object v3, v2

    iget-boolean v2, v2, Lcom/alipay/mobile/monitor/util/FileUtils$Result;->success:Z

    if-nez v2, :cond_6

    .line 295
    return-object v3

    .line 297
    :cond_6
    new-instance v2, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    const-string v5, ""

    invoke-direct {v2, v0, v1, v5}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v2

    .line 291
    .end local v3    # "checkPathValidResult":Lcom/alipay/mobile/monitor/util/FileUtils$Result;
    :cond_7
    :goto_0
    new-instance v0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file path"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "can not contains \"../\" or \"/..\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;ZLcom/alipay/mobile/monitor/util/FileUtils$PathType;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;
    .locals 10

    .line 150
    invoke-static {p0, p1, p3}, Lcom/alipay/mobile/monitor/util/FileUtils;->a(Landroid/content/Context;Ljava/io/File;Lcom/alipay/mobile/monitor/util/FileUtils$PathType;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    move-result-object v0

    .line 151
    iget-boolean v1, v0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;->success:Z

    if-nez v1, :cond_0

    .line 152
    return-object v0

    .line 154
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 155
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 156
    new-instance p0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    const-string p1, "dir listFiles returns null maybe do not have permission"

    invoke-direct {p0, v2, v1, p1}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object p0

    .line 158
    :cond_1
    array-length v3, v0

    const-string v4, " success"

    const-string v5, "delete dir "

    const/4 v6, 0x1

    if-nez v3, :cond_3

    if-eqz p2, :cond_3

    .line 159
    invoke-static {p1}, Lcom/alipay/mobile/monitor/util/FileUtils;->a(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 160
    new-instance p0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, v2, p1}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object p0

    .line 162
    :cond_2
    new-instance p0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    const-string p1, "File.delete returns false"

    invoke-direct {p0, v2, v1, p1}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object p0

    .line 165
    :cond_3
    array-length v3, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_5

    aget-object v8, v0, v7

    .line 166
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 167
    invoke-static {v8}, Lcom/alipay/mobile/monitor/util/FileUtils;->a(Ljava/io/File;)Z

    goto :goto_1

    .line 169
    :cond_4
    invoke-static {p0, v8, p2, p3}, Lcom/alipay/mobile/monitor/util/FileUtils;->a(Landroid/content/Context;Ljava/io/File;ZLcom/alipay/mobile/monitor/util/FileUtils$PathType;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    .line 165
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 172
    :cond_5
    if-eqz p2, :cond_7

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    .line 174
    if-eqz p0, :cond_6

    .line 175
    new-instance p0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, v2, p1}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object p0

    .line 177
    :cond_6
    new-instance p0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " fail"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v1, p1}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object p0

    .line 180
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 181
    array-length p2, p0

    if-nez p2, :cond_8

    .line 182
    new-instance p0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, v2, p1}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object p0

    .line 184
    :cond_8
    array-length p2, p0

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p2, :cond_a

    aget-object v0, p0, p3

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 186
    new-instance p0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    const-string p1, "file.delete returns false"

    invoke-direct {p0, v2, v1, p1}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object p0

    .line 184
    :cond_9
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 189
    :cond_a
    new-instance p0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, v2, p1}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object p0
.end method

.method private static a(Ljava/io/File;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 305
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    const-string v1, "delete "

    const-string v2, "MonitorFileUtils"

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " success!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x1

    return v0

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fail!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/io/File;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/io/File;

    .line 21
    invoke-static {p0, p1}, Lcom/alipay/mobile/monitor/util/FileUtils;->a(Landroid/content/Context;Ljava/io/File;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/io/File;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/io/File;

    .line 21
    invoke-static {p0, p1}, Lcom/alipay/mobile/monitor/util/FileUtils;->c(Landroid/content/Context;Ljava/io/File;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/io/File;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/io/File;

    .line 21
    invoke-static {p0, p1}, Lcom/alipay/mobile/monitor/util/FileUtils;->b(Landroid/content/Context;Ljava/io/File;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/io/File;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .line 223
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 224
    .local v1, "externalStorageDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "alipay"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    .local v2, "alipayDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "alipayPath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 229
    .local v5, "fileAbsolutePath":Ljava/lang/String;
    move-object v5, v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x3

    if-nez v4, :cond_0

    .line 230
    new-instance v4, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "can not delete file in prohibit path, specified path = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", but file path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v0, v6, v7}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v4

    .line 232
    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    new-instance v4, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "can not delete alipay root dir "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v0, v6, v7}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v4

    .line 235
    :cond_1
    new-instance v4, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    const/4 v6, 0x1

    const-string v7, ""

    invoke-direct {v4, v6, v0, v7}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 236
    .end local v1    # "externalStorageDir":Ljava/io/File;
    .end local v2    # "alipayDir":Ljava/io/File;
    .end local v3    # "alipayPath":Ljava/lang/String;
    .end local v5    # "fileAbsolutePath":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 237
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "MonitorFileUtils"

    const-string v3, "checkAlipayPathValid throws exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    new-instance v2, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkAlipayPathValid throws exception! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v2
.end method

.method private static c(Landroid/content/Context;Ljava/io/File;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .line 252
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "externalPath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 255
    .local v3, "fileAbsolutePath":Ljava/lang/String;
    move-object v3, v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x3

    if-nez v2, :cond_0

    .line 256
    new-instance v2, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "can not delete file in prohibit path, specified path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", but file path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v4, v5}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v2

    .line 258
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    new-instance v2, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "can not delete external root dir "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v4, v5}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v2

    .line 261
    :cond_1
    new-instance v2, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    const/4 v4, 0x1

    const-string v5, ""

    invoke-direct {v2, v4, v0, v5}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 262
    .end local v1    # "externalPath":Ljava/lang/String;
    .end local v3    # "fileAbsolutePath":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 263
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "MonitorFileUtils"

    const-string v3, "checkExternalStoragePathValid throws exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    new-instance v2, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkExternalStoragePathValid throws exception! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v2
.end method

.method public static cleanDirectory(Landroid/content/Context;Ljava/io/File;Lcom/alipay/mobile/monitor/util/FileUtils$PathType;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirPath"    # Ljava/io/File;
    .param p2, "pathType"    # Lcom/alipay/mobile/monitor/util/FileUtils$PathType;

    .line 126
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/alipay/mobile/monitor/util/FileUtils;->a(Landroid/content/Context;Ljava/io/File;ZLcom/alipay/mobile/monitor/util/FileUtils$PathType;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    move-result-object v0

    return-object v0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 11
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;

    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "ips":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 586
    .local v1, "inChannel":Ljava/nio/channels/FileChannel;
    const/4 v2, 0x0

    .line 587
    .local v2, "ofs":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 590
    .local v3, "outChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 591
    move-object v0, v4

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    move-object v1, v4

    .line 592
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 593
    move-object v2, v4

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    move-object v3, v4

    .line 595
    const-wide/16 v6, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    move-object v5, v1

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 596
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v4, :cond_2

    .line 606
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 609
    goto :goto_0

    .line 607
    :catchall_0
    move-exception v4

    .line 611
    :goto_0
    if-eqz v1, :cond_0

    .line 613
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 616
    goto :goto_1

    .line 614
    :catchall_1
    move-exception v4

    .line 620
    :cond_0
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 623
    goto :goto_2

    .line 621
    :catchall_2
    move-exception v4

    .line 625
    :goto_2
    if-eqz v3, :cond_1

    .line 627
    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 630
    return-void

    .line 628
    :catchall_3
    move-exception v4

    .line 630
    return-void

    .line 633
    :cond_1
    return-void

    .line 597
    :cond_2
    :try_start_5
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "copy file fail"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ips":Ljava/io/FileInputStream;
    .end local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v2    # "ofs":Ljava/io/FileOutputStream;
    .end local v3    # "outChannel":Ljava/nio/channels/FileChannel;
    .end local p0    # "src":Ljava/io/File;
    .end local p1    # "dst":Ljava/io/File;
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 600
    .restart local v0    # "ips":Ljava/io/FileInputStream;
    .restart local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .restart local v2    # "ofs":Ljava/io/FileOutputStream;
    .restart local v3    # "outChannel":Ljava/nio/channels/FileChannel;
    .restart local p0    # "src":Ljava/io/File;
    .restart local p1    # "dst":Ljava/io/File;
    :catchall_4
    move-exception v4

    .line 601
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_6
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "ips":Ljava/io/FileInputStream;
    .end local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v2    # "ofs":Ljava/io/FileOutputStream;
    .end local v3    # "outChannel":Ljava/nio/channels/FileChannel;
    .end local p0    # "src":Ljava/io/File;
    .end local p1    # "dst":Ljava/io/File;
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 604
    .end local v4    # "e":Ljava/lang/Throwable;
    .restart local v0    # "ips":Ljava/io/FileInputStream;
    .restart local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .restart local v2    # "ofs":Ljava/io/FileOutputStream;
    .restart local v3    # "outChannel":Ljava/nio/channels/FileChannel;
    .restart local p0    # "src":Ljava/io/File;
    .restart local p1    # "dst":Ljava/io/File;
    :catchall_5
    move-exception v4

    if-eqz v0, :cond_3

    .line 606
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 609
    goto :goto_3

    .line 607
    :catchall_6
    move-exception v5

    .line 611
    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 613
    :try_start_8
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 616
    goto :goto_4

    .line 614
    :catchall_7
    move-exception v5

    .line 618
    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    .line 620
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 623
    goto :goto_5

    .line 621
    :catchall_8
    move-exception v5

    .line 625
    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    .line 627
    :try_start_a
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 630
    goto :goto_6

    .line 628
    :catchall_9
    move-exception v5

    .line 630
    :cond_6
    :goto_6
    throw v4
.end method

.method public static deleteDirectory(Landroid/content/Context;Ljava/io/File;Lcom/alipay/mobile/monitor/util/FileUtils$PathType;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirPath"    # Ljava/io/File;
    .param p2, "pathType"    # Lcom/alipay/mobile/monitor/util/FileUtils$PathType;

    .line 138
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/alipay/mobile/monitor/util/FileUtils;->a(Landroid/content/Context;Ljava/io/File;ZLcom/alipay/mobile/monitor/util/FileUtils$PathType;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    move-result-object v0

    return-object v0
.end method

.method public static deleteFileByPath(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 390
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    return-void

    .line 393
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileNotDir(Ljava/io/File;)V

    .line 394
    return-void
.end method

.method public static deleteFileNotDir(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 375
    if-nez p0, :cond_0

    .line 376
    return-void

    .line 379
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :cond_1
    return-void

    .line 384
    :catchall_0
    move-exception v0

    .line 385
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteFileNotDir: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MonitorFileUtils"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public static deleteFileOnly(Landroid/content/Context;Ljava/io/File;Lcom/alipay/mobile/monitor/util/FileUtils$PathType;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "pathType"    # Lcom/alipay/mobile/monitor/util/FileUtils$PathType;

    .line 103
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/monitor/util/FileUtils;->a(Landroid/content/Context;Ljava/io/File;Lcom/alipay/mobile/monitor/util/FileUtils$PathType;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    move-result-object v0

    const/4 v1, 0x0

    .line 104
    .local v1, "checkResult":Lcom/alipay/mobile/monitor/util/FileUtils$Result;
    move-object v1, v0

    iget-boolean v0, v0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;->success:Z

    if-nez v0, :cond_0

    .line 105
    return-object v1

    .line 107
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    const/4 v3, 0x2

    const-string v4, "can not delete a directory by using deleteFileOnly"

    invoke-direct {v0, v2, v3, v4}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v0

    .line 110
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/monitor/util/FileUtils;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    new-instance v0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delete file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " success"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v2, v4}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v0

    .line 113
    :cond_2
    new-instance v0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    const/4 v3, 0x4

    const-string v4, "File.delete returns false"

    invoke-direct {v0, v2, v3, v4}, Lcom/alipay/mobile/monitor/util/FileUtils$Result;-><init>(ZILjava/lang/String;)V

    return-object v0
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 10
    .param p0, "dir"    # Ljava/io/File;

    .line 636
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 640
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 641
    .local v4, "files":[Ljava/io/File;
    move-object v4, v2

    if-eqz v2, :cond_5

    array-length v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    .line 644
    :cond_1
    const-wide/16 v5, 0x0

    .line 645
    .local v5, "size":J
    array-length v2, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_4

    aget-object v8, v4, v7

    .line 646
    .local v3, "file":Ljava/io/File;
    move-object v3, v8

    if-eqz v8, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 649
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 650
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v5, v8

    goto :goto_1

    .line 652
    :cond_2
    invoke-static {v3}, Lcom/alipay/mobile/monitor/util/FileUtils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v5, v8

    .line 645
    .end local v3    # "file":Ljava/io/File;
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 655
    :cond_4
    return-wide v5

    .line 642
    .end local v5    # "size":J
    :cond_5
    :goto_2
    return-wide v0

    .line 656
    .end local v4    # "files":[Ljava/io/File;
    :catchall_0
    move-exception v2

    .line 657
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MonitorFileUtils"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 658
    return-wide v0

    .line 637
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_6
    :goto_3
    return-wide v0
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 4

    .line 324
    invoke-static {}, Lcom/alipay/mobile/monitor/util/FileUtils;->isCanUseSdCard()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 325
    return-object v1

    .line 328
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 330
    :catchall_0
    move-exception v0

    .line 331
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "MonitorFileUtils"

    const-string v3, "getSDPath"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    return-object v1
.end method

.method public static getTraceFile()Ljava/lang/String;
    .locals 7

    .line 397
    const/4 v0, 0x0

    .line 399
    .local v0, "value":Ljava/lang/Object;
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 400
    .local v1, "cla":Ljava/lang/Class;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 401
    .local v3, "claArrayTypes":[Ljava/lang/Class;
    const-string v4, "get"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 402
    .local v4, "meth":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "dalvik.vm.stack-trace-file"

    aput-object v6, v2, v5

    .line 403
    .local v2, "arglist":[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 406
    .end local v1    # "cla":Ljava/lang/Class;
    .end local v2    # "arglist":[Ljava/lang/Object;
    .end local v3    # "claArrayTypes":[Ljava/lang/Class;
    .end local v4    # "meth":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 404
    :catchall_0
    move-exception v1

    .line 405
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "MonitorFileUtils"

    const-string v3, "getTraceFile"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    if-nez v0, :cond_0

    .line 408
    const-string v1, "/data/anr/traces.txt"

    return-object v1

    .line 410
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isAppAvailableSpace(J)Z
    .locals 10
    .param p0, "space"    # J

    .line 356
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 357
    .local v2, "dirFile":Ljava/io/File;
    move-object v2, v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 358
    return v3

    .line 357
    :cond_0
    move-object v0, v1

    .line 363
    .local v0, "statFs":Landroid/os/StatFs;
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 367
    nop

    .line 369
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x0

    .line 370
    .local v6, "availableCount":J
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v8, v1

    mul-long v4, v4, v8

    .line 371
    .local v4, "availableSpare":J
    cmp-long v1, p0, v4

    if-gez v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v3

    .line 364
    .end local v4    # "availableSpare":J
    .end local v6    # "availableCount":J
    :catchall_0
    move-exception v1

    .line 365
    .local v1, "t":Ljava/lang/Throwable;
    const-string v4, "MonitorFileUtils"

    const-string v5, "isAppAvailableSpace"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    return v3
.end method

.method public static isCanUseSdCard()Z
    .locals 3

    .line 316
    :try_start_0
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 317
    :catchall_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCanUseSdCard: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MonitorFileUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v1, 0x0

    return v1
.end method

.method public static isSDcardAvailableSpace(J)Z
    .locals 10
    .param p0, "space"    # J

    .line 337
    invoke-static {}, Lcom/alipay/mobile/monitor/util/FileUtils;->getSDPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 338
    .local v2, "dirPath":Ljava/lang/String;
    move-object v2, v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 339
    return v3

    .line 338
    :cond_0
    move-object v0, v1

    .line 344
    .local v0, "statFs":Landroid/os/StatFs;
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 348
    nop

    .line 350
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x4

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    .line 351
    .local v6, "availableCount":J
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v8, v1

    mul-long v4, v4, v8

    .line 352
    .local v4, "availableSpare":J
    cmp-long v1, p0, v4

    if-gez v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v3

    .line 345
    .end local v4    # "availableSpare":J
    .end local v6    # "availableCount":J
    :catchall_0
    move-exception v1

    .line 346
    .local v1, "t":Ljava/lang/Throwable;
    const-string v4, "MonitorFileUtils"

    const-string v5, "isSDcardAvailableSpace"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    return v3
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;

    .line 571
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    invoke-static {p0, p1}, Lcom/alipay/mobile/monitor/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 573
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 575
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    return-void

    .line 576
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "move file fail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0    # "src":Ljava/io/File;
    .end local p1    # "dst":Ljava/io/File;
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    .restart local p0    # "src":Ljava/io/File;
    .restart local p1    # "dst":Ljava/io/File;
    :catchall_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetFileName"    # Ljava/lang/String;

    .line 415
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    .line 418
    :cond_0
    const/4 v1, 0x0

    .line 419
    .local v1, "fi":Ljava/io/InputStream;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .local v2, "buf":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v4, v0

    .line 422
    .local v4, "resource":Landroid/content/res/Resources;
    move-object v4, v3

    if-nez v3, :cond_1

    .line 423
    return-object v0

    .line 425
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v1, v3

    .line 426
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    .line 427
    const/16 v3, 0x2000

    new-array v3, v3, [B

    const/4 v5, 0x0

    move v6, v5

    .line 429
    .local v3, "arrayOfByte":[B
    .local v6, "m":I
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v6, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 430
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v5, v6}, Ljava/lang/String;-><init>([BII)V

    .line 431
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    nop

    .end local v7    # "str":Ljava/lang/String;
    goto :goto_0

    .line 433
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 439
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    goto :goto_1

    .line 440
    :catchall_0
    move-exception v5

    .line 433
    :goto_1
    return-object v0

    .line 434
    .end local v3    # "arrayOfByte":[B
    .end local v4    # "resource":Landroid/content/res/Resources;
    .end local v6    # "m":I
    :catchall_1
    move-exception v3

    .line 435
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "MonitorFileUtils"

    const-string/jumbo v5, "readAssetFile"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 437
    nop

    .end local v3    # "e":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    .line 439
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 442
    :goto_2
    goto :goto_3

    .line 440
    :catchall_2
    move-exception v3

    goto :goto_2

    .line 445
    :cond_3
    :goto_3
    return-object v0

    .line 437
    :catchall_3
    move-exception v0

    if-eqz v1, :cond_4

    .line 439
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 442
    goto :goto_4

    .line 440
    :catchall_4
    move-exception v3

    .line 442
    :cond_4
    :goto_4
    throw v0

    .line 416
    .end local v1    # "fi":Ljava/io/InputStream;
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    :cond_5
    :goto_5
    return-object v0
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p0, "filePath"    # Ljava/io/File;

    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "stream":Ljava/io/InputStream;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .local v1, "buf":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 454
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 455
    const/16 v2, 0x2000

    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, v3

    .line 458
    .local v2, "data":[B
    .local v4, "length":I
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v4, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 459
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 460
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    nop

    .end local v5    # "str":Ljava/lang/String;
    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 470
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    goto :goto_1

    .line 471
    :catchall_0
    move-exception v5

    .line 462
    :goto_1
    return-object v3

    .line 464
    .end local v2    # "data":[B
    .end local v4    # "length":I
    :catchall_1
    move-exception v2

    .line 465
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "stream":Ljava/io/InputStream;
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local p0    # "filePath":Ljava/io/File;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 468
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "stream":Ljava/io/InputStream;
    .restart local v1    # "buf":Ljava/lang/StringBuilder;
    .restart local p0    # "filePath":Ljava/io/File;
    :catchall_2
    move-exception v2

    if-eqz v0, :cond_1

    .line 470
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 473
    goto :goto_2

    .line 471
    :catchall_3
    move-exception v3

    .line 473
    :cond_1
    :goto_2
    throw v2
.end method

.method public static readFileByteFully(Ljava/io/File;)[B
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .line 489
    const/4 v0, 0x0

    .line 492
    .local v0, "stream":Ljava/io/FileInputStream;
    if-eqz p0, :cond_5

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 495
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-nez v6, :cond_1

    .line 496
    new-array v1, v5, [B

    return-object v1

    .line 499
    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 500
    move-object v0, v1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 501
    .local v1, "avail":I
    const/4 v2, 0x0

    .line 502
    .local v2, "pos":I
    new-array v3, v1, [B

    const/4 v4, 0x0

    .line 505
    .local v3, "data":[B
    :goto_0
    array-length v6, v3

    sub-int/2addr v6, v2

    invoke-virtual {v0, v3, v2, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .line 506
    .local v4, "amt":I
    move v4, v6

    if-lez v6, :cond_3

    .line 510
    add-int/2addr v2, v4

    .line 511
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v6

    .line 513
    move v1, v6

    array-length v7, v3

    sub-int/2addr v7, v2

    if-le v6, v7, :cond_2

    .line 514
    add-int v6, v2, v1

    new-array v6, v6, [B

    .line 515
    .local v6, "tmp":[B
    invoke-static {v3, v5, v6, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 516
    move-object v3, v6

    .line 518
    .end local v4    # "amt":I
    .end local v6    # "tmp":[B
    :cond_2
    goto :goto_0

    .line 519
    :cond_3
    nop

    .line 527
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    goto :goto_1

    .line 528
    :catchall_0
    move-exception v4

    .line 519
    :goto_1
    return-object v3

    .line 521
    .end local v1    # "avail":I
    .end local v2    # "pos":I
    .end local v3    # "data":[B
    :catchall_1
    move-exception v1

    .line 522
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "file":Ljava/io/File;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 525
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_4

    .line 527
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 530
    goto :goto_2

    .line 528
    :catchall_3
    move-exception v2

    .line 530
    :cond_4
    :goto_2
    throw v1

    .line 493
    :cond_5
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public static readFileStringFully(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 479
    invoke-static {p0}, Lcom/alipay/mobile/monitor/util/FileUtils;->readFileByteFully(Ljava/io/File;)[B

    move-result-object v0

    .line 481
    .local v0, "data":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 483
    :catchall_0
    move-exception v1

    .line 484
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "isAppend"    # Z

    const/4 v0, 0x0

    .line 562
    .local v0, "data":[B
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 565
    nop

    .line 566
    invoke-static {p0, v0, p2}, Lcom/alipay/mobile/monitor/util/FileUtils;->writeFile(Ljava/io/File;[BZ)V

    .line 567
    return-void

    .line 563
    :catchall_0
    move-exception v1

    .line 564
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static writeFile(Ljava/io/File;[BZ)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .param p2, "isAppend"    # Z

    .line 536
    const/4 v0, 0x0

    .line 538
    .local v0, "stream":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 541
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v0, v1

    .line 542
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 543
    move-object v0, v1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 544
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 551
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    return-void

    .line 552
    :catchall_0
    move-exception v1

    .line 554
    return-void

    .line 546
    :catchall_1
    move-exception v1

    .line 547
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "stream":Ljava/io/OutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "data":[B
    .end local p2    # "isAppend":Z
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 549
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "stream":Ljava/io/OutputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "data":[B
    .restart local p2    # "isAppend":Z
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_1

    .line 551
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 554
    goto :goto_0

    .line 552
    :catchall_3
    move-exception v2

    .line 554
    :cond_1
    :goto_0
    throw v1
.end method
