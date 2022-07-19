.class public Lcom/mpaas/logging/cpu/CpuHelper;
.super Ljava/lang/Object;
.source "CpuHelper.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "mpaascpu"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .line 20
    const-string v0, "armeabi-v7a"

    sget-object v1, Lcom/mpaas/logging/cpu/CpuHelper;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 22
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/mpaas/logging/cpu/CpuHelper;->getRunningAbi()Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v1, "runningAbi":Ljava/lang/String;
    move-object v1, v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    sput-object v0, Lcom/mpaas/logging/cpu/CpuHelper;->a:Ljava/lang/String;

    goto :goto_0

    .line 26
    :cond_0
    sput-object v1, Lcom/mpaas/logging/cpu/CpuHelper;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .end local v1    # "runningAbi":Ljava/lang/String;
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    const-string v0, "error"

    sput-object v0, Lcom/mpaas/logging/cpu/CpuHelper;->a:Ljava/lang/String;

    .line 33
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    sget-object v0, Lcom/mpaas/logging/cpu/CpuHelper;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b()I
    .locals 2

    .line 37
    sget v0, Lcom/mpaas/logging/cpu/CpuHelper;->b:I

    if-nez v0, :cond_2

    .line 38
    invoke-static {}, Lcom/mpaas/logging/cpu/CpuHelper;->a()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "abi":Ljava/lang/String;
    const-string v1, "arm64-v8a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mips64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "x86_64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x40

    :goto_1
    sput v1, Lcom/mpaas/logging/cpu/CpuHelper;->b:I

    .line 41
    .end local v0    # "abi":Ljava/lang/String;
    :cond_2
    sget v0, Lcom/mpaas/logging/cpu/CpuHelper;->b:I

    return v0
.end method

.method public static native getRunningAbi()Ljava/lang/String;
.end method
