.class public Lcom/alipay/dexpatch/NClassLoader;
.super Ldalvik/system/PathClassLoader;
.source "NClassLoader.java"


# static fields
.field private static a:Z = false


# instance fields
.field private final b:Ldalvik/system/PathClassLoader;

.field private c:Ljava/lang/String;

.field private final d:Lcom/alipay/dexpatch/DexPatchContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ldalvik/system/PathClassLoader;Landroid/app/Application;Lcom/alipay/dexpatch/DexPatchContext;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ldalvik/system/PathClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2
    iput-object p2, p0, Lcom/alipay/dexpatch/NClassLoader;->b:Ldalvik/system/PathClassLoader;

    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    const-string p2, "android.app.Application"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    iput-object p1, p0, Lcom/alipay/dexpatch/NClassLoader;->c:Ljava/lang/String;

    .line 7
    :cond_0
    iput-object p4, p0, Lcom/alipay/dexpatch/NClassLoader;->d:Lcom/alipay/dexpatch/DexPatchContext;

    .line 8
    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isAfterAndroidQ()Z

    move-result p1

    sput-boolean p1, Lcom/alipay/dexpatch/NClassLoader;->a:Z

    .line 9
    invoke-virtual {p3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method private static a(Ldalvik/system/PathClassLoader;Landroid/app/Application;Lcom/alipay/dexpatch/DexPatchContext;)Lcom/alipay/dexpatch/NClassLoader;
    .locals 2

    .line 51
    new-instance v0, Lcom/alipay/dexpatch/NClassLoader;

    const-string v1, ""

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/alipay/dexpatch/NClassLoader;-><init>(Ljava/lang/String;Ldalvik/system/PathClassLoader;Landroid/app/Application;Lcom/alipay/dexpatch/DexPatchContext;)V

    .line 52
    const-string/jumbo p1, "pathList"

    invoke-static {p0, p1}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 59
    invoke-static {p0, v0}, Lcom/alipay/dexpatch/NClassLoader;->a(Ljava/lang/Object;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p2

    .line 62
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    const-string p1, "definingContext"

    invoke-static {p0, p1}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 11

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
    if-ge v7, v4, :cond_2

    aget-object v9, v0, v7

    .line 11
    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldalvik/system/DexFile;

    if-eqz v9, :cond_1

    .line 15
    invoke-virtual {v9}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    .line 26
    :cond_0
    sget-object v10, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :goto_1
    invoke-virtual {v9}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    if-eqz v4, :cond_3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_3

    .line 42
    :cond_4
    sget-object v7, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 47
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
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

    .line 50
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

    .line 71
    const-string v1, "mBase"

    invoke-static {p0, v1}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 73
    :try_start_0
    invoke-static {v1, v0}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 77
    :goto_0
    const-string/jumbo v2, "mPackageInfo"

    invoke-static {v1, v2}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 78
    invoke-static {v1, v0}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 81
    invoke-static {p0, v0}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    const-string v1, "mDrawableInflater"

    invoke-static {p0, v1}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 85
    invoke-static {p0, v0}, Lcom/alipay/dexpatch/util/DPReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static inject(Ldalvik/system/PathClassLoader;Landroid/app/Application;Lcom/alipay/dexpatch/DexPatchContext;)Lcom/alipay/dexpatch/NClassLoader;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alipay/dexpatch/NClassLoader;->a(Ldalvik/system/PathClassLoader;Landroid/app/Application;Lcom/alipay/dexpatch/DexPatchContext;)Lcom/alipay/dexpatch/NClassLoader;

    move-result-object p0

    .line 2
    invoke-static {p1, p0}, Lcom/alipay/dexpatch/NClassLoader;->a(Landroid/app/Application;Ljava/lang/ClassLoader;)V

    return-object p0
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
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
    iget-object v0, p0, Lcom/alipay/dexpatch/NClassLoader;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/alipay/dexpatch/NClassLoader;->b:Ldalvik/system/PathClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/alipay/dexpatch/NClassLoader;->d:Lcom/alipay/dexpatch/DexPatchContext;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/alipay/dexpatch/DexPatchContext;->loadByOriginClassLoader(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/alipay/dexpatch/NClassLoader;->b:Ldalvik/system/PathClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    sget-boolean v0, Lcom/alipay/dexpatch/NClassLoader;->a:Z

    if-eqz v0, :cond_4

    .line 10
    :try_start_0
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 15
    iget-object v0, p0, Lcom/alipay/dexpatch/NClassLoader;->b:Ldalvik/system/PathClassLoader;

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
