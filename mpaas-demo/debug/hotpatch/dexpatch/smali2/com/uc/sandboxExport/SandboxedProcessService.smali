.class public Lcom/uc/sandboxExport/SandboxedProcessService;
.super Landroid/app/Service;
.source "ProGuard"


# static fields
.field private static final a:Z


# instance fields
.field private b:Z

.field private c:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Method;

.field private g:Landroid/os/IBinder;

.field private h:Ljava/lang/Object;

.field private i:Landroid/content/Intent;

.field private final j:Lcom/uc/sandboxExport/IChildProcessSetup$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-boolean v0, Lcom/uc/sandboxExport/Switches;->a:Z

    sput-boolean v0, Lcom/uc/sandboxExport/SandboxedProcessService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    new-instance v0, Lcom/uc/sandboxExport/SandboxedProcessService$1;

    invoke-direct {v0, p0}, Lcom/uc/sandboxExport/SandboxedProcessService$1;-><init>(Lcom/uc/sandboxExport/SandboxedProcessService;)V

    iput-object v0, p0, Lcom/uc/sandboxExport/SandboxedProcessService;->j:Lcom/uc/sandboxExport/IChildProcessSetup$Stub;

    return-void
.end method

.method public static ProcessFatalError(Ljava/lang/Throwable;)V
    .locals 3

    .line 300
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    .line 301
    :goto_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "render process faltal error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/uc/sandboxExport/SandboxedProcessService;)Landroid/content/Intent;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/uc/sandboxExport/SandboxedProcessService;->i:Landroid/content/Intent;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 81
    if-eqz p1, :cond_0

    .line 82
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 84
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 86
    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/sandboxExport/SandboxedProcessService;->ProcessFatalError(Ljava/lang/Throwable;)V

    .line 90
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a()Z
    .locals 1

    .line 34
    sget-boolean v0, Lcom/uc/sandboxExport/SandboxedProcessService;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/uc/sandboxExport/SandboxedProcessService;)Landroid/os/IBinder;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/uc/sandboxExport/SandboxedProcessService;->g:Landroid/os/IBinder;

    return-object p0
.end method


# virtual methods
.method protected init(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;[Landroid/os/Parcelable;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;ZZ)V
    .locals 21

    .line 96
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-boolean v0, v1, Lcom/uc/sandboxExport/SandboxedProcessService;->b:Z

    if-nez v0, :cond_c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p4, :cond_0

    :try_start_0
    const-string v0, "com.uc.crashsdk.export.CrashApi"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v0, "getInstance"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    :try_start_1
    const-string v0, "setHostFd"

    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, Landroid/os/ParcelFileDescriptor;

    aput-object v9, v8, v4

    invoke-virtual {v6, v0, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "setIsolatedHostFd"

    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, Landroid/os/ParcelFileDescriptor;

    aput-object v9, v8, v4

    invoke-virtual {v6, v0, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_0
    new-array v6, v5, [Ljava/lang/Object;

    aput-object p4, v6, v4

    invoke-virtual {v0, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :cond_0
    :goto_1
    const-string v0, "dex.path"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "odex.path"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "lib.path"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "source.dir"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/uc/sandboxExport/SandboxedProcessService;->shouldOptimizeDexLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "source.dir.prior"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    const-string v0, ""

    :goto_2
    move-object v2, v0

    sget-boolean v0, Lcom/uc/sandboxExport/SandboxedProcessService;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "sandboxed-renderer: init, dexPath: "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", odexPath: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", libPath: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "sourcedir: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "classloader"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v17, 0x3

    const/16 v18, 0x2

    const/4 v15, 0x4

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    :try_start_3
    invoke-static {}, Lcom/uc/sandboxExport/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ldalvik/system/DexFile;

    invoke-direct {v0, v2}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v3, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    :cond_3
    :goto_3
    move-object v14, v3

    if-nez v14, :cond_4

    move-object v13, v6

    goto :goto_4

    :cond_4
    move-object v13, v2

    :goto_4
    new-instance v3, Lcom/uc/sandboxExport/DexFileClassLoader;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    move-object v6, v3

    move-object/from16 v11, p2

    move-object/from16 v12, p5

    const/4 v2, 0x4

    move/from16 v15, p6

    move/from16 v16, p7

    invoke-direct/range {v6 .. v16}, Lcom/uc/sandboxExport/DexFileClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ldalvik/system/DexFile;ZZ)V

    if-eqz p2, :cond_6

    iget-object v0, v1, Lcom/uc/sandboxExport/SandboxedProcessService;->i:Landroid/content/Intent;

    const-string v6, "isolate"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-array v0, v2, [J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v19

    aput-wide v6, v0, v4

    invoke-static/range {v19 .. v20}, Lcom/uc/sandboxExport/DexFileClassLoader;->a(J)J

    move-result-wide v6

    aput-wide v6, v0, v5

    invoke-static {}, Lcom/uc/sandboxExport/DexFileClassLoader;->a()J

    move-result-wide v6

    aput-wide v6, v0, v18

    invoke-static {}, Lcom/uc/sandboxExport/DexFileClassLoader;->b()J

    move-result-wide v6

    aput-wide v6, v0, v17

    iget-object v6, v1, Lcom/uc/sandboxExport/SandboxedProcessService;->i:Landroid/content/Intent;

    const-string v7, "dexLoadTimes"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto :goto_5

    :cond_5
    const/4 v2, 0x4

    :cond_6
    :goto_5
    const-string v0, "org.chromium.content.app.SandboxedProcessService0"

    invoke-static {v0, v3}, Lcom/uc/sandboxExport/SandboxedProcessService;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_7

    invoke-static {v0, v3}, Lcom/uc/sandboxExport/SandboxedProcessService;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    :cond_7
    if-nez v6, :cond_8

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "org.chromium.content.app.SandboxedProcessService0get null"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/uc/sandboxExport/SandboxedProcessService;->ProcessFatalError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    :try_start_4
    new-array v0, v4, [Ljava/lang/Class;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, v1, Lcom/uc/sandboxExport/SandboxedProcessService;->c:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lcom/uc/sandboxExport/SandboxedProcessService;->ProcessFatalError(Ljava/lang/Throwable;)V

    :goto_6
    :try_start_5
    const-string v0, "onDestroy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Lcom/uc/sandboxExport/SandboxedProcessService;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    invoke-static {v0}, Lcom/uc/sandboxExport/SandboxedProcessService;->ProcessFatalError(Ljava/lang/Throwable;)V

    :goto_7
    :try_start_6
    const-string v0, "initializeEngine"

    new-array v3, v5, [Ljava/lang/Class;

    const-string v7, "[Landroid.os.ParcelFileDescriptor;"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v6, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Lcom/uc/sandboxExport/SandboxedProcessService;->f:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    invoke-static {v0}, Lcom/uc/sandboxExport/SandboxedProcessService;->ProcessFatalError(Ljava/lang/Throwable;)V

    :goto_8
    :try_start_7
    const-string v0, "onBind"

    new-array v3, v5, [Ljava/lang/Class;

    const-string v7, "android.content.Intent"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v6, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Lcom/uc/sandboxExport/SandboxedProcessService;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    invoke-static {v0}, Lcom/uc/sandboxExport/SandboxedProcessService;->ProcessFatalError(Ljava/lang/Throwable;)V

    :goto_9
    iget-object v0, v1, Lcom/uc/sandboxExport/SandboxedProcessService;->c:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_9

    :try_start_8
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/uc/sandboxExport/SandboxedProcessService;->h:Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/uc/sandboxExport/SandboxedProcessService;->ProcessFatalError(Ljava/lang/Throwable;)V

    :cond_9
    :goto_a
    :try_start_9
    const-string v0, "android.app.Service"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mThread"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v6, "mClassName"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v7, "mToken"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v8, "mApplication"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v9, "mActivityManager"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v10, "android.content.ContextWrapper"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "mBase"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-string v11, "attach"

    const/4 v12, 0x6

    new-array v13, v12, [Ljava/lang/Class;

    const-string v14, "android.content.Context"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v13, v4

    const-string v14, "android.app.ActivityThread"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, "java.lang.String"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v13, v18

    const-string v14, "android.os.IBinder"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v13, v17

    const-string v14, "android.app.Application"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v13, v2

    const-string v14, "java.lang.Object"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const/4 v15, 0x5

    aput-object v14, v13, v15

    invoke-virtual {v0, v11, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v11, v1, Lcom/uc/sandboxExport/SandboxedProcessService;->h:Ljava/lang/Object;

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v10, v12, v4

    aput-object v3, v12, v5

    aput-object v6, v12, v18

    aput-object v7, v12, v17

    aput-object v8, v12, v2

    aput-object v9, v12, v15

    invoke-virtual {v0, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_b

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/uc/sandboxExport/SandboxedProcessService;->ProcessFatalError(Ljava/lang/Throwable;)V

    :goto_b
    iget-object v0, v1, Lcom/uc/sandboxExport/SandboxedProcessService;->h:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v2, v1, Lcom/uc/sandboxExport/SandboxedProcessService;->e:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_a

    :try_start_a
    new-array v3, v5, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/uc/sandboxExport/SandboxedProcessService;->i:Landroid/content/Intent;

    aput-object v6, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, v1, Lcom/uc/sandboxExport/SandboxedProcessService;->g:Landroid/os/IBinder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_c

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/uc/sandboxExport/SandboxedProcessService;->ProcessFatalError(Ljava/lang/Throwable;)V

    :cond_a
    :goto_c
    iget-object v0, v1, Lcom/uc/sandboxExport/SandboxedProcessService;->h:Ljava/lang/Object;

    if-eqz v0, :cond_b

    iget-object v2, v1, Lcom/uc/sandboxExport/SandboxedProcessService;->f:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_b

    :try_start_b
    new-array v3, v5, [Ljava/lang/Object;

    aput-object p3, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/uc/sandboxExport/SandboxedProcessService;->ProcessFatalError(Ljava/lang/Throwable;)V

    :cond_b
    :goto_d
    iput-boolean v5, v1, Lcom/uc/sandboxExport/SandboxedProcessService;->b:Z

    .line 97
    :cond_c
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/uc/sandboxExport/SandboxedProcessService;->i:Landroid/content/Intent;

    .line 307
    iget-object p1, p0, Lcom/uc/sandboxExport/SandboxedProcessService;->j:Lcom/uc/sandboxExport/IChildProcessSetup$Stub;

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/uc/sandboxExport/SandboxedProcessService;->g:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/uc/sandboxExport/SandboxedProcessService;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/uc/sandboxExport/SandboxedProcessService;->h:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    .line 320
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/sandboxExport/SandboxedProcessService;->h:Ljava/lang/Object;

    .line 321
    iput-object v0, p0, Lcom/uc/sandboxExport/SandboxedProcessService;->g:Landroid/os/IBinder;

    .line 323
    :cond_1
    return-void
.end method

.method public shouldOptimizeDexLoad()Z
    .locals 1

    .line 295
    const/4 v0, 0x1

    return v0
.end method
