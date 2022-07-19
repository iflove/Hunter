.class public Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;
.super Ljava/lang/Object;
.source "IPCMainProcessServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl$IPCMainProcessServiceImplInner;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;->b:Landroid/content/BroadcastReceiver;

    .line 109
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 128
    :try_start_0
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    .local v0, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    :try_start_1
    const-string v1, "IPCMainProcessServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "configService = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->addConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .end local v0    # "configService":Lcom/alipay/mobile/base/config/ConfigService;
    :cond_0
    return-void

    .line 133
    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v0, 0x0

    .line 134
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;->a:Ljava/lang/String;

    const-string v2, "config init exception"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;->b:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;
    .locals 1

    .line 145
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl$IPCMainProcessServiceImplInner;->INSTANCE:Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;

    return-object v0
.end method


# virtual methods
.method public getDefaultCurrentStorageSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .line 175
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getDefaultCurrentStorageSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFontSizeSetting()F
    .locals 3

    .line 156
    const-class v0, Lcom/alipay/mobile/framework/service/textsize/TextSizeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/textsize/TextSizeService;

    const/4 v1, 0x0

    .line 157
    .local v1, "textSizeService":Lcom/alipay/mobile/framework/service/textsize/TextSizeService;
    move-object v1, v0

    const/high16 v2, 0x41800000    # 16.0f

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/textsize/TextSizeService;->transformSize(F)F

    move-result v0

    return v0

    .line 160
    :cond_0
    return v2
.end method

.method public getRecentUserTinyAppList()Lcom/alibaba/fastjson/JSONArray;
    .locals 6

    .line 180
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 181
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 182
    .local v2, "service":Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 183
    return-object v1

    .line 186
    :cond_0
    const/4 v0, 0x0

    .line 188
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getSmallProgramList()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 191
    goto :goto_0

    .line 189
    :catchall_0
    move-exception v3

    .line 190
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;->a:Ljava/lang/String;

    const-string v5, "getSmallProgramList error"

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 197
    :cond_1
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    return-object v1

    .line 193
    :cond_2
    :goto_1
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;->a:Ljava/lang/String;

    const-string v4, "getRecentUserTinyAppList...result is null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-object v1
.end method

.method public mtopPreConnect()V
    .locals 4

    .line 232
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/mobilesdk/mtop/MtopService;

    .line 233
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilesdk/mtop/MtopService;

    const/4 v1, 0x0

    .line 234
    .local v1, "mtopService":Lcom/alipay/android/phone/mobilesdk/mtop/MtopService;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 235
    return-void

    .line 238
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v2, "mtopPreConnect...aliApp do preload job"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/mtop/MtopService;->preConnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .end local v1    # "mtopService":Lcom/alipay/android/phone/mobilesdk/mtop/MtopService;
    return-void

    .line 240
    :catchall_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mtopPreConnect...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public putInt(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "need2SyncAllLite"    # Z

    .line 202
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->putInt(Ljava/lang/String;IZ)V

    .line 203
    if-eqz p3, :cond_0

    .line 205
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 206
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v1, v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const/4 v0, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->sendDataToAllLiteProcess(ILandroid/os/Bundle;)V

    .line 209
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 213
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->remove(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public setPerformancePanelVisible(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 170
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->setPerformancePanelVisible(Ljava/lang/String;Z)V

    .line 171
    return-void
.end method

.method public setVConsoleVisible(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 165
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->setVConsoleVisible(Ljava/lang/String;Z)V

    .line 166
    return-void
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Z)V
    .locals 3
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "closeCurrentApp"    # Z

    .line 218
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 219
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1, p1, p1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 222
    :cond_0
    invoke-static {v0, p3}, Lcom/alipay/mobile/nebula/util/H5Utils;->toBundle(Landroid/os/Bundle;Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    .line 223
    .local v0, "startParams":Landroid/os/Bundle;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 225
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 226
    invoke-interface {v1, p1, p2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 227
    return-void
.end method
