.class public final Lcom/alipay/mobile/quinox/framemonitor/tool/b;
.super Ljava/lang/Object;
.source "ProcFsReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/framemonitor/tool/b$a;
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/quinox/framemonitor/tool/b;->a:I

    return-void
.end method

.method private a(I)Lcom/alipay/mobile/quinox/framemonitor/cpu/f;
    .locals 9
    .param p1, "pid"    # I

    const-string v0, "ProcFsReader"

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/proc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/framemonitor/tool/b;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/stat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "filePath":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/alipay/mobile/quinox/framemonitor/tool/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    .line 67
    .local v4, "line":Ljava/lang/String;
    move-object v4, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "fail read "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-object v2

    .line 71
    :cond_0
    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    move v6, v5

    .line 72
    .local v6, "rightIndex":I
    move v6, v3

    const-string v7, ": "

    const/4 v8, -0x1

    if-ne v3, v8, :cond_1

    .line 73
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "invalid "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-object v2

    .line 78
    :cond_1
    const-string v3, " ("

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 79
    .local v5, "leftIndex":I
    move v5, v3

    if-eq v3, v8, :cond_3

    add-int/lit8 v3, v5, -0x2

    if-lt v3, v6, :cond_2

    goto :goto_0

    .line 84
    :cond_2
    new-instance v3, Lcom/alipay/mobile/quinox/framemonitor/cpu/f;

    invoke-direct {v3}, Lcom/alipay/mobile/quinox/framemonitor/cpu/f;-><init>()V

    move-object v7, v2

    .line 85
    .local v7, "procInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/f;
    move-object v7, v3

    iput p1, v3, Lcom/alipay/mobile/quinox/framemonitor/cpu/f;->a:I

    .line 86
    add-int/lit8 v3, v5, 0x2

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/f;->b:Ljava/lang/String;

    .line 87
    iput-object v4, v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/f;->c:Ljava/lang/String;

    .line 88
    return-object v7

    .line 80
    .end local v7    # "procInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/f;
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "invalid header, "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    return-object v2

    .line 89
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "leftIndex":I
    .end local v6    # "rightIndex":I
    :catchall_0
    move-exception v3

    .line 90
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parse "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    return-object v2
.end method

.method private a(II)Lcom/alipay/mobile/quinox/framemonitor/cpu/g;
    .locals 6
    .param p1, "pid"    # I
    .param p2, "tid"    # I

    const-string v0, "ProcFsReader"

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/proc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/framemonitor/tool/b;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/task/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/stat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "filePath":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/alipay/mobile/quinox/framemonitor/tool/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    .line 99
    .local v4, "line":Ljava/lang/String;
    move-object v4, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "fail read "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-object v2

    .line 103
    :cond_0
    new-instance v3, Lcom/alipay/mobile/quinox/framemonitor/cpu/g;

    invoke-direct {v3}, Lcom/alipay/mobile/quinox/framemonitor/cpu/g;-><init>()V

    move-object v5, v2

    .line 104
    .local v5, "threadInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/g;
    move-object v5, v3

    iput p2, v3, Lcom/alipay/mobile/quinox/framemonitor/cpu/g;->a:I

    .line 105
    iput-object v4, v5, Lcom/alipay/mobile/quinox/framemonitor/cpu/g;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    return-object v5

    .line 107
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "threadInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/g;
    :catchall_0
    move-exception v3

    .line 108
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parse "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .end local v3    # "e":Ljava/lang/Throwable;
    return-object v2
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v1

    .line 139
    .local v3, "file":Ljava/io/File;
    move-object v3, v2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 150
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 140
    return-object v1

    .line 142
    :cond_0
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v5, 0x100

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 143
    move-object v0, v2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 143
    return-object v1

    .line 146
    .end local v3    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 144
    :catch_0
    move-exception v2

    goto :goto_1

    .line 146
    :catchall_1
    move-exception v2

    move-object v3, v1

    :goto_0
    move-object v2, v3

    .line 147
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v3, "ProcFsReader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fail read "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 150
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 148
    return-object v1

    .line 150
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v1

    .line 144
    :catch_1
    move-exception v2

    move-object v3, v1

    :goto_1
    move-object v2, v3

    .line 150
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 145
    return-object v1
.end method

.method private static b()Landroidx/collection/CircularIntArray;
    .locals 4

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    .line 117
    .local v0, "initialCapacity":I
    :goto_0
    new-instance v1, Landroidx/collection/CircularIntArray;

    invoke-direct {v1, v0}, Landroidx/collection/CircularIntArray;-><init>(I)V

    .line 118
    .local v1, "pids":Landroidx/collection/CircularIntArray;
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/alipay/mobile/quinox/framemonitor/tool/b$a;

    invoke-direct {v3, v1}, Lcom/alipay/mobile/quinox/framemonitor/tool/b$a;-><init>(Landroidx/collection/CircularIntArray;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 119
    return-object v1
.end method

.method private b(I)Landroidx/collection/CircularIntArray;
    .locals 4
    .param p1, "pid"    # I

    .line 124
    new-instance v0, Landroidx/collection/CircularIntArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroidx/collection/CircularIntArray;-><init>(I)V

    .line 125
    .local v0, "pids":Landroidx/collection/CircularIntArray;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/proc/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/framemonitor/tool/b;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/task"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/mobile/quinox/framemonitor/tool/b$a;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/quinox/framemonitor/tool/b$a;-><init>(Landroidx/collection/CircularIntArray;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 126
    return-object v0
.end method

.method private c(I)Ljava/lang/String;
    .locals 1
    .param p1, "pid"    # I

    .line 131
    iget v0, p0, Lcom/alipay/mobile/quinox/framemonitor/tool/b;->a:I

    if-ne v0, p1, :cond_0

    const-string v0, "self"

    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/quinox/framemonitor/cpu/a;
    .locals 7

    .line 36
    new-instance v0, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;-><init>()V

    .line 38
    const-string v1, "/proc/stat"

    invoke-static {v1}, Lcom/alipay/mobile/quinox/framemonitor/tool/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;->a:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/alipay/mobile/quinox/framemonitor/tool/b;->b()Landroidx/collection/CircularIntArray;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->size()I

    move-result v2

    .line 42
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 43
    invoke-virtual {v1, v4}, Landroidx/collection/CircularIntArray;->get(I)I

    move-result v5

    .line 44
    invoke-direct {p0, v5}, Lcom/alipay/mobile/quinox/framemonitor/tool/b;->a(I)Lcom/alipay/mobile/quinox/framemonitor/cpu/f;

    move-result-object v5

    .line 45
    if-eqz v5, :cond_0

    .line 46
    iget-object v6, v0, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;->b:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 50
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/quinox/framemonitor/tool/b;->a:I

    invoke-direct {p0, v1}, Lcom/alipay/mobile/quinox/framemonitor/tool/b;->b(I)Landroidx/collection/CircularIntArray;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->size()I

    move-result v2

    .line 52
    nop

    :goto_1
    if-ge v3, v2, :cond_3

    .line 53
    invoke-virtual {v1, v3}, Landroidx/collection/CircularIntArray;->get(I)I

    move-result v4

    .line 54
    iget v5, p0, Lcom/alipay/mobile/quinox/framemonitor/tool/b;->a:I

    invoke-direct {p0, v5, v4}, Lcom/alipay/mobile/quinox/framemonitor/tool/b;->a(II)Lcom/alipay/mobile/quinox/framemonitor/cpu/g;

    move-result-object v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    iget-object v5, v0, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 59
    :cond_3
    return-object v0
.end method
