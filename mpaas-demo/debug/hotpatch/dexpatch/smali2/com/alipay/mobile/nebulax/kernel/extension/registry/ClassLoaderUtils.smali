.class Lcom/alipay/mobile/nebulax/kernel/extension/registry/ClassLoaderUtils;
.super Ljava/lang/Object;
.source "ClassLoaderUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NebulaXKernel:ClassLoaderUtils"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadClass(Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;"
        }
    .end annotation

    .line 14
    nop

    .line 16
    nop

    .line 17
    :try_start_0
    invoke-interface {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;->getClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    const-string p1, "NebulaXKernel:ClassLoaderUtils"

    const-string p2, "failed to load class"

    invoke-static {p1, p2, p0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 21
    :goto_0
    return-object p0
.end method
