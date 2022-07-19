.class public interface abstract Lcom/alipay/mobile/quinox/resources/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# virtual methods
.method public varargs abstract appendResourcesByBundleName(Lcom/alipay/mobile/quinox/resources/BundleResources;[Ljava/lang/String;)Landroid/content/res/Resources;
.end method

.method public abstract clearCachedBundleResources()V
.end method

.method public abstract getHostResources()Landroid/content/res/Resources;
.end method

.method public varargs abstract getResourcesByBundle(Lcom/alipay/mobile/quinox/bundle/Bundle;[Ljava/lang/String;)Landroid/content/res/Resources;
.end method

.method public abstract updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
.end method
