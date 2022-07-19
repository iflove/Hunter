.class public interface abstract Lcom/alipay/mobile/quinox/bundle/IBundleOperator;
.super Ljava/lang/Object;
.source "IBundleOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;
    }
.end annotation


# static fields
.field public static final ACTIVITY_NAME:Ljava/lang/String; = "Activity-Name"

.field public static final ANDROID_MANIFEST_XML:Ljava/lang/String; = "AndroidManifest.xml"

.field public static final APPLICATION_NAME:Ljava/lang/String; = "Application-Name"

.field public static final ASPECT_INFO:Ljava/lang/String; = "Aspect-Info"

.field public static final ASSETS:Ljava/lang/String; = "assets"

.field public static final BUNDLE_MF:Ljava/lang/String; = "BUNDLE.MF"

.field public static final BUNDLE_NAME:Ljava/lang/String; = "Bundle-Name"

.field public static final BUNDLE_VERSION:Ljava/lang/String; = "Bundle-Version"

.field public static final CLASSES_DEX:Ljava/lang/String; = "classes.dex"

.field public static final CONTAINS_CODE:Ljava/lang/String; = "Contains-Dex"

.field public static final CONTAINS_RES:Ljava/lang/String; = "Contains-Res"

.field public static final CREATED_BY:Ljava/lang/String; = "Created-By"

.field public static final EXPORT_PACKAGE:Ljava/lang/String; = "Export-Package"

.field public static final EXTENSION:Ljava/lang/String; = ".jar"

.field public static final INIT_LEVEL:Ljava/lang/String; = "Init-Level"

.field public static final INJECT_CLASSVERIFIER:Ljava/lang/String; = "Inject-ClassVerifier"

.field public static final KEY_EXPORT_PACKAGES:Ljava/lang/String; = "export.packages"

.field public static final KEY_INIT_LEVEL:Ljava/lang/String; = "init.level"

.field public static final KEY_PACKAGE_ID:Ljava/lang/String; = "package.id"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "package.name"

.field public static final LIB:Ljava/lang/String; = "lib"

.field public static final MANIFEST_VERSION:Ljava/lang/String; = "Manifest-Version"

.field public static final META_INF:Ljava/lang/String; = "META-INF"

.field public static final META_INF_BUNDLE_MF:Ljava/lang/String; = "META-INF/BUNDLE.MF"

.field public static final NATIVE_LIBRARY:Ljava/lang/String; = "Native-Library"

.field public static final PACKAGE_ID:Ljava/lang/String; = "Package-Id"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "Package-Name"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "Provider-Name"

.field public static final RECEIVER_NAME:Ljava/lang/String; = "Receiver-Name"

.field public static final REQUIRE_BUNDLE:Ljava/lang/String; = "Require-Bundle"

.field public static final RESOURCES_ARSC:Ljava/lang/String; = "resources.arsc"

.field public static final SERVICE_NAME:Ljava/lang/String; = "Service-Name"

.field public static final TAG:Ljava/lang/String; = "BundleOperator"


# virtual methods
.method public abstract getBundleType()Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;
.end method

.method public abstract readBundlesFromCfg(Ljava/util/List;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/IBundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract readBundlesFromInputStream(Ljava/io/InputStream;Ljava/util/List;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/IBundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract writeBundlesToCfg(Ljava/util/List;Ljava/util/List;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/bundle/IBundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract writeBundlesToCfg(Ljava/util/List;Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/bundle/IBundle;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract writeBundlesToCfg2(Ljava/util/List;Ljava/util/List;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/bundle/IBundle;",
            ">;)V"
        }
    .end annotation
.end method
