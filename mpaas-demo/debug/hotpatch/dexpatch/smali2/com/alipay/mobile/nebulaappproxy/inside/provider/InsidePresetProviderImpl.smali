.class public Lcom/alipay/mobile/nebulaappproxy/inside/provider/InsidePresetProviderImpl;
.super Ljava/lang/Object;
.source "InsidePresetProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;


# static fields
.field private static final NEBULA_APPS_PRE_INSTALL:Ljava/lang/String;


# instance fields
.field final NEBULA_LOCAL_PACKAGE_APP_IDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private TINY_COMMON_APP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "nebulaPreset"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/inside/provider/InsidePresetProviderImpl;->NEBULA_APPS_PRE_INSTALL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/provider/InsidePresetProviderImpl;->NEBULA_LOCAL_PACKAGE_APP_IDS:Ljava/util/Map;

    .line 28
    const-string v0, "66666692"

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/provider/InsidePresetProviderImpl;->TINY_COMMON_APP:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommonResourceAppList()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 34
    .local v1, "applist":Ljava/util/Set;
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/provider/InsidePresetProviderImpl;->TINY_COMMON_APP:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    return-object v1
.end method

.method public getEnableDegradeApp()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5PresetPkg()Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;
    .locals 4

    .line 40
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 42
    .local v2, "h5PresetInfo2":Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;
    move-object v2, v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/provider/InsidePresetProviderImpl;->TINY_COMMON_APP:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;->appId:Ljava/lang/String;

    .line 50
    const-string v0, "0.2.1903192057.11"

    iput-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;->version:Ljava/lang/String;

    .line 51
    const-string v0, "http://alipay-rmsdeploy-image.cn-hangzhou.alipay.aliyun-inc.com/jet-dev/AM_66666692-sign/01a4siw190pxh.amr"

    iput-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;->downloadUrl:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/provider/InsidePresetProviderImpl;->NEBULA_LOCAL_PACKAGE_APP_IDS:Ljava/util/Map;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/provider/InsidePresetProviderImpl;->TINY_COMMON_APP:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;-><init>()V

    .line 55
    .local v1, "h5PresetPkg":Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;
    move-object v1, v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/provider/InsidePresetProviderImpl;->NEBULA_LOCAL_PACKAGE_APP_IDS:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->setPreSetInfo(Ljava/util/Map;)V

    .line 56
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/inside/provider/InsidePresetProviderImpl;->NEBULA_APPS_PRE_INSTALL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->setPresetPath(Ljava/lang/String;)V

    .line 57
    return-object v1
.end method

.method public getPresetAppInfo()Ljava/io/InputStream;
    .locals 1

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPresetAppInfoObject()Ljava/io/InputStream;
    .locals 1

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTinyCommonApp()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/provider/InsidePresetProviderImpl;->TINY_COMMON_APP:Ljava/lang/String;

    return-object v0
.end method
