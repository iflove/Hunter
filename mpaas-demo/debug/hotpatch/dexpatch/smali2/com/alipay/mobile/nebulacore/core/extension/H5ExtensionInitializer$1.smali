.class Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer$1;
.super Ljava/lang/Object;
.source "H5ExtensionInitializer.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer;->c()Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer;

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer$1;->a:Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 2
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 48
    .local v1, "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    move-object v1, v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/BundleContext;->loadBundle(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
