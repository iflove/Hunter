.class public Lcom/alipay/euler/andfix/Compat;
.super Ljava/lang/Object;
.source "Compat.java"


# static fields
.field private static a:Lcom/alipay/euler/andfix/AndFixVM;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    sget-object v0, Lcom/alipay/euler/andfix/AndFixVM;->NotSupport:Lcom/alipay/euler/andfix/AndFixVM;

    sput-object v0, Lcom/alipay/euler/andfix/Compat;->a:Lcom/alipay/euler/andfix/AndFixVM;

    .line 41
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->b()Z

    move-result v0

    const-string v1, "Compat"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/alipay/euler/andfix/AndFix;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    const-string v0, "AndFix.setup() => false"

    invoke-static {v1, v0}, Lcom/alipay/euler/andfix/log/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/AndFixVM;->NotSupport:Lcom/alipay/euler/andfix/AndFixVM;

    sput-object v0, Lcom/alipay/euler/andfix/Compat;->a:Lcom/alipay/euler/andfix/AndFixVM;

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AndFix.Compat: sAndFixVM="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/euler/andfix/Compat;->a:Lcom/alipay/euler/andfix/AndFixVM;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/euler/andfix/Compat;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 2

    .line 68
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isYunOS()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 69
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isAOC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/alipay/euler/andfix/AndFixVM;->AOC:Lcom/alipay/euler/andfix/AndFixVM;

    sput-object v0, Lcom/alipay/euler/andfix/Compat;->a:Lcom/alipay/euler/andfix/AndFixVM;

    .line 71
    return v1

    .line 76
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/AndFixVM;->NotSupport:Lcom/alipay/euler/andfix/AndFixVM;

    sput-object v0, Lcom/alipay/euler/andfix/Compat;->a:Lcom/alipay/euler/andfix/AndFixVM;

    .line 77
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_1
    return v1
.end method

.method private static b()Z
    .locals 4

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    const/4 v1, 0x1

    const/16 v2, 0x8

    if-lt v0, v2, :cond_2

    .line 90
    const/16 v3, 0x15

    if-lt v0, v2, :cond_0

    if-ge v0, v3, :cond_0

    .line 91
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    sget-object v0, Lcom/alipay/euler/andfix/AndFixVM;->Dalvik:Lcom/alipay/euler/andfix/AndFixVM;

    sput-object v0, Lcom/alipay/euler/andfix/Compat;->a:Lcom/alipay/euler/andfix/AndFixVM;

    .line 110
    goto :goto_0

    .line 112
    :cond_0
    if-lt v0, v3, :cond_2

    const/16 v2, 0x1b

    if-gt v0, v2, :cond_2

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-ne v0, v2, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "O"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    :cond_1
    sget-object v0, Lcom/alipay/euler/andfix/AndFixVM;->ART:Lcom/alipay/euler/andfix/AndFixVM;

    sput-object v0, Lcom/alipay/euler/andfix/Compat;->a:Lcom/alipay/euler/andfix/AndFixVM;

    .line 118
    goto :goto_0

    .line 121
    :cond_2
    const/4 v1, 0x0

    .line 123
    :goto_0
    return v1
.end method

.method public static getAndFixVM()Lcom/alipay/euler/andfix/AndFixVM;
    .locals 1

    .line 55
    sget-object v0, Lcom/alipay/euler/andfix/Compat;->a:Lcom/alipay/euler/andfix/AndFixVM;

    return-object v0
.end method

.method public static isAOC()Z
    .locals 8

    .line 153
    const-string v0, "Compat"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 154
    const-string v3, "get"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 155
    new-array v5, v4, [Ljava/lang/Object;

    const-string/jumbo v6, "persist.sys.dalvik.vm.lib"

    aput-object v6, v5, v1

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "runtimeLib is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    const-string v6, "libart.so"

    if-eqz v5, :cond_0

    .line 159
    :try_start_1
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    return v4

    .line 164
    :cond_0
    new-array v5, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "persist.sys.dalvik.vm.lib.2"

    aput-object v7, v5, v1

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "runtimeLib2 is "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    if-eqz v2, :cond_1

    .line 167
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_1

    .line 168
    return v4

    .line 173
    :cond_1
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 175
    :goto_0
    return v1
.end method

.method public static isSupport()Z
    .locals 2

    .line 64
    sget-object v0, Lcom/alipay/euler/andfix/Compat;->a:Lcom/alipay/euler/andfix/AndFixVM;

    iget v0, v0, Lcom/alipay/euler/andfix/AndFixVM;->value:I

    sget-object v1, Lcom/alipay/euler/andfix/AndFixVM;->NotSupport:Lcom/alipay/euler/andfix/AndFixVM;

    iget v1, v1, Lcom/alipay/euler/andfix/AndFixVM;->value:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized isX86CPU()Z
    .locals 8

    const-class v0, Lcom/alipay/euler/andfix/Compat;

    monitor-enter v0

    .line 206
    :try_start_0
    sget-object v1, Lcom/alipay/euler/andfix/Compat;->b:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    if-nez v1, :cond_4

    .line 207
    nop

    .line 209
    nop

    .line 210
    nop

    .line 212
    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "getprop ro.product.cpu.abi"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 213
    :try_start_2
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 214
    :try_start_3
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 215
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 216
    const-string/jumbo v5, "x86"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    const-string v5, "Compat"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AndFix.Compat: cpu: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/alipay/euler/andfix/Compat;->b:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 224
    :cond_0
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 226
    goto :goto_0

    .line 225
    :catchall_0
    move-exception v1

    .line 231
    :goto_0
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 233
    goto :goto_1

    .line 232
    :catchall_1
    move-exception v1

    .line 236
    :goto_1
    if-eqz v2, :cond_3

    .line 238
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    goto :goto_5

    .line 220
    :catchall_2
    move-exception v1

    move-object v1, v4

    goto :goto_2

    :catchall_3
    move-exception v4

    goto :goto_2

    :catchall_4
    move-exception v3

    move-object v3, v1

    goto :goto_2

    :catchall_5
    move-exception v2

    move-object v2, v1

    move-object v3, v2

    .line 222
    :goto_2
    if-eqz v1, :cond_1

    .line 224
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 226
    goto :goto_3

    .line 225
    :catchall_6
    move-exception v1

    .line 229
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 231
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 233
    goto :goto_4

    .line 232
    :catchall_7
    move-exception v1

    .line 236
    :cond_2
    :goto_4
    if-eqz v2, :cond_3

    .line 238
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 240
    :goto_5
    goto :goto_6

    .line 239
    :catchall_8
    move-exception v1

    goto :goto_5

    .line 243
    :cond_3
    :goto_6
    :try_start_b
    sget-object v1, Lcom/alipay/euler/andfix/Compat;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v1, :cond_4

    .line 244
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/alipay/euler/andfix/Compat;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 247
    :cond_4
    sget-object v1, Lcom/alipay/euler/andfix/Compat;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    monitor-exit v0

    return v1

    .line 205
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isYunOS()Z
    .locals 7

    .line 131
    nop

    .line 132
    nop

    .line 134
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "get"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 136
    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v5, "ro.yunos.version"

    aput-object v5, v4, v0

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    :try_start_1
    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "java.vm.name"

    aput-object v6, v5, v0

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    move-object v2, v3

    goto :goto_0

    .line 138
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v2

    .line 141
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lemur"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz v4, :cond_2

    .line 142
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 143
    :cond_1
    return v1

    .line 145
    :cond_2
    return v0
.end method
