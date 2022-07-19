.class public final Lcom/alipay/mobile/quinox/bundle/j;
.super Ljava/lang/Object;
.source "NativeLibs.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static volatile b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-string v0, "key_ensure_native_libs_"

    sput-object v0, Lcom/alipay/mobile/quinox/bundle/j;->a:Ljava/lang/String;

    .line 75
    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/quinox/bundle/j;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeLibDir"    # Ljava/lang/String;
    .param p3, "needType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "nativeLibs":Ljava/util/ArrayList;
    new-instance v1, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;-><init>()V

    new-instance v2, Lcom/alipay/mobile/quinox/bundle/j$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/quinox/bundle/j$1;-><init>(Lcom/alipay/mobile/quinox/bundle/j;Ljava/util/ArrayList;)V

    const-string v3, "nativelibs.cfg"

    invoke-virtual {v1, p1, v3, v2}, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;->readAssets(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;)Z

    .line 180
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 182
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 183
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 186
    .local v2, "name":Ljava/lang/String;
    if-nez p3, :cond_1

    .line 187
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 191
    :cond_1
    const/4 v3, 0x1

    if-ne p3, v3, :cond_2

    .line 193
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 199
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 202
    .end local v1    # "iterator":Ljava/util/Iterator;
    :cond_3
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "origin"    # Ljava/lang/ClassLoader;

    move-object/from16 v1, p1

    const-string v0, "nativeLibraryDirectories"

    const-string v2, "NativeLibs"

    .line 82
    :try_start_0
    const-string v3, "plugins_lib"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v4, 0x0

    move-object/from16 v5, p0

    :try_start_1
    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 83
    .local v3, "pluginLib":Ljava/io/File;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_5

    .line 84
    const-string v6, "dalvik.system.BaseDexClassLoader"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 85
    const-string v7, "pathList"

    invoke-static {v6, v1, v7}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v7

    .line 86
    .local v8, "pathList":Ljava/lang/Object;
    move-object v8, v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v9, v7

    .line 87
    .local v9, "pathListClass":Ljava/lang/Class;
    move-object v9, v6

    invoke-static {v6, v8, v0}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 89
    .local v6, "obj":Ljava/lang/Object;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    const/4 v12, 0x1

    if-lt v10, v11, :cond_4

    .line 90
    move-object v0, v6

    check-cast v0, Ljava/util/List;

    move-object v10, v0

    .line 91
    .local v10, "nativeLibDirs":Ljava/util/List;
    invoke-static {v10}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v10, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 93
    invoke-static {v10}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "splitPaths"

    const/4 v11, 0x2

    new-array v13, v11, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v4

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v12

    new-array v14, v11, [Ljava/lang/Object;

    const-string v15, "java.library.path"

    .line 98
    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v4

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v12

    .line 95
    invoke-static {v9, v0, v13, v14}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v13, v0

    .line 99
    .local v13, "systemNativeLibraryDirectories":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 100
    .local v14, "suppressedExceptions":Ljava/util/List;
    invoke-interface {v13, v4, v10}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 102
    const/4 v15, 0x0

    .line 104
    .local v15, "newObjs":Ljava/lang/Object;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v7, 0x1a

    const-string v11, "makePathElements"

    if-lt v0, v7, :cond_0

    .line 106
    :try_start_2
    new-array v0, v12, [Ljava/lang/Class;

    const-class v7, Ljava/util/List;

    aput-object v7, v0, v4

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v13, v7, v4

    invoke-static {v9, v11, v0, v7}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v15, v0

    .line 110
    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-nez v15, :cond_1

    .line 114
    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/Class;

    const-class v17, Ljava/util/List;

    aput-object v17, v7, v4

    const-class v17, Ljava/io/File;

    aput-object v17, v7, v12

    const-class v17, Ljava/util/List;

    const/16 v16, 0x2

    aput-object v17, v7, v16

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v13, v0, v4

    const/4 v4, 0x0

    aput-object v4, v0, v12

    const/4 v4, 0x2

    aput-object v14, v0, v4

    invoke-static {v9, v11, v7, v0}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    .line 119
    :cond_1
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 120
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/IOException;

    .line 121
    .local v4, "exception":Ljava/io/IOException;
    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .end local v4    # "exception":Ljava/io/IOException;
    goto :goto_1

    :cond_2
    return-void

    .line 124
    :cond_3
    const-string v0, "nativeLibraryPathElements"

    invoke-static {v9, v8, v0, v15}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    move-object v0, v15

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v10    # "nativeLibDirs":Ljava/util/List;
    .end local v13    # "systemNativeLibraryDirectories":Ljava/util/List;
    .end local v14    # "suppressedExceptions":Ljava/util/List;
    .end local v15    # "newObjs":Ljava/lang/Object;
    return-void

    .line 128
    :cond_4
    move-object v7, v6

    check-cast v7, [Ljava/io/File;

    check-cast v7, [Ljava/io/File;

    .line 129
    .local v7, "nativeLibDirs":[Ljava/io/File;
    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    array-length v10, v7

    add-int/2addr v10, v12

    new-array v10, v10, [Ljava/io/File;

    const/4 v11, 0x0

    .line 132
    .local v11, "_nativeLibDirs":[Ljava/io/File;
    move-object v11, v10

    aput-object v3, v10, v4

    .line 133
    array-length v10, v7

    invoke-static {v7, v4, v11, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    invoke-static {v9, v8, v0, v11}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    invoke-static {v11}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v7    # "nativeLibDirs":[Ljava/io/File;
    .end local v8    # "pathList":Ljava/lang/Object;
    .end local v9    # "pathListClass":Ljava/lang/Class;
    .end local v11    # "_nativeLibDirs":[Ljava/io/File;
    return-void

    .line 139
    :cond_5
    const-string v0, "libraryPathElements"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 140
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 144
    nop

    .end local v3    # "pluginLib":Ljava/io/File;
    return-void

    .line 142
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v5, p0

    .line 143
    .local v0, "e":Ljava/lang/Throwable;
    :goto_2
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "The \'lib\' ("

    const-string v3, ")"

    const-string v4, "NativeLibs"

    .line 221
    const/4 v5, 0x1

    .line 222
    .local v5, "exists":Z
    const/4 v6, 0x0

    .line 223
    .local v6, "isFile":Z
    const/4 v7, 0x0

    .line 225
    .local v7, "isEmptyDir":Z
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    move-object v12, v9

    .line 226
    .local v12, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x10000000

    and-int/2addr v11, v13

    if-eqz v11, :cond_3

    .line 228
    new-instance v11, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v13, v9

    .line 229
    .local v13, "lib":Ljava/io/File;
    move-object v13, v11

    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    move v5, v11

    .line 230
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ") exists = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v11

    move v6, v11

    .line 233
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ") isFile = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", length="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v11

    .line 236
    .local v11, "isDirectory":Z
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ") isDirectory = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    if-eqz v11, :cond_4

    .line 238
    invoke-virtual {v13}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v14

    move-object v15, v9

    .line 239
    .local v15, "fileNames":[Ljava/lang/String;
    move-object v15, v14

    if-eqz v14, :cond_1

    array-length v14, v15

    if-nez v14, :cond_0

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    .end local v13    # "lib":Ljava/io/File;
    :cond_1
    :goto_0
    const/4 v14, 0x1

    :goto_1
    move v7, v14

    .line 240
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") files="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v15, :cond_2

    const-string v0, "null"

    goto :goto_2

    :cond_2
    array-length v0, v15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 243
    .end local v11    # "isDirectory":Z
    .end local v12    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "fileNames":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 226
    .restart local v12    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    move-object v13, v9

    .line 245
    .end local v12    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    :goto_3
    goto :goto_5

    .line 243
    :catchall_1
    move-exception v0

    move-object v13, v9

    .line 244
    .local v0, "e":Ljava/lang/Throwable;
    :goto_4
    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/alipay/mobile/quinox/bundle/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 249
    .local v11, "key":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    const-string v12, "framework_preferences"

    invoke-virtual {v0, v2, v12, v10}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    move-object v12, v13

    .line 250
    .local v12, "sp":Landroid/content/SharedPreferences;
    move-object v12, v0

    invoke-interface {v0, v11, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 252
    .local v0, "flag":Z
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "key_ensure_native_libs_only_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductVersion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 253
    .local v13, "onlyKey":Ljava/lang/String;
    invoke-interface {v12, v13, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 254
    .local v14, "onlyFlag":Z
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v15

    const-string v8, "framework_safeguard_preferences"

    invoke-virtual {v15, v2, v8, v10}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    move-object v15, v9

    .line 255
    .local v15, "sgsp":Landroid/content/SharedPreferences;
    move-object v15, v8

    const-string v9, "key_check_md5_for_native_lib"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 256
    .local v8, "force":Z
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    const-string v9, "ensureNativeLibs.getBoolean("

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    if-nez v0, :cond_6

    if-nez v14, :cond_6

    if-eqz v5, :cond_6

    if-nez v6, :cond_6

    if-eqz v7, :cond_5

    goto :goto_6

    :cond_5
    const/4 v3, 0x0

    goto :goto_7

    :cond_6
    :goto_6
    const/4 v3, 0x1

    :goto_7
    move v0, v3

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "flag = "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    if-eqz v8, :cond_7

    .line 262
    const-string v3, "ensureNativeLibs force."

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v0, 0x1

    move v3, v0

    goto :goto_8

    .line 261
    :cond_7
    move v3, v0

    .line 266
    .end local v0    # "flag":Z
    .local v3, "flag":Z
    :goto_8
    if-nez v3, :cond_8

    .line 267
    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/quinox/bundle/j;->b:I

    .line 268
    return-void

    .line 270
    :cond_8
    const/4 v0, 0x2

    if-eqz v8, :cond_9

    .line 271
    sput v0, Lcom/alipay/mobile/quinox/bundle/j;->b:I

    const/4 v9, 0x0

    goto :goto_9

    .line 272
    :cond_9
    if-eqz v14, :cond_a

    .line 273
    const/4 v9, 0x1

    sput v9, Lcom/alipay/mobile/quinox/bundle/j;->b:I

    const/4 v9, 0x0

    goto :goto_9

    .line 275
    :cond_a
    const/4 v9, 0x0

    sput v9, Lcom/alipay/mobile/quinox/bundle/j;->b:I

    .line 278
    :goto_9
    const/4 v10, 0x1

    .line 279
    .local v10, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 281
    .local v18, "start":J
    const-string v0, "plugins_lib"

    invoke-virtual {v2, v0, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x0

    .local v9, "nativeLibDir":Ljava/lang/String;
    move-object/from16 v0, v16

    .line 285
    .local v0, "nativeLibs":Ljava/util/ArrayList;
    if-eqz v8, :cond_b

    .line 287
    move-object/from16 v21, v0

    const/4 v0, 0x2

    .end local v0    # "nativeLibs":Ljava/util/ArrayList;
    .local v21, "nativeLibs":Ljava/util/ArrayList;
    invoke-direct {v1, v2, v9, v0}, Lcom/alipay/mobile/quinox/bundle/j;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    move/from16 v20, v3

    move-object v3, v0

    .end local v21    # "nativeLibs":Ljava/util/ArrayList;
    .restart local v0    # "nativeLibs":Ljava/util/ArrayList;
    goto :goto_a

    .line 288
    :cond_b
    move-object/from16 v21, v0

    .end local v0    # "nativeLibs":Ljava/util/ArrayList;
    .restart local v21    # "nativeLibs":Ljava/util/ArrayList;
    if-eqz v14, :cond_c

    .line 290
    move/from16 v20, v3

    const/4 v3, 0x1

    .end local v3    # "flag":Z
    .local v20, "flag":Z
    invoke-direct {v1, v2, v9, v3}, Lcom/alipay/mobile/quinox/bundle/j;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    move-object v3, v0

    .end local v21    # "nativeLibs":Ljava/util/ArrayList;
    .restart local v0    # "nativeLibs":Ljava/util/ArrayList;
    goto :goto_a

    .line 293
    .end local v0    # "nativeLibs":Ljava/util/ArrayList;
    .end local v20    # "flag":Z
    .restart local v3    # "flag":Z
    .restart local v21    # "nativeLibs":Ljava/util/ArrayList;
    :cond_c
    move/from16 v20, v3

    const/4 v3, 0x1

    .end local v3    # "flag":Z
    .restart local v20    # "flag":Z
    const/4 v3, 0x0

    invoke-direct {v1, v2, v9, v3}, Lcom/alipay/mobile/quinox/bundle/j;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    move-object v3, v0

    .line 297
    .end local v21    # "nativeLibs":Ljava/util/ArrayList;
    .local v3, "nativeLibs":Ljava/util/ArrayList;
    :goto_a
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v21, 0x0

    move-object/from16 v16, v21

    .line 298
    .local v16, "defSp":Landroid/content/SharedPreferences;
    move-object/from16 v22, v0

    .end local v16    # "defSp":Landroid/content/SharedPreferences;
    .local v22, "defSp":Landroid/content/SharedPreferences;
    const-string v1, "force_extract_native_so_set"

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v21

    .line 299
    .local v21, "forceSoSet":Ljava/util/Set;
    invoke-static {}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->getInstance()Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 300
    if-eqz v21, :cond_f

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 304
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 305
    .local v2, "so":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_d

    .line 306
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .end local v2    # "so":Ljava/lang/String;
    :cond_d
    goto :goto_b

    .line 310
    :cond_e
    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_c

    .line 314
    :cond_f
    const/4 v2, 0x0

    const/16 v23, 0x0

    :goto_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ensureNativeLibs: size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", libs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", forceLibs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->UPGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v1

    if-eq v0, v1, :cond_11

    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NEW:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    .line 319
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v1

    if-ne v0, v1, :cond_10

    goto :goto_d

    :cond_10
    move/from16 v24, v5

    move/from16 v23, v6

    goto :goto_e

    .line 320
    :cond_11
    :goto_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v1, v23

    .line 321
    .local v1, "params":Ljava/util/Map;
    move-object v1, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v24, v5

    .end local v5    # "exists":Z
    .local v24, "exists":Z
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v23, v6

    .end local v6    # "isFile":Z
    .local v23, "isFile":Z
    const-string v6, "libCopyCount"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "libCopy"

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    if-eqz v21, :cond_12

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 324
    invoke-static/range {v21 .. v21}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "forceLibs"

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_12
    const-string v0, "BIZ_FRAME"

    const-string v5, "FRAME_BUNDLE_NO_COPY"

    const-string v6, "1001"

    invoke-static {v0, v5, v6, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_e

    .line 314
    .end local v1    # "params":Ljava/util/Map;
    .end local v23    # "isFile":Z
    .end local v24    # "exists":Z
    .restart local v5    # "exists":Z
    .restart local v6    # "isFile":Z
    :cond_13
    move/from16 v24, v5

    move/from16 v23, v6

    .line 334
    .end local v5    # "exists":Z
    .end local v6    # "isFile":Z
    .restart local v23    # "isFile":Z
    .restart local v24    # "exists":Z
    :goto_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 335
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    .line 337
    .local v1, "libs":[Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/apkfile/ApkFile;

    move-result-object v0

    .line 339
    .local v2, "apkZipFile":Lcom/alipay/mobile/quinox/apkfile/ApkFile;
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->getZipFile()Ljava/util/zip/ZipFile;

    move-result-object v0

    const/4 v5, 0x0

    .line 340
    .local v5, "mApkZipFile":Ljava/util/zip/ZipFile;
    move-object v5, v0

    if-eqz v0, :cond_16

    .line 342
    if-nez v8, :cond_15

    if-nez v14, :cond_15

    if-eqz v21, :cond_14

    :try_start_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_f

    :cond_14
    const/4 v0, 0x0

    goto :goto_10

    :cond_15
    :goto_f
    const/4 v0, 0x1

    :goto_10
    invoke-static {v5, v1, v9, v0}, Lcom/alipay/mobile/quinox/bundle/a;->a(Ljava/util/zip/ZipFile;[Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 346
    goto :goto_11

    .line 343
    :catchall_2
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 345
    .end local v10    # "result":Z
    .local v6, "result":Z
    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v10, v6

    .line 347
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v6    # "result":Z
    .restart local v10    # "result":Z
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "ensureNativeLibs.extractSosFromZipFile[java.zip]("

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), result="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .end local v1    # "libs":[Ljava/lang/String;
    .end local v2    # "apkZipFile":Lcom/alipay/mobile/quinox/apkfile/ApkFile;
    .end local v5    # "mApkZipFile":Ljava/util/zip/ZipFile;
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ensureNativeLibs() cost "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    if-eqz v10, :cond_17

    .line 369
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v13, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 370
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ensureNativeLibs.putBoolean("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=false)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_17
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 211
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.ensureNativeLibs.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 214
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/j;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
.end method
