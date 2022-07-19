.class public Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/impl/PingTest$Ping;
.super Ljava/lang/Object;
.source "PingTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/impl/PingTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ping"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "result"    # Ljava/lang/String;

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const-string v0, "bytes from "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 68
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static runcmd(Ljava/lang/String;)I
    .locals 13
    .param p0, "cmd"    # Ljava/lang/String;

    .line 39
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .local v0, "runtime":Ljava/lang/Runtime;
    const/4 v1, 0x0

    move-object v2, v1

    .line 42
    .local v2, "proc":Ljava/lang/Process;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 44
    .local v4, "startTime":J
    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 45
    move-object v2, v6

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 47
    .local v6, "endTime":J
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 50
    .local v8, "inputStream":Ljava/io/InputStream;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 51
    .local v9, "reader":Ljava/io/BufferedReader;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v1, "line":Ljava/lang/String;
    .local v10, "resultBuilder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    if-eqz v11, :cond_0

    .line 54
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 57
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 58
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 59
    invoke-static {v11}, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/impl/PingTest$Ping;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 60
    sub-long v11, v6, v4

    long-to-int v12, v11

    return v12

    .line 62
    :cond_1
    const/4 v11, -0x1

    return v11
.end method
