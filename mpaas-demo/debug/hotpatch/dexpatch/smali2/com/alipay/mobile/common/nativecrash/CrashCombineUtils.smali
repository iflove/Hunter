.class public Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils;
.super Ljava/lang/Object;
.source "CrashCombineUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils$FlatComparator;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_INFO_LEN:I = 0x100000

.field public static final JAVA_SUFFIX:Ljava/lang/String; = "java.log"

.field public static final JNI_SUFFIX:Ljava/lang/String; = "jni.log"

.field public static final TOMB:Ljava/lang/String; = "CrashSDK"

.field private static final a:Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils$FlatComparator;

.field public static crashTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils;->crashTime:J

    .line 118
    new-instance v0, Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils$FlatComparator;

    invoke-direct {v0}, Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils$FlatComparator;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils;->a:Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils$FlatComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UserTrackReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "stack"    # Ljava/lang/String;

    .line 122
    if-eqz p0, :cond_2

    .line 123
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 124
    .local v1, "infoFile":Ljava/io/File;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-static {v1}, Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils;->b(Ljava/io/File;)[B

    move-result-object v0

    .line 126
    .local v0, "bytes":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "read: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " org: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    const-string v3, "MiniDump"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    array-length v2, v0

    if-lez v2, :cond_0

    .line 131
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 132
    :catchall_0
    move-exception v2

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error: byte to string, logType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 136
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error: none byte, logType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 139
    .end local v0    # "bytes":[B
    :cond_1
    return-object p1

    .line 142
    .end local v1    # "infoFile":Ljava/io/File;
    :cond_2
    return-object p1
.end method

.method private static a(Ljava/io/File;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 99
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils;->crashTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 103
    return-void
.end method

.method private static b(Ljava/io/File;)[B
    .locals 5

    .line 149
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    .line 150
    const/high16 v0, 0x100000

    if-le v1, v0, :cond_0

    const/high16 v1, 0x100000

    .line 151
    :cond_0
    new-array v0, v1, [B

    .line 152
    const/4 v2, 0x0

    .line 154
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :try_start_1
    invoke-virtual {v4, v0, v3, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result p0

    .line 156
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 157
    if-lez p0, :cond_1

    if-ge p0, v1, :cond_1

    .line 158
    new-array v1, p0, [B

    .line 159
    invoke-static {v0, v3, v1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    nop

    .line 161
    goto :goto_1

    :cond_1
    if-eq p0, v1, :cond_2

    .line 162
    new-array v0, v3, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    :cond_2
    move-object v1, v0

    goto :goto_1

    .line 164
    :catch_0
    move-exception p0

    move-object v2, v4

    goto :goto_0

    :catch_1
    move-exception p0

    .line 165
    :goto_0
    new-array v1, v3, [B

    .line 166
    if-eqz v2, :cond_3

    .line 168
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 171
    goto :goto_1

    .line 169
    :catch_2
    move-exception p0

    .line 173
    :cond_3
    :goto_1
    return-object v1
.end method

.method public static deleteFileByPath(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 178
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    return-void

    .line 182
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 183
    .local v1, "file":Ljava/io/File;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 191
    return-void
.end method

.method public static getCrashTime()J
    .locals 2

    .line 106
    sget-wide v0, Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils;->crashTime:J

    return-wide v0
.end method

.method public static getLatestTombAndDelOld(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .line 33
    const-string v0, "CrashCombineUtils"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 34
    const-string v2, "getLatestTombAndDelOld, context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-object v1

    .line 37
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "app_crash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 41
    .local v3, "parent":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 44
    goto :goto_0

    .line 42
    :catch_0
    move-exception v4

    .line 46
    :goto_0
    if-nez v3, :cond_1

    .line 47
    const-string v4, "getLatestTombAndDelOld, parent is null"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-object v1

    .line 50
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 51
    .local v4, "files":[Ljava/io/File;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v5, "sortFiles":Ljava/util/List;
    array-length v6, v4

    const/4 v7, 0x0

    move-object v8, v1

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v4, v7

    .line 53
    .local v8, "sub":Ljava/io/File;
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v8    # "sub":Ljava/io/File;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 55
    :cond_2
    sget-object v6, Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils;->a:Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils$FlatComparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 57
    const/4 v6, 0x0

    .line 59
    .local v6, "latestTombFile":Ljava/io/File;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v7, "uselessFiles":Ljava/util/List;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 62
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    .line 63
    .local v8, "file":Ljava/io/File;
    move-object v8, v10

    if-eqz v10, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 64
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "CrashSDK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 65
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "jni.log"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 66
    move-object v6, v8

    goto :goto_3

    .line 67
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "java.log"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 68
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 71
    :cond_4
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v8    # "file":Ljava/io/File;
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 76
    .end local v9    # "i":I
    :cond_6
    if-nez v6, :cond_7

    .line 77
    return-object v1

    .line 79
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getLatestTombAndDelOld, latestTombFile = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils;->UserTrackReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, "res":Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils;->a(Ljava/io/File;)V

    .line 82
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 85
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    .line 86
    .local v1, "file":Ljava/io/File;
    move-object v1, v10

    if-eqz v10, :cond_8

    .line 87
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getLatestTombAndDelOld, delete useless file"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " result:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .end local v1    # "file":Ljava/io/File;
    :cond_8
    goto :goto_4

    .line 92
    :cond_9
    goto :goto_5

    .line 90
    :catchall_0
    move-exception v0

    .line 94
    :goto_5
    return-object v8
.end method
