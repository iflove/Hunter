.class public Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Lcom/uc/webview/export/cyclone/service/UCVmsize;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UCVmsizeImpl"

.field private static mSoIsLoaded:Z

.field private static mSoIsLoadedException:Lcom/uc/webview/export/cyclone/UCKnownException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->mSoIsLoaded:Z

    .line 25
    const/4 v1, 0x0

    sput-object v1, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->mSoIsLoadedException:Lcom/uc/webview/export/cyclone/UCKnownException;

    .line 29
    :try_start_0
    const-class v1, Lcom/uc/webview/export/cyclone/service/UCVmsize;

    new-instance v2, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;

    invoke-direct {v2}, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;-><init>()V

    invoke-static {v1, v2}, Lcom/uc/webview/export/cyclone/UCService;->registerImpl(Ljava/lang/Class;Lcom/uc/webview/export/cyclone/service/UCServiceInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    return-void

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    const-string v2, "w"

    const-string v3, "UCVmsizeImpl"

    invoke-static {v2, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UCVmsizeImpl register exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v0}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 35
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized loadSo(Landroid/content/Context;)V
    .locals 11

    const-class v0, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;

    monitor-enter v0

    .line 127
    :try_start_0
    sget-boolean v1, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->mSoIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 128
    monitor-exit v0

    return-void

    .line 130
    :cond_0
    :try_start_1
    sget-object v1, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->mSoIsLoadedException:Lcom/uc/webview/export/cyclone/UCKnownException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    .line 134
    const/4 v3, 0x0

    :try_start_2
    const-string v4, "libvmsize"

    const-string v5, ".so"

    const-wide/32 v6, 0x1791913

    const-string v8, "e3d7b7107d5f402c1dde1a3930f7d7da"

    .line 137
    invoke-static {}, Lcom/uc/webview/export/cyclone/service/UCVmsizeImplConstant;->genCodes()[[B

    move-result-object v9

    const/4 v1, 0x0

    new-array v10, v1, [Ljava/lang/Object;

    .line 134
    move-object v2, p0

    invoke-static/range {v2 .. v10}, Lcom/uc/webview/export/cyclone/UCCyclone;->genFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[[B[Ljava/lang/Object;)Ljava/io/File;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/uc/webview/export/cyclone/UCLibrary;->load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    nop

    .line 144
    const/4 p0, 0x1

    :try_start_3
    sput-boolean p0, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->mSoIsLoaded:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    monitor-exit v0

    return-void

    .line 139
    :catchall_0
    move-exception p0

    .line 140
    :try_start_4
    new-instance v1, Lcom/uc/webview/export/cyclone/UCKnownException;

    invoke-direct {v1, p0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(Ljava/lang/Throwable;)V

    .line 141
    sput-object v1, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->mSoIsLoadedException:Lcom/uc/webview/export/cyclone/UCKnownException;

    throw v1

    .line 131
    :cond_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 126
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static native nativeSaveChromiumReservedSpace(J)I
.end method


# virtual methods
.method public getServiceVersion()I
    .locals 1

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public saveChromiumReservedSpace(Landroid/content/Context;)J
    .locals 9

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0x0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-le v0, v3, :cond_0

    goto/16 :goto_3

    .line 42
    :cond_0
    nop

    .line 50
    const-string v0, "android.webkit.WebViewFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_a

    .line 54
    const-string v3, "sAddressSpaceReserved"

    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 56
    if-eqz v3, :cond_a

    .line 59
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 60
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 62
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    .line 63
    if-eqz v6, :cond_a

    .line 68
    :try_start_0
    const-string v1, "sProviderLock"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 70
    if-nez v0, :cond_2

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_3

    .line 74
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 76
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    goto :goto_1

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    nop

    .line 84
    :goto_0
    move-object v0, p0

    :goto_1
    sget-boolean v1, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->mSoIsLoaded:Z

    if-nez v1, :cond_4

    .line 85
    invoke-static {p1}, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->loadSo(Landroid/content/Context;)V

    .line 87
    :cond_4
    monitor-enter v0

    .line 88
    const/4 p1, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    :try_start_2
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_9

    .line 96
    const-string v2, "getLong"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, p1

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_8

    .line 100
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_5

    .line 101
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 103
    :cond_5
    new-array v2, v6, [Ljava/lang/Object;

    const-string v6, "persist.sys.webview.vmsize"

    aput-object v6, v2, p1

    const-wide/32 v6, 0x6400000

    .line 104
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v5

    .line 103
    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 106
    if-eqz p1, :cond_7

    .line 109
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->nativeSaveChromiumReservedSpace(J)I

    move-result v1

    .line 110
    if-nez v1, :cond_6

    .line 111
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 113
    :cond_6
    :try_start_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Error:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on nativeSaveChromiumReservedSpace"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "SystemProperties.getLong invoke return null."

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "SystemProperties.getLong not found."

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "SystemProperties not found."

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 115
    :catch_0
    move-exception p1

    .line 116
    :try_start_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    throw p1

    .line 119
    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    .line 123
    :cond_a
    :goto_2
    return-wide v1

    .line 40
    :cond_b
    :goto_3
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UCVmsizeImpl."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->getServiceVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
