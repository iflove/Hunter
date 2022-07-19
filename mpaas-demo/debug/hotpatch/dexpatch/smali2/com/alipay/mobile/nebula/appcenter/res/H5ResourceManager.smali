.class public Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;
.super Ljava/lang/Object;
.source "H5ResourceManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ResourceManager"

.field private static final resMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->resMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getRaw(I)Ljava/lang/String;
    .locals 4
    .param p0, "resId"    # I

    const-class v0, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->resMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->readRaw(I)Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, "content":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .end local v2    # "content":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 23
    .end local p0    # "resId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static readRaw(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .line 65
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNebulaCoreResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->readRawFromResource(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readRawFromResource(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 11
    .param p0, "resId"    # I
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 33
    const-string v0, "exception detail"

    const-string v1, "H5ResourceManager"

    const/4 v2, 0x0

    .line 34
    .local v2, "text":Ljava/lang/String;
    const/4 v3, 0x0

    .line 35
    .local v3, "ips":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 37
    .local v4, "time":J
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    move-object v3, v6

    .line 39
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 40
    .local v6, "isr":Ljava/io/InputStreamReader;
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 41
    .local v7, "br":Ljava/io/BufferedReader;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v8, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 43
    .local v9, "line":Ljava/lang/String;
    :goto_0
    if-eqz v9, :cond_0

    .line 44
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const/16 v10, 0xa

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v10

    .line 52
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 54
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_1
    goto :goto_2

    .line 55
    :catchall_0
    move-exception v6

    .line 56
    .local v6, "t":Ljava/lang/Throwable;
    invoke-static {v1, v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "t":Ljava/lang/Throwable;
    goto :goto_1

    .line 49
    :catchall_1
    move-exception v6

    .line 50
    .restart local v6    # "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v7, "Exception"

    invoke-static {v1, v7, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 52
    .end local v6    # "t":Ljava/lang/Throwable;
    if-eqz v3, :cond_1

    .line 54
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 60
    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "readRaw elapse "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-object v2

    .line 52
    :catchall_2
    move-exception v6

    if-eqz v3, :cond_2

    .line 54
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 57
    goto :goto_3

    .line 55
    :catchall_3
    move-exception v7

    .line 56
    .local v7, "t":Ljava/lang/Throwable;
    invoke-static {v1, v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_3
    throw v6
.end method
