.class public Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;
.super Ljava/lang/Object;
.source "H5PerformanceUtils.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/InstantiationError;

    const-string v1, "Must not instantiate this class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllThreadsTraces()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    const-string v0, "H5PerformanceUtils"

    const-string v1, "\n"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v2, "traces":Ljava/util/List;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v4

    move-object v5, v3

    .line 126
    .local v5, "allTraces":Ljava/util/Map;
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v6, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 127
    .local v7, "entry":Ljava/util/Map$Entry;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    .local v8, "sb":Ljava/lang/StringBuilder;
    :try_start_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Thread;

    move-object v6, v9

    .line 130
    .local v6, "key":Ljava/lang/Thread;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/StackTraceElement;

    .line 131
    .local v9, "stackTraces":[Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    .line 132
    .local v10, "threadName":Ljava/lang/String;
    const-string v11, "ThreadName="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    array-length v11, v9

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_0

    aget-object v13, v9, v12

    .line 136
    .local v13, "stackTrace":Ljava/lang/StackTraceElement;
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    nop

    .end local v13    # "stackTrace":Ljava/lang/StackTraceElement;
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 140
    .end local v6    # "key":Ljava/lang/Thread;
    :cond_0
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .end local v9    # "stackTraces":[Ljava/lang/StackTraceElement;
    .end local v10    # "threadName":Ljava/lang/String;
    goto :goto_0

    .line 142
    :catchall_0
    move-exception v9

    .line 143
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v9, "single thread trace dump error"

    invoke-static {v0, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    .end local v6    # "t":Ljava/lang/Throwable;
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 149
    .end local v5    # "allTraces":Ljava/util/Map;
    :cond_1
    nop

    .line 151
    return-object v2

    .line 146
    :catchall_1
    move-exception v1

    .line 147
    .local v1, "t":Ljava/lang/Throwable;
    const-string v4, "getAllStackTraces"

    invoke-static {v0, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    return-object v3
.end method

.method public static getNumCores()I
    .locals 3

    .line 104
    sget v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->a:I

    if-nez v0, :cond_0

    .line 107
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 109
    .local v1, "dir":Ljava/io/File;
    new-instance v2, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils$1CpuFilter;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils$1CpuFilter;-><init>()V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 111
    array-length v0, v0

    sput v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v1    # "dir":Ljava/io/File;
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5PerformanceUtils"

    const-string v2, "getNumCores exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    const/4 v1, 0x1

    sput v1, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->a:I

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->a:I

    return v0
.end method

.method public static getRamSize()J
    .locals 7

    .line 68
    const-string v0, "H5PerformanceUtils"

    const/4 v1, 0x0

    .line 70
    .local v1, "br":Ljava/io/BufferedReader;
    const-wide/16 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/meminfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 71
    move-object v1, v4

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 72
    .local v5, "totalMemInfo":Ljava/lang/String;
    move-object v5, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 82
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    goto :goto_0

    .line 83
    :catch_0
    move-exception v4

    .line 84
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    return-wide v2

    .line 75
    :cond_0
    :try_start_2
    const-string v4, "\\s+"

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 76
    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 85
    goto :goto_1

    .line 83
    :catch_1
    move-exception v4

    .line 84
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    return-wide v2

    .line 80
    .end local v5    # "totalMemInfo":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 77
    :catch_2
    move-exception v4

    .line 78
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 80
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 82
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 85
    :goto_2
    goto :goto_3

    .line 83
    :catch_3
    move-exception v4

    .line 84
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 88
    :cond_1
    :goto_3
    return-wide v2

    .line 80
    :goto_4
    if-eqz v1, :cond_2

    .line 82
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 85
    goto :goto_5

    .line 83
    :catch_4
    move-exception v3

    .line 84
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_5
    throw v2
.end method

.method public static takeScreenShot(Lcom/alipay/mobile/h5container/api/H5Page;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 33
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 34
    return-object v0

    .line 37
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getRootView()Landroid/view/View;

    move-result-object v1

    move-object v2, v0

    .line 38
    .local v2, "pageRootView":Landroid/view/View;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 39
    return-object v0

    .line 41
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 42
    .local v1, "width":I
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 43
    .local v3, "height":I
    if-lez v1, :cond_3

    if-gtz v3, :cond_2

    goto :goto_0

    .line 48
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 50
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/os/ConditionVariable;

    invoke-direct {v5}, Landroid/os/ConditionVariable;-><init>()V

    .line 51
    .local v5, "cv":Landroid/os/ConditionVariable;
    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v4, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 52
    new-instance v6, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils$1;

    invoke-direct {v6, v2, v4, v5}, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils$1;-><init>(Landroid/view/View;Landroid/graphics/Canvas;Landroid/os/ConditionVariable;)V

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 59
    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    .line 60
    return-object v0

    .line 44
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "cv":Landroid/os/ConditionVariable;
    :cond_3
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cannot takeScreenShot for url "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "H5PerformanceUtils"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-object v0
.end method
