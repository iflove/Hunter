.class public final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;
.super Ljava/lang/Object;
.source "CpuAbis.java"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;->a:Ljava/util/List;

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 32
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;->a:Ljava/util/List;

    const-string v1, "getprop ro.product.cpu.abilist"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 34
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;->a:Ljava/util/List;

    const-string v1, "getprop ro.product.cpu.abi"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 35
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;->a:Ljava/util/List;

    const-string v1, "getprop ro.product.cpu.abi2"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 37
    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;->a:Ljava/util/List;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "abis"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CpuAbis"

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, "process":Ljava/lang/Process;
    const/4 v2, 0x0

    .line 42
    .local v2, "ir":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 44
    .local v3, "input":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    move-object v1, v4

    .line 45
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 46
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 47
    move-object v3, v4

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 48
    .local v5, "abi":Ljava/lang/String;
    move-object v5, v4

    if-eqz v4, :cond_0

    .line 49
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 50
    move-object v5, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 59
    .end local v5    # "abi":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v4

    .line 61
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    goto :goto_1

    .line 68
    :catchall_1
    move-exception v4

    .line 69
    .restart local v4    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_1
    if-eqz v1, :cond_3

    .line 75
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 78
    return-void

    .line 76
    :catchall_2
    move-exception v4

    .line 77
    .restart local v4    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .end local v4    # "e":Ljava/lang/Throwable;
    return-void

    .line 54
    :catchall_3
    move-exception v4

    .line 55
    .restart local v4    # "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 57
    .end local v4    # "e":Ljava/lang/Throwable;
    if-eqz v3, :cond_1

    .line 59
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 62
    goto :goto_2

    .line 60
    :catchall_4
    move-exception v4

    .line 61
    .restart local v4    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 67
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 70
    goto :goto_3

    .line 68
    :catchall_5
    move-exception v4

    .line 69
    .restart local v4    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 75
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 78
    return-void

    .line 81
    :cond_3
    return-void

    .line 57
    :catchall_6
    move-exception v4

    if-eqz v3, :cond_4

    .line 59
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 62
    goto :goto_4

    .line 60
    :catchall_7
    move-exception v5

    .line 61
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    .line 67
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 70
    goto :goto_5

    .line 68
    :catchall_8
    move-exception v5

    .line 69
    .restart local v5    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    .line 75
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 78
    goto :goto_6

    .line 76
    :catchall_9
    move-exception v5

    .line 77
    .restart local v5    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_6
    :goto_6
    throw v4
.end method
