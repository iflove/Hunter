.class public Lcom/alipay/mobile/common/transport/utils/SocketUtil;
.super Ljava/lang/Object;
.source "SocketUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Class;

.field private static b:Ljava/lang/Class;

.field private static c:Ljava/lang/Class;

.field private static d:Ljava/lang/Object;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/Integer;

.field private static k:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a()Ljava/lang/Class;
    .locals 3

    .line 143
    const-string v0, "SocketUtil"

    sget-object v1, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->a:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 144
    return-object v1

    .line 147
    :cond_0
    :try_start_0
    const-string v1, "libcore.io.Libcore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 148
    sput-object v1, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->a:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 149
    const-string v1, "libcoreClass loaded , but be null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_1
    goto :goto_0

    .line 151
    :catchall_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "getLibcoreClass exception."

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final a(Ljava/io/FileDescriptor;II)Ljava/lang/Integer;
    .locals 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I

    const-string v0, "SocketUtil"

    .line 92
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->d()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 93
    .local v3, "tmpGetSockoptTimevalMethod":Ljava/lang/reflect/Method;
    move-object v3, v1

    if-nez v1, :cond_0

    .line 94
    return-object v2

    .line 96
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->j()Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v4, v2

    .line 97
    .local v4, "tmpToMillisMethod":Ljava/lang/reflect/Method;
    move-object v4, v1

    if-nez v1, :cond_1

    .line 98
    return-object v2

    .line 101
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->b()Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 102
    .local v1, "structTimevalObj":Ljava/lang/Object;
    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 103
    .local v5, "timeval":Ljava/lang/Long;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getSockoptTimeval is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 105
    .end local v1    # "structTimevalObj":Ljava/lang/Object;
    .end local v5    # "timeval":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Throwable;
    const-string v5, "getSockoptTimeval fail"

    invoke-static {v0, v5, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v2
.end method

.method private static final a(Ljava/net/Socket;)Ljava/lang/Integer;
    .locals 4
    .param p0, "socket"    # Ljava/net/Socket;

    .line 73
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;->getInstance(Ljava/net/Socket;)Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 74
    .local v2, "sndTimeoutInitModel":Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;
    move-object v2, v0

    iget-boolean v0, v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;->result:Z

    if-nez v0, :cond_0

    .line 75
    return-object v1

    .line 77
    :cond_0
    iget-object v0, v2, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;->fileDescriptor:Ljava/io/FileDescriptor;

    iget-object v1, v2, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;->sol_socket:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v2, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;->so_sndtimeo:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->a(Ljava/io/FileDescriptor;II)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static a(J)Ljava/lang/Object;
    .locals 6
    .param p0, "timeoutMs"    # J

    .line 130
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->f()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 131
    .local v2, "tmpFromMillisMethod":Ljava/lang/reflect/Method;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 132
    return-object v1

    .line 135
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->e()Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "SocketUtil"

    const-string v4, "invoke fromMillis fail."

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object v1
.end method

.method private static final a(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "socketClass"    # Ljava/lang/Class;

    .line 330
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 331
    return-object v0

    .line 333
    :cond_0
    const/4 v0, 0x0

    const-string v1, "SocketUtil"

    if-nez p0, :cond_1

    .line 334
    const-string v2, "Illegal argument class is null "

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-object v0

    .line 337
    :cond_1
    const-class v2, Ljava/net/Socket;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal argument class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-object v0

    .line 342
    :cond_2
    :try_start_0
    const-string v0, "getFileDescriptor$"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 343
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->i:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "Get getFileDescriptor$ method fail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->i:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static final a(Ljava/io/FileDescriptor;IIJ)Z
    .locals 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .param p3, "timeoutMs"    # J

    .line 112
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 113
    .local v2, "tmpSetsockoptTimevalMethod":Ljava/lang/reflect/Method;
    move-object v2, v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 114
    return v3

    .line 116
    :cond_0
    invoke-static {p3, p4}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->a(J)Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v1, "structTimevalObj":Ljava/lang/Object;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 118
    return v3

    .line 121
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->b()Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    return v6

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Throwable;
    const-string v4, "SocketUtil"

    const-string v5, "SetsockoptTimeval fail"

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    return v3
.end method

.method static synthetic access$000()Ljava/lang/Integer;
    .locals 1

    .line 17
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->h()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Integer;
    .locals 1

    .line 17
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->i()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;

    .line 17
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final b()Ljava/lang/Object;
    .locals 6

    .line 158
    const-string v0, "SocketUtil"

    sget-object v1, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->d:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 159
    return-object v1

    .line 161
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->a()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 162
    .local v3, "tmpLibcoreClass":Ljava/lang/Class;
    move-object v3, v1

    if-nez v1, :cond_1

    .line 163
    return-object v2

    .line 166
    :cond_1
    :try_start_0
    const-string/jumbo v1, "os"

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v4, v2

    .line 167
    .local v4, "osField":Ljava/lang/reflect/Field;
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 168
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 169
    sput-object v1, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->d:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 170
    const-string/jumbo v1, "os get finish , but be null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_2
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 173
    .end local v4    # "osField":Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Throwable;
    const-string v4, "getOsField fail."

    invoke-static {v0, v4, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    return-object v2
.end method

.method private static final c()Ljava/lang/reflect/Method;
    .locals 8

    .line 180
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 181
    return-object v0

    .line 183
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->b()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 184
    .local v2, "osObject":Ljava/lang/Object;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 185
    return-object v1

    .line 187
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->e()Ljava/lang/Class;

    move-result-object v0

    move-object v3, v1

    .line 188
    .local v3, "tmpStructTimevalClass":Ljava/lang/Class;
    move-object v3, v0

    if-nez v0, :cond_2

    .line 189
    return-object v1

    .line 192
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setsockoptTimeval"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/io/FileDescriptor;

    aput-object v6, v4, v5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 193
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "SocketUtil"

    const-string v4, "get setsockoptTimeval method fail."

    invoke-static {v1, v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->e:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static final d()Ljava/lang/reflect/Method;
    .locals 7

    .line 201
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 202
    return-object v0

    .line 204
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->b()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 205
    .local v2, "osObject":Ljava/lang/Object;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 206
    return-object v1

    .line 209
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getsockoptTimeval"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/io/FileDescriptor;

    aput-object v5, v3, v4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 210
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->f:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "SocketUtil"

    const-string v3, "get getSockoptTimeval method fail."

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->f:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method protected static doSetSndTimeOut(Ljava/net/Socket;J)Z
    .locals 4
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "timeoutMs"    # J

    .line 82
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;->getInstance(Ljava/net/Socket;)Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;

    move-result-object v0

    const/4 v1, 0x0

    .line 83
    .local v1, "sndTimeoutInitModel":Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;
    move-object v1, v0

    iget-boolean v0, v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;->result:Z

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    return v0

    .line 88
    :cond_0
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;->fileDescriptor:Ljava/io/FileDescriptor;

    iget-object v2, v1, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;->sol_socket:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;->so_sndtimeo:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v2, v3, p1, p2}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->a(Ljava/io/FileDescriptor;IIJ)Z

    move-result v0

    return v0
.end method

.method private static final e()Ljava/lang/Class;
    .locals 4

    .line 218
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 219
    return-object v0

    .line 221
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const-string v2, "SocketUtil"

    if-ge v0, v1, :cond_1

    .line 223
    :try_start_0
    const-string v0, "libcore.io.StructTimeval"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->b:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Classload libcore.io.StructTimeval fail. SDK_INT:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 229
    :cond_1
    :try_start_1
    const-string v0, "android.system.StructTimeval"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->b:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 232
    goto :goto_1

    .line 230
    :catchall_1
    move-exception v0

    .line 231
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Classload android.system.StructTimeval fail. SDK_INT:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->b:Ljava/lang/Class;

    return-object v0
.end method

.method private static final f()Ljava/lang/reflect/Method;
    .locals 7

    .line 238
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 239
    return-object v0

    .line 241
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->e()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 242
    .local v2, "tmpStructTimevalClass":Ljava/lang/Class;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 243
    return-object v1

    .line 246
    :cond_1
    :try_start_0
    const-string v0, "fromMillis"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 247
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->g:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 248
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->g:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 249
    :catchall_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "SocketUtil"

    const-string v4, "getDeclaredMethod fromMillis fail"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object v1
.end method

.method private static final g()Ljava/lang/Class;
    .locals 3

    .line 256
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->c:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 257
    return-object v0

    .line 260
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 261
    const-string v0, "libcore.io.OsConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->c:Ljava/lang/Class;

    goto :goto_0

    .line 263
    :cond_1
    const-string v0, "android.system.OsConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->c:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class load OsConstants fail. sdk: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SocketUtil"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public static final getSndTimeOut(Ljava/net/Socket;)Ljava/lang/Integer;
    .locals 5
    .param p0, "socket"    # Ljava/net/Socket;

    const-string v0, "SocketUtil"

    .line 56
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SET_SND_TIMEOUT_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v4, "T"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    .line 57
    .local v3, "suc":Z
    if-nez v2, :cond_0

    .line 58
    const-string v2, "getSndTimeOut. SET_SND_TIMEOUT_SWITCH off"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-object v1

    .line 61
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->a(Ljava/net/Socket;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 62
    .end local v3    # "suc":Z
    :catchall_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "getSndTimeOut fail"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .end local v2    # "e":Ljava/lang/Throwable;
    return-object v1
.end method

.method private static final h()Ljava/lang/Integer;
    .locals 6

    .line 272
    const-string v0, "SocketUtil"

    sget-object v1, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 273
    return-object v1

    .line 275
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->g()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 276
    .local v3, "tmpOsConstantsClass":Ljava/lang/Class;
    move-object v3, v1

    if-nez v1, :cond_1

    .line 277
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 280
    :cond_1
    :try_start_0
    const-string v1, "SOL_SOCKET"

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v4, v2

    .line 281
    .local v4, "solSocketField":Ljava/lang/reflect/Field;
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 282
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->j:Ljava/lang/Integer;

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Get SOL_SOCKET is "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->j:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->j:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 285
    .end local v4    # "solSocketField":Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Throwable;
    const-string v4, "Get SOL_SOCKET fail."

    invoke-static {v0, v4, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v2
.end method

.method private static final i()Ljava/lang/Integer;
    .locals 6

    .line 292
    const-string v0, "SocketUtil"

    sget-object v1, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 293
    return-object v1

    .line 295
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->g()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 296
    .local v3, "tmpOsConstantsClass":Ljava/lang/Class;
    move-object v3, v1

    if-nez v1, :cond_1

    .line 297
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 300
    :cond_1
    :try_start_0
    const-string v1, "SO_SNDTIMEO"

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v4, v2

    .line 301
    .local v4, "solSocketField":Ljava/lang/reflect/Field;
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 302
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->k:Ljava/lang/Integer;

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Get SO_SNDTIMEO is "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->k:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->k:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 305
    .end local v4    # "solSocketField":Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/Throwable;
    const-string v4, "Get SO_SNDTIMEO fail."

    invoke-static {v0, v4, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v2
.end method

.method private static final j()Ljava/lang/reflect/Method;
    .locals 5

    .line 312
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 313
    return-object v0

    .line 315
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->e()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 316
    .local v2, "tmpStructTimevalClass":Ljava/lang/Class;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 317
    return-object v1

    .line 320
    :cond_1
    :try_start_0
    const-string/jumbo v0, "toMillis"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 321
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->h:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 322
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->h:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 323
    :catchall_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "SocketUtil"

    const-string v4, "Get toMillis method fail."

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object v1
.end method

.method public static final setSndTimeOut(Ljava/net/Socket;J)Z
    .locals 5
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "timeoutMs"    # J

    const-string v0, "SocketUtil"

    .line 41
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SET_SND_TIMEOUT_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v4, "T"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v2

    move v3, v1

    .line 42
    .local v3, "suc":Z
    if-nez v2, :cond_0

    .line 43
    const-string/jumbo v2, "setSndTimeOut. SET_SND_TIMEOUT_SWITCH off"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return v1

    .line 47
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->doSetSndTimeOut(Ljava/net/Socket;J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 48
    .end local v3    # "suc":Z
    :catchall_0
    move-exception v2

    .line 49
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "setSndTimeOut fail"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .end local v2    # "e":Ljava/lang/Throwable;
    return v1
.end method
