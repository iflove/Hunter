.class public Lcom/alipay/dexpatch/PNClassLoader;
.super Ldalvik/system/PathClassLoader;
.source "PNClassLoader.java"


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static b:Z = false


# instance fields
.field private final c:Ldalvik/system/PathClassLoader;

.field private d:Ljava/lang/String;

.field private final e:Lcom/alipay/dexpatch/DexPatchContext;

.field private f:Ldalvik/system/PathClassLoader;

.field private g:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ldalvik/system/PathClassLoader;Ldalvik/system/PathClassLoader;Landroid/app/Application;Lcom/alipay/dexpatch/DexPatchContext;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ldalvik/system/PathClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alipay/dexpatch/PNClassLoader;->f:Ldalvik/system/PathClassLoader;

    .line 3
    iput-object p1, p0, Lcom/alipay/dexpatch/PNClassLoader;->g:Ljava/lang/reflect/Method;

    .line 7
    iput-object p2, p0, Lcom/alipay/dexpatch/PNClassLoader;->c:Ldalvik/system/PathClassLoader;

    .line 8
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    const-string p2, "android.app.Application"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 10
    iput-object p1, p0, Lcom/alipay/dexpatch/PNClassLoader;->d:Ljava/lang/String;

    .line 12
    :cond_0
    iput-object p5, p0, Lcom/alipay/dexpatch/PNClassLoader;->e:Lcom/alipay/dexpatch/DexPatchContext;

    .line 13
    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isAfterAndroidQ()Z

    move-result p1

    sput-boolean p1, Lcom/alipay/dexpatch/PNClassLoader;->b:Z

    .line 14
    invoke-virtual {p4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/alipay/dexpatch/PNClassLoader;->a:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/alipay/dexpatch/PNClassLoader;->f:Ldalvik/system/PathClassLoader;

    const-string p1, "findClass"

    const/4 p2, 0x1

    .line 18
    :try_start_0
    new-array p2, p2, [Ljava/lang/Class;

    const/4 p4, 0x0

    const-class p5, Ljava/lang/String;

    aput-object p5, p2, p4

    invoke-static {p3, p1, p2}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/dexpatch/PNClassLoader;->g:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    return-void
.end method

.method private static a(Ldalvik/system/PathClassLoader;Landroid/app/Application;Lcom/alipay/dexpatch/DexPatchContext;Ljava/io/File;Ljava/io/File;)Ldalvik/system/PathClassLoader;
    .locals 8

    .line 49
    new-instance v6, Ldalvik/system/PathClassLoader;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 50
    new-instance v7, Lcom/alipay/dexpatch/PNClassLoader;

    const-string v1, ""

    move-object v0, v7

    move-object v2, p0

    move-object v3, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/dexpatch/PNClassLoader;-><init>(Ljava/lang/String;Ldalvik/system/PathClassLoader;Ldalvik/system/PathClassLoader;Landroid/app/Application;Lcom/alipay/dexpatch/DexPatchContext;)V

    .line 52
    const-string/jumbo p1, "pathList"

    invoke-static {p0, p1}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 59
    invoke-static {p0, v6}, Lcom/alipay/dexpatch/PNClassLoader;->a(Ljava/lang/Object;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p2

    .line 62
    invoke-virtual {p1, v6, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    const-string p1, "definingContext"

    invoke-static {p0, p1}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0, p4}, Lcom/alipay/dexpatch/PNClassLoader;->a(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/io/File;)V

    .line 74
    const-string/jumbo p0, "parent"

    invoke-static {v6, p0}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 75
    invoke-virtual {p0, v6, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 13

    .line 1
    const-string v0, "dexElements"

    invoke-static {p0, v0}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 3
    const-string/jumbo v1, "nativeLibraryDirectories"

    invoke-static {p0, v1}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "dexFile"

    invoke-static {v3, v4}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 10
    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_0
    if-ge v7, v4, :cond_3

    aget-object v9, v0, v7

    .line 11
    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldalvik/system/DexFile;

    if-eqz v9, :cond_2

    .line 15
    invoke-virtual {v9}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v10

    .line 17
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/alipay/dexpatch/PNClassLoader;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 18
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "recreateDexPathList ignore dexFileName="

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DexP.PNClassLoader"

    invoke-static {v10, v9}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    if-eqz v8, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    .line 24
    :cond_1
    sget-object v10, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :goto_1
    invoke-virtual {v9}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 29
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    if-eqz v4, :cond_4

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_4

    .line 40
    :cond_5
    sget-object v7, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :goto_4
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 45
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/ClassLoader;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Ljava/io/File;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-static {p0, v3}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findConstructor(Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 48
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object v0, v2, v6

    aput-object v1, v2, v7

    const/4 p1, 0x0

    aput-object p1, v2, v8

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/app/Application;Ljava/lang/ClassLoader;)V
    .locals 3

    const-string v0, "mClassLoader"

    .line 76
    const-string v1, "mBase"

    invoke-static {p0, v1}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 78
    :try_start_0
    invoke-static {v1, v0}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 82
    :goto_0
    const-string/jumbo v2, "mPackageInfo"

    invoke-static {v1, v2}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    invoke-static {v1, v0}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 86
    invoke-static {p0, v0}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    const-string v1, "mDrawableInflater"

    invoke-static {p0, v1}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 90
    invoke-static {p0, v0}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private static a(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    .line 106
    const-string/jumbo v0, "pathList"

    invoke-static {p0, v0}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {v0, v2, p2, v1, p0}, Lcom/alipay/dexpatch/PNClassLoader;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "dexElements"

    invoke-static {v0, p1, p0}, Lcom/alipay/dexpatch/util/DPReflectUtil;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    .line 116
    const-string p1, "DexP.PNClassLoader"

    const-string p2, "Exception in makeDexElements"

    invoke-static {p1, p0, p2}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 117
    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 7

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    sget-boolean v0, Lcom/alipay/dexpatch/PNClassLoader;->b:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.app.DexLoadReporter"

    .line 98
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 99
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v1, "registerSecondaryDexForProfiling"

    .line 100
    const/4 v3, 0x2

    :try_start_2
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    const-class v5, [Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v0, v1, v4}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 103
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    new-array v4, v6, [Ljava/lang/String;

    aput-object p0, v4, v2

    aput-object v4, v3, v6

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 105
    const-string v0, "DexP.PNClassLoader"

    const-string v1, "exception"

    invoke-static {v0, p0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Ljava/io/IOException;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string/jumbo v0, "makeDexElements"

    .line 118
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    :try_start_0
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/util/List;

    aput-object v7, v6, v4

    const-class v7, Ljava/io/File;

    aput-object v7, v6, v3

    const-class v7, Ljava/util/List;

    aput-object v7, v6, v2

    const-class v7, Ljava/lang/ClassLoader;

    aput-object v7, v6, v1

    invoke-static {p0, v0, v6}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    const-string v0, "DexP.PNClassLoader"

    const-string v6, "NoSuchMethodException: makeDexElements(List,File,List,ClassLoader) failure"

    invoke-static {v0, v6}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    nop

    .line 124
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object p2, v5, v3

    aput-object p3, v5, v2

    aput-object p4, v5, v1

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static inject(Ldalvik/system/PathClassLoader;Landroid/app/Application;Lcom/alipay/dexpatch/DexPatchContext;Ljava/io/File;Ljava/io/File;)Ldalvik/system/PathClassLoader;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alipay/dexpatch/PNClassLoader;->a(Ldalvik/system/PathClassLoader;Landroid/app/Application;Lcom/alipay/dexpatch/DexPatchContext;Ljava/io/File;Ljava/io/File;)Ldalvik/system/PathClassLoader;

    move-result-object p0

    .line 2
    invoke-static {p1, p0}, Lcom/alipay/dexpatch/PNClassLoader;->a(Landroid/app/Application;Ljava/lang/ClassLoader;)V

    .line 3
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/dexpatch/PNClassLoader;->a(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    const-string v0, "com.alipay.dexpatch."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/dexpatch/PNClassLoader;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/alipay/dexpatch/PNClassLoader;->c:Ldalvik/system/PathClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/alipay/dexpatch/PNClassLoader;->e:Lcom/alipay/dexpatch/DexPatchContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0, v1, p1}, Lcom/alipay/dexpatch/DexPatchContext;->loadByOriginClassLoader(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/alipay/dexpatch/PNClassLoader;->c:Ldalvik/system/PathClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    sget-boolean v0, Lcom/alipay/dexpatch/PNClassLoader;->b:Z

    if-eqz v0, :cond_4

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/alipay/dexpatch/PNClassLoader;->g:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/alipay/dexpatch/PNClassLoader;->f:Ldalvik/system/PathClassLoader;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 15
    iget-object v0, p0, Lcom/alipay/dexpatch/PNClassLoader;->c:Ldalvik/system/PathClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 19
    :cond_4
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
