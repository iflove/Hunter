.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;
.super Ljava/lang/Object;
.source "H5NebulaAppCacheManager.java"


# static fields
.field public static final NEBULA_H5INNERTINY_APP:Ljava/lang/String; = "nebulaH5InnerTinyApp"

.field public static final NEBULA_H5TINY_APP:Ljava/lang/String; = "nebulaH5TinyApp"

.field public static final NEBULA_H5_APP:Ljava/lang/String; = "nebulaH5App"

.field public static final NEBULA_NATIVE_TINY_APP:Ljava/lang/String; = "nebulaNativeTinyApp"

.field private static final TAG:Ljava/lang/String; = "H5NebulaAppCacheManager"

.field private static nebulaAppType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->nebulaAppType:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableMulti(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 159
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->nebulaAppType:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    const/4 v1, 0x0

    move-object v2, v1

    .line 160
    .local v2, "h5StartAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 161
    const-string v0, "H5NebulaAppCacheManager"

    const-string v3, "enableMulti h5StartAppInfo == null"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object v3, v1

    .line 163
    .local v3, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v3, v0

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v3, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 165
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 166
    .local v1, "copy":Landroid/os/Bundle;
    move-object v1, v4

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->mergeConmonStartParam(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Landroid/os/Bundle;

    .line 167
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->openMultiFromParam(Landroid/os/Bundle;Z)Z

    move-result v4

    return v4

    .line 169
    .end local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v1    # "copy":Landroid/os/Bundle;
    .end local v3    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_0
    nop

    .line 172
    const/4 v0, 0x0

    return v0

    .line 170
    :cond_1
    iget-boolean v0, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->enableMultiProcess:Z

    return v0
.end method

.method private static enableUseCache()Z
    .locals 3

    .line 48
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 49
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 50
    const-string v1, "H5NebulaAppCacheManager"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const/4 v2, 0x0

    return v2

    .line 55
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static getAppType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 61
    return-object v1

    .line 63
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->enableUseCache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    return-object v1

    .line 66
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->nebulaAppType:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-object v2, v1

    .line 67
    .local v2, "type":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    move-object v2, v0

    if-nez v0, :cond_2

    .line 68
    return-object v1

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " getAppType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NebulaAppCacheManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    return-object v0
.end method

.method public static isH5TinyApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .line 124
    const-string/jumbo v0, "nebulaH5TinyApp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static openMultiFromParam(Landroid/os/Bundle;Z)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "H5Tiny"    # Z

    .line 110
    const-string v0, "enableMultiProcess"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 111
    .local v1, "openMultiFromParam":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    return p1

    .line 116
    :cond_0
    const-string/jumbo v0, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static putAppType(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 43
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->nebulaAppType:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public static setAppType(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "startAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 75
    if-nez p1, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v0

    const-string/jumbo v1, "nebulaH5TinyApp"

    if-eqz v0, :cond_1

    .line 79
    iput-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isRNApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    const-string/jumbo v0, "nebulaNativeTinyApp"

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInnerTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    const-string/jumbo v0, "nebulaH5InnerTinyApp"

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_3
    const-string/jumbo v0, "nebulaH5App"

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->openMultiFromParam(Landroid/os/Bundle;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->enableMultiProcess:Z

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    .line 92
    iput-boolean v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->useAppX:Z

    return-void

    .line 94
    :cond_4
    iput v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    .line 95
    const-string v0, "enableDSL"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->useAppX:Z

    .line 97
    iget-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 98
    iget-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 99
    .local v1, "extraJo":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 100
    const-string/jumbo v0, "usePresetPopmenu"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "usePresetPopmenu":Ljava/lang/String;
    const-string v2, "YES"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->isUsePresetPopmenu:Z

    .line 107
    .end local v0    # "usePresetPopmenu":Ljava/lang/String;
    .end local v1    # "extraJo":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    return-void
.end method

.method public static useAppX(Ljava/lang/String;)Z
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;

    .line 129
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 130
    return v1

    .line 132
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->enableUseCache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    return v1

    .line 135
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->nebulaAppType:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    const/4 v2, 0x0

    move-object v3, v2

    .line 136
    .local v3, "type":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    move-object v3, v0

    const-string v4, "H5NebulaAppCacheManager"

    if-nez v0, :cond_3

    .line 137
    const-string/jumbo v0, "useAppX type == null"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object v5, v2

    .line 139
    .local v5, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v5, v0

    if-eqz v0, :cond_3

    .line 140
    invoke-interface {v5, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    move-object v1, v2

    .line 141
    .local v1, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    const/4 v0, 0x1

    return v0

    .line 144
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v2, "copy":Landroid/os/Bundle;
    move-object v2, v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->mergeConmonStartParam(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Landroid/os/Bundle;

    .line 146
    const-string v0, "enableDSL"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "yes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 149
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v2    # "copy":Landroid/os/Bundle;
    .end local v5    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " useAppX "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    if-eqz v3, :cond_4

    .line 151
    iget-boolean v0, v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->useAppX:Z

    return v0

    .line 153
    :cond_4
    return v1
.end method
