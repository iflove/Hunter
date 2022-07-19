.class public Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;
.super Ljava/lang/Object;
.source "H5BaseProviderInfo.java"


# static fields
.field public static final h5worker:Ljava/lang/String; = "android-phone-wallet-h5worker"

.field public static final nebula:Ljava/lang/String; = "android-phone-wallet-nebula"

.field public static final nebulaappproxy:Ljava/lang/String; = "android-phone-wallet-nebulaappproxy"

.field public static final nebulabiz:Ljava/lang/String; = "android-phone-wallet-nebulabiz"

.field public static final nebuladebug:Ljava/lang/String; = "android-phone-wallet-nebuladebug"

.field public static final nebulauc:Ljava/lang/String; = "android-phone-wallet-nebulauc"

.field public static providerInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 58
    sput-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5NebulaDebugProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v3, "android-phone-wallet-nebuladebug"

    const-string v4, "com.alipay.mobile.nebuladebug.H5DebugProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v2, "android-phone-wallet-nebula"

    const-string v3, "com.alipay.mobile.nebulacore.dev.trace.H5TraceProviderImpl"

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.alipay.mobile.nebula.provider.H5TraceProvider"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v3, "com.alipay.mobile.nebulacore.wallet.H5LogProviderImpl"

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.alipay.mobile.nebula.provider.H5LogProvider"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v3, "com.alipay.mobile.nebulacore.wallet.H5ThreadPoolProviderImpl"

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.alipay.mobile.nebula.provider.H5ThreadPoolProvider"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v3, "com.alipay.mobile.nebulaappproxy.provider.H5TinyAppRemoteLogProviderImpl"

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.alipay.mobile.nebula.provider.H5TinyAppRemoteLogProvider"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;

    .line 80
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.alipay.mobile.nebulacore.dev.provider.H5BugMeRpcAuthProviderImpl"

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v3, "com.alipay.mobile.nebula.provider.H5BugMeRpcAuthProvider"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v3, "android-phone-wallet-nebulabiz"

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5DisClaimerProviderImpl"

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.alipay.mobile.nebula.provider.H5DisClaimerProvider"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5WarningTipProviderImpl"

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.alipay.mobile.nebula.provider.H5WarningTipProvider"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5ABTestProviderImpl"

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.alipay.mobile.nebula.provider.H5ABTestProvider"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "android-phone-wallet-nebulaappproxy"

    const-string v5, "com.alipay.mobile.nebulaappproxy.provider.H5APMToolImpl"

    invoke-direct {v1, v4, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5APMTool"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.WalletEnvProvider"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5EnvProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulaappproxy.provider.WalletConfigProvider"

    invoke-direct {v1, v4, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5ConfigProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.WalletCacheProvider"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5CacheProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulaappproxy.provider.WalletPreRpcProvider"

    invoke-direct {v1, v4, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5PreRpcProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.WalletLocationDialogProvider"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5LocationDialogProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.WalletChannelProvider"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5ChannelProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.WalletImageProvider"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5ImageProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.WalletImageUploadProvider"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5ImageUploadProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.WalletCardShareProvider"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5CardShareProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.WalletLastKnowLocationProvider"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5LastKnowLocationProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.baseprovider.H5BaseAppProviderImpl"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5AppProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.H5JSApiPermissionProviderImp"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5JSApiPermissionProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.H5NewJSApiPermissionProviderImpl"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5NewJSApiPermissionProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.H5WalletDialogProvider"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5DialogManagerProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.H5WalletListPopDialogProvider"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5ListPopDialogProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.H5WalletToastProvider"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5ToastProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "android-phone-businesscommon-commonbiz"

    const-string v6, "com.alipay.mobile.nebulabiz.shareutils.H5SharePanelProviderImp"

    invoke-direct {v1, v5, v6}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5SharePanelProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.appcenter.H5AppCenterPresetProviderImpl"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5AppCenterPresetProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "android-phone-wallet-nebulaappcenter"

    const-string v6, "com.alipay.mobile.nebulaappcenter.provider.TaconfigProviderImpl"

    invoke-direct {v1, v5, v6}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.TaConfigProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.mpaas.nebula.provider.H5InputBoardProviderImpEx"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5InputBoardProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulaappproxy.provider.H5LoginProviderImpl"

    invoke-direct {v1, v4, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5LoginProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.H5AntUIActionSheetProviderImpl"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5ActionSheetProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.H5SearchViewImpl"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.search.H5SearchView"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.H5ResourceHandlerImpl"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.resourcehandler.H5ResourceHandler"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.H5478ProviderImpl"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5478Provider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.H5LoadingDialogImpl"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5LoadingDialog"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.H5InputDialogProviderImpl"

    invoke-direct {v1, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5InputDialogProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulaappproxy.provider.H5SimpleRpcProviderImpl"

    invoke-direct {v1, v4, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5SimpleRpcProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulaappproxy.provider.H5OpenAuthProviderImpl"

    invoke-direct {v1, v4, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5OpenAuthProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5RpcProxyProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v6, "com.alipay.mobile.nebulabiz.provider.H5RpcProxyProviderImpl"

    invoke-direct {v5, v3, v6}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AutoLoginProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v6, "com.alipay.mobile.nebulabiz.provider.H5AutoLoginProviderImpl"

    invoke-direct {v5, v3, v6}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5BizStartParamsProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v6, "com.alipay.mobile.nebulabiz.provider.H5BizStartParamsProviderImpl"

    invoke-direct {v5, v3, v6}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5InPageRenderProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v6, "android-phone-wallet-nebulauc"

    const-string v7, "com.alipay.mobile.nebulauc.provider.H5InPageRenderProviderImpl"

    invoke-direct {v5, v6, v7}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulauc.provider.H5UCProviderImpl"

    invoke-direct {v1, v6, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5UCProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulauc.impl.network.provider.H5PreConnectProviderImpl"

    invoke-direct {v1, v6, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5PreConnectProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulauc.impl.network.provider.UCFallbackStreamProvider"

    invoke-direct {v1, v6, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5FallbackStreamProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulauc.provider.UcPathProviderImpl"

    invoke-direct {v1, v6, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5WebViewPathProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulauc.provider.H5GetOptionProvidedKeyProviderImpl"

    invoke-direct {v1, v6, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5GetOptionProvidedKeyProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulaappproxy.provider.WalletAppBizRpcImpl"

    invoke-direct {v1, v4, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.alipay.mobile.nebula.provider.H5AppBizRpcProvider"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebula.appcenter.downloadImpl.H5AppDownLoadImpl"

    invoke-direct {v1, v2, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.alipay.mobile.nebula.appcenter.download.H5ExternalDownloadManager"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v2, "com.alipay.mobile.nebulaappproxy.provider.H5PatchProviderImpl"

    invoke-direct {v1, v4, v2}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.alipay.mobile.nebula.provider.H5PatchProvider"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppClientUpgradeProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulabiz.provider.TinyAppClientUpgradeProviderImpl"

    invoke-direct {v2, v3, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulaappproxy.tinypermission.H5ApiManagerImpl"

    invoke-direct {v2, v4, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulaappproxy.tinymenu.dynamicpanel.H5TinyPopMenu"

    invoke-direct {v2, v4, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulaappproxy.provider.H5TinyAppProviderImpl"

    invoke-direct {v2, v4, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulaappproxy.provider.H5TinyAppContentProviderImpl"

    invoke-direct {v2, v4, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v5, "com.alipay.mobile.nebulaappproxy.provider.TinyAppActivityLoadingView"

    invoke-direct {v2, v4, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "android-phone-wallet-h5worker"

    const-string v5, "com.alipay.mobile.worker.TinyAppWorkerProviderImpl"

    invoke-direct {v2, v4, v5}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v2, "com.alipay.mobile.nebulabiz.provider.H5LottieViewProviderImpl"

    invoke-direct {v1, v3, v2}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.alipay.mobile.nebula.provider.H5LottieViewProvider"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v2, "com.alipay.mobile.nebulabiz.provider.H5ErrorPageViewImpl"

    invoke-direct {v1, v3, v2}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.alipay.mobile.nebula.provider.H5ErrorPageView"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5StartParamCheck;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5StartParamCheckImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TimeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5TimeServiceImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/permission/H5PermissionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5PermissionManagerImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5UrlDownloadProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5UrlDownloadProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TinyDebugModeProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5TinyDebugModeProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5SchemeInterceptProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5SchemeInterceptProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5HttpErrorRouterProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5PullHeaderViewProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5PullHeaderViewProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5BizProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5BizProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5NebulaFileProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5FileProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5NativeCanvasProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5NativeCanvasProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5NewPreRpcProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5PreRPCProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5BizPreHandleProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5BizPreHandleProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AlipayFontProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5AlipayFontProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5DomainConvergeProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5DomainConvergeProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5EventTrackerImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v2, "android-phone-mobilecommon-map"

    const-string v4, "com.alipay.mobile.commonbiz.map.H5MapProviderImpl"

    invoke-direct {v1, v2, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.alipay.mobile.nebula.provider.H5MapProvider"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5TinyAppInnerProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TinyAppOpenplatformApiProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string v4, "com.alipay.mobile.nebulabiz.provider.H5TinyAppOpenplatformApiProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
