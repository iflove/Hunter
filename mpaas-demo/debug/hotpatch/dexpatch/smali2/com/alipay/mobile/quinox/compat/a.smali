.class public final Lcom/alipay/mobile/quinox/compat/a;
.super Ljava/lang/Object;
.source "Qiku.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 40
    const-string v1, "8681-M02"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 41
    const-string v1, "8692-A00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 42
    const-string v1, "8681-A01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/alipay/mobile/quinox/compat/a;->a:Z

    .line 39
    return-void
.end method

.method public static a(Ljava/lang/ClassLoader;)V
    .locals 9
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    const-string v0, "Qiku"

    .line 50
    sget-boolean v1, Lcom/alipay/mobile/quinox/compat/a;->a:Z

    if-eqz v1, :cond_3

    .line 52
    :try_start_0
    const-class v1, Ldalvik/system/BaseDexClassLoader;

    const-string v2, "pathList"

    invoke-static {v1, p0, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 53
    .local v3, "pathList":Ljava/lang/Object;
    move-object v3, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "dexElements"

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v4, v2

    .line 54
    .local v4, "dexElements":[Ljava/lang/Object;
    move-object v4, v1

    array-length v1, v1

    const/4 v5, 0x0

    move v6, v5

    .line 55
    .local v6, "N":I
    move v6, v1

    const/4 v7, 0x1

    if-le v1, v7, :cond_2

    .line 56
    aget-object v1, v4, v5

    .line 57
    .local v2, "plugin_core":Ljava/lang/Object;
    move-object v2, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v5, "file"

    invoke-static {v1, v2, v5}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 58
    .local v1, "file":Ljava/io/File;
    const-string v5, "plugin-core.jar"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 60
    add-int/lit8 v7, v5, -0x1

    aget-object v8, v4, v5

    aput-object v8, v4, v7

    .line 59
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    .end local v5    # "i":I
    :cond_0
    add-int/lit8 v5, v6, -0x1

    aput-object v1, v4, v5

    .line 64
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "PathClassLoader: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "plugin_core":Ljava/lang/Object;
    .end local v3    # "pathList":Ljava/lang/Object;
    .end local v4    # "dexElements":[Ljava/lang/Object;
    .end local v6    # "N":I
    :cond_2
    return-void

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_3
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .line 79
    sget-boolean v0, Lcom/alipay/mobile/quinox/compat/a;->a:Z

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "androidx.core."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
