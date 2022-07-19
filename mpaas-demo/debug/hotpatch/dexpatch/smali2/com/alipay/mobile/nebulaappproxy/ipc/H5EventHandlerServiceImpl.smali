.class public Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;
.super Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
.source "H5EventHandlerServiceImpl.java"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/String; = null

.field public static final tradePay:Ljava/lang/String; = "tradePay"


# instance fields
.field private b:Lcom/alipay/mobile/nebula/process/H5IpcServer;

.field private c:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 114
    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->a:Ljava/util/Set;

    const-string v1, "imageViewer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v1, "getLocation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v1, "getServerTime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    const-string/jumbo v1, "scan"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v1, "getCities"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    const-string/jumbo v1, "setLocatedCity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v1, "contact"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v1, "chooseContact"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v1, "chooseVideo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    const-string v1, "chooseImage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    const-string/jumbo v1, "tradePay"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    const-string/jumbo v1, "photo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    const-string/jumbo v1, "startApp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    const-string/jumbo v1, "pushBizWindow"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    const-string/jumbo v1, "startBizService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    const-string/jumbo v1, "saveBizServiceResult"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    const-string v1, "compressImage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    const-string/jumbo v1, "mtop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    const-string/jumbo v1, "setAPDataStorage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v1, "getAPDataStorage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    const-string/jumbo v1, "removeAPDataStorage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v1, "clearAPDataStorage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->RESTART_TINY_APP:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    const-string/jumbo v1, "setTinyLocalStorage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    const-string v1, "getTinyLocalStorage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    const-string/jumbo v1, "removeTinyLocalStorage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v1, "clearTinyLocalStorage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    const-string v1, "getTinyLocalStorageInfo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    const-string v1, "configService.getConfig"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    const-string v1, "beehiveMultilevelSelect"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v1, "getClientInfo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v1, "checkApp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    const-string/jumbo v1, "uploadImage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    const-string v1, "downloadImage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v1, "getConfig"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v1, "getAppInfo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v1, "getUserInfo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v1, "getThirdPartyAuthcode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    const-string v1, "getAppToken"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    const-string/jumbo v1, "verifyIdentity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    const-string/jumbo v1, "mtBizReport"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v1, "commonList"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v1, "beehiveGetPOI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    const-string/jumbo v1, "nfch5plugin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v1, "getMtopToken"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v1, "getQRCodeImage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v1, "FalconAIRec"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v1, "FalconAIModify"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    const-string v1, "getCurrentLocation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v1, "getLifestyleInfo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v1, "addFollow"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    const-string/jumbo v2, "navigateToMiniProgram"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v2, "APSocialNebulaPlugin.selectContactJSAPI"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    const-string v2, "APSocialNebulaPlugin.mockChatMessage"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v2, "APSocialNebulaPlugin.queryAndSelectAccount"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    const-string v2, "APSocialNebulaPlugin.queryExistingAccounts"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    const-string/jumbo v2, "mssdk.Security.getModuleState"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    const-string/jumbo v2, "mssdk.Security.setProtectState"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    const-string/jumbo v2, "mssdk.Security.getProtectState"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    const-string/jumbo v2, "mssdk.Security.checkDeviceRiskSync"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    const-string v2, "getLoginToken"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    const-string v2, "aliAutoLogin"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v2, "CaptureForIndustry"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    const-string/jumbo v2, "navigateToAlipayPage"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    const-string/jumbo v2, "playBackgroundAudio"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    const-string/jumbo v2, "pauseBackgroundAudio"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    const-string/jumbo v2, "stopBackgroundAudio"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    const-string/jumbo v2, "seekBackgroundAudio"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    const-string v2, "getBackgroundAudioPlayerState"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    const-string/jumbo v2, "startMonitorBackgroundAudio"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    const-string/jumbo v2, "stopMonitorBackgroundAudio"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    const-string v2, "getBackgroundAudioOption"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    const-string/jumbo v2, "setBackgroundAudioOption"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    const-string v2, "getCdpSpaceInfo"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    const-string v2, "getCdpSpaceInfos"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    const-string v2, "cdpFeedback"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    const-string v2, "cdpFeedbackForServer"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    const-string v2, "cdpRemoveView"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    const-string v2, "addH5Notice"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    const-string/jumbo v2, "removeH5Notice"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    const-string/jumbo v2, "updateSpaceInfosForBiz"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    const-string v2, "addLocalSpceInfo"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    const-string/jumbo v2, "removeLocalSpceInfo"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    const-string/jumbo v2, "riskAnalyze"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->a(Ljava/util/Set;)V

    .line 229
    const-string/jumbo v2, "registerUpdateManager"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    const-string/jumbo v2, "zimIdentity"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    const-string/jumbo v1, "removeFollow"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v1, "getPPFollowStatus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    const-string/jumbo v1, "setSharedData"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v1, "getSharedData"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    const-string/jumbo v1, "removeSharedData"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    const-string/jumbo v1, "shouldShowAddComponent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v1, "addToHomeWithComponent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v1, "closeAddComponentAction"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    const-string/jumbo v1, "questionaireApp2HomeShow"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    const-string v1, "editImage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    const-string/jumbo v1, "sendTinyLocalStorageToIDE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    const-string/jumbo v1, "shareTokenImageSilent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v1, "APSocialNebulaPlugin.shareMessageDirect"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    const-string v1, "downloadUCCore"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    const-string/jumbo v1, "reloadUCCore"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    const-string v1, "deposit"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    const-string/jumbo v1, "recentUsedTinyApps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    const-string v1, "deleteRecentUsedTinyAppRecode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    const-string v1, "canAppAddToHomeStage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    const-string/jumbo v1, "moveRecentUsedAppToTop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    const-string v1, "addAppToHomeStage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    const-string/jumbo v1, "queryMarketStageAppInfo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    const-string v1, "bindTB"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    const-string v1, "login"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    const-string v1, "ABTestExperimentParam"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    const-string v1, "getAuthStatus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    const-string/jumbo v1, "openCode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    const-string/jumbo v1, "queryCodeRPC"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    const-string/jumbo v1, "registerSync"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    const-string/jumbo v1, "unregisterSync"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 272
    const-string/jumbo v1, "responseSyncNotify"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    const-string/jumbo v1, "refreshSyncSkey"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    const-string v1, "AlipayNewYearNebulaPlugin.showFuCard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 279
    const-string/jumbo v1, "printerSendMsg"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 281
    const-string/jumbo v1, "startSpeech"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    const-string/jumbo v1, "stopSpeech"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    const-string v1, "isSpeechAvailable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v1, "getKBLocation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 637
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 464
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;-><init>()V

    .line 465
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "netValue"    # Ljava/lang/String;

    .line 914
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/ZURLEncodedUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()V
    .locals 0

    .line 100
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->j()V

    return-void
.end method

.method private static a(Landroid/os/Bundle;)V
    .locals 9
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 483
    .local v0, "time":J
    const-string v2, "appId"

    invoke-static {p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, "appId":Ljava/lang/String;
    const-string v3, "appVersion"

    invoke-static {p0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "version":Ljava/lang/String;
    const-string/jumbo v4, "release_type"

    invoke-static {p0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, "release_type":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, "value":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v6

    const-string v7, "appUniqueId"

    invoke-interface {v6, v7, v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->putBizExternParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {v7, v5}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 489
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setLogVersion "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cost:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "H5EventHandlerImpl"

    invoke-static {v7, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;

    .line 100
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->k()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "responseType"    # Ljava/lang/String;
    .param p4, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 887
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->isRemoteDebugConnected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->isVConsolePanelOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 888
    :cond_0
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$5;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$5;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 911
    :cond_1
    return-void
.end method

.method private static a(Ljava/util/Set;)V
    .locals 6
    .param p0, "multiProcessSet"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 291
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 292
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 293
    .local v2, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 294
    const-string v0, "h5_main_process_invoke_list"

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 295
    .local v3, "value":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    move-object v4, v1

    .line 297
    .local v4, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v4, v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 299
    .local v1, "data":Ljava/lang/Object;
    move-object v1, v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 300
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-interface {p0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v1    # "data":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 306
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    return-void
.end method

.method static synthetic b()V
    .locals 0

    .line 100
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->g()V

    return-void
.end method

.method static synthetic c()V
    .locals 0

    .line 100
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->h()V

    return-void
.end method

.method static synthetic d()V
    .locals 0

    .line 100
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->i()V

    return-void
.end method

.method private static e()Z
    .locals 3

    .line 599
    const/4 v0, 0x0

    .local v0, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/base/config/ConfigService;

    .line 600
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 601
    const-string v1, "h5_use_tinyLoadingView"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    const/4 v2, 0x0

    return v2

    .line 606
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private declared-synchronized f()Lcom/alipay/mobile/nebula/process/H5IpcServer;
    .locals 1

    monitor-enter p0

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->b:Lcom/alipay/mobile/nebula/process/H5IpcServer;

    if-nez v0, :cond_0

    .line 630
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5IpcServerImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->b:Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 632
    .end local p0    # "this":Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->b:Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static g()V
    .locals 6

    .line 1056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1057
    .local v0, "time":J
    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/service/H5Service;

    const/4 v3, 0x0

    .line 1058
    .local v3, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 1059
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5Service;->initServicePlugin()V

    .line 1060
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "initServicePlugin  cost:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "H5EventHandlerImpl"

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :cond_0
    return-void
.end method

.method private static h()V
    .locals 7

    .line 1067
    const-string v0, "H5EventHandlerImpl"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1069
    .local v1, "time":J
    const-string v3, "https://www.alipay.com/"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1070
    .local v3, "cookieStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initCookie "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    .end local v1    # "time":J
    .end local v3    # "cookieStr":Ljava/lang/String;
    return-void

    .line 1071
    :catchall_0
    move-exception v1

    .line 1072
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1074
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method private static i()V
    .locals 7

    .line 1077
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1079
    .local v0, "time":J
    new-instance v2, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;-><init>(Landroid/content/Context;)V

    .line 1081
    .local v2, "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 1082
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    const/4 v4, 0x0

    .line 1083
    .local v4, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    move-object v4, v3

    if-eqz v3, :cond_0

    .line 1084
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getUserId()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->d:Ljava/lang/String;

    .line 1087
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pre init h5NetworkManager "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "H5EventHandlerImpl"

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    return-void
.end method

.method private static j()V
    .locals 19

    .line 1093
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1094
    .local v0, "time":J
    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/service/H5Service;

    const/4 v3, 0x0

    move-object v4, v3

    .line 1095
    .local v4, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v4, v2

    if-eqz v2, :cond_1

    .line 1096
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    .line 1097
    .local v3, "h5ProviderManager":Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 1099
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 1101
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 1103
    .local v5, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    const-class v6, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 1105
    .local v6, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    const-class v7, Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;

    .line 1107
    .local v7, "h5ChannelProvider":Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;
    const-class v8, Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;

    .line 1109
    .local v8, "h5SimpleRpcProvider":Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;
    const-class v9, Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;

    .line 1111
    .local v9, "h5ResourceHandler":Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;
    const-class v10, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    .line 1113
    .local v10, "h5SharePanelProvider":Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;
    const-class v11, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;

    .line 1115
    .local v11, "h5ThreadPoolProvider":Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;
    const-class v12, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    .line 1117
    .local v12, "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    const-class v13, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 1119
    .local v13, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "initProvider cost:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    .end local v3    # "h5ProviderManager":Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .end local v4    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .local v17, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .local v18, "h5ProviderManager":Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    sub-long v3, v15, v0

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5EventHandlerImpl"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1097
    .end local v2    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v5    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .end local v6    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .end local v7    # "h5ChannelProvider":Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;
    .end local v8    # "h5SimpleRpcProvider":Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;
    .end local v9    # "h5ResourceHandler":Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;
    .end local v10    # "h5SharePanelProvider":Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;
    .end local v11    # "h5ThreadPoolProvider":Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;
    .end local v12    # "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    .end local v13    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v17    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v18    # "h5ProviderManager":Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .restart local v3    # "h5ProviderManager":Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .restart local v4    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_0
    move-object/from16 v18, v3

    move-object/from16 v17, v4

    .end local v3    # "h5ProviderManager":Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .end local v4    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .restart local v17    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .restart local v18    # "h5ProviderManager":Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    goto :goto_0

    .line 1095
    .end local v17    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v18    # "h5ProviderManager":Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .restart local v4    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_1
    move-object/from16 v17, v4

    .line 1126
    .end local v4    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .restart local v17    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :goto_0
    return-void
.end method

.method private k()V
    .locals 8

    const-string v0, "H5EventHandlerImpl"

    .line 1132
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1133
    .local v1, "time":J
    const-class v3, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 1134
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    const/4 v4, 0x0

    move-object v5, v4

    .line 1135
    .local v5, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v5, v3

    if-eqz v3, :cond_0

    .line 1136
    invoke-interface {v5}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->getTinyProcessUseConfigList()Ljava/util/Map;

    move-result-object v3

    .line 1137
    .local v3, "cacheMap":Ljava/util/Map;
    const-class v6, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1138
    .local v4, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v4, v6

    if-eqz v6, :cond_0

    .line 1139
    invoke-interface {v4, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->putConfigCache(Ljava/util/Map;)V

    .line 1142
    .end local v3    # "cacheMap":Ljava/util/Map;
    .end local v4    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initConfig cost:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    .end local v1    # "time":J
    .end local v5    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    return-void

    .line 1143
    :catchall_0
    move-exception v1

    .line 1144
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1146
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public clientSenMsg(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "biz"    # Ljava/lang/String;
    .param p2, "bizMsg"    # Landroid/os/Message;

    .line 373
    invoke-static {p1, p2}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->send(Ljava/lang/String;Landroid/os/Message;)V

    .line 374
    return-void
.end method

.method public enableHandler(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .line 311
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 311
    return v0
.end method

.method public getH5IpcServerImpl()Lcom/alipay/mobile/nebula/process/H5IpcServer;
    .locals 1

    .line 561
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->f()Lcom/alipay/mobile/nebula/process/H5IpcServer;

    move-result-object v0

    return-object v0
.end method

.method public getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "t"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 384
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallClient;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5EventHandlerImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLitePid()I
    .locals 3

    .line 453
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->needSupportLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->getLpid()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 456
    :catchall_0
    move-exception v0

    .line 457
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "H5EventHandlerImpl"

    const-string v2, "getLitePid error!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMultiProcessTag()Ljava/lang/String;
    .locals 1

    .line 368
    const-string v0, "LITE_PROCESS_ID"

    return-object v0
.end method

.method public getStartParams()Landroid/os/Bundle;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public handlerAction(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 5
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 317
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->putSubProH5BridgeContext(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 319
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy;->handlerBizInTinyProcess(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handlerBizInTinyProcess not send to MainProcess "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5EventHandlerImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 323
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 324
    .local v0, "message":Landroid/os/Message;
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->H5EventToBundle(Lcom/alipay/mobile/h5container/api/H5Event;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    .line 325
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v2, v1

    const v3, 0x1312d43

    const-string/jumbo v4, "msg_type"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 327
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageId()I

    move-result v1

    const-string/jumbo v3, "msg_lite_process_page_id"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 330
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 331
    const-string/jumbo v1, "nebulaApp"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->clientSenMsg(Ljava/lang/String;Landroid/os/Message;)V

    .line 333
    .end local v0    # "message":Landroid/os/Message;
    .end local v2    # "bundle":Landroid/os/Bundle;
    return-void
.end method

.method public httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BJLjava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;
    .locals 35
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "headers"    # Ljava/util/Map;
    .param p4, "requestData"    # [B
    .param p5, "timeout"    # J
    .param p7, "responseType"    # Ljava/lang/String;
    .param p8, "responseCharset"    # Ljava/lang/String;
    .param p9, "spdy"    # Z
    .param p10, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            ")",
            "Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;"
        }
    .end annotation

    move-object/from16 v14, p1

    move-wide/from16 v11, p5

    move-object/from16 v15, p7

    move-object/from16 v10, p10

    const-string v9, ""

    const-string v8, "H5EventHandlerImpl"

    .line 645
    const/4 v7, 0x0

    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    invoke-direct {v0, v14}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;-><init>(Ljava/lang/String;)V

    move-object v1, v7

    .line 646
    .local v1, "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    move-object v13, v0

    move-object/from16 v5, p2

    .end local v1    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .local v13, "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setRequestMethod(Ljava/lang/String;)V

    .line 647
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v7

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    const-string v4, " "

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    .local v2, "key":Ljava/lang/String;
    move-object/from16 v3, p3

    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 649
    .local v1, "value":Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 650
    invoke-virtual {v13, v2, v1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    new-instance v6, Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    :try_start_3
    const-string/jumbo v7, "request headers "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    const/4 v7, 0x0

    goto :goto_0

    .line 867
    .end local v13    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    :catchall_0
    move-exception v0

    move-object/from16 v3, p3

    goto/16 :goto_16

    .line 656
    .restart local v13    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    :cond_0
    move-object/from16 v3, p3

    move-object v0, v9

    .line 657
    .local v0, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 659
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 660
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 661
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 662
    .local v2, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 663
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 664
    move-object v0, v1

    sput-object v1, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->d:Ljava/lang/String;

    .line 666
    .end local v2    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    :cond_1
    move-object v7, v0

    goto :goto_1

    .line 667
    :cond_2
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->d:Ljava/lang/String;

    move-object v0, v1

    move-object v7, v0

    goto :goto_1

    .line 671
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->a()Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->d()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    move-object v7, v0

    .line 675
    .end local v0    # "userId":Ljava/lang/String;
    .local v7, "userId":Ljava/lang/String;
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 676
    const-string/jumbo v0, "su584userid"

    invoke-virtual {v13, v0, v7}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_4
    const-string/jumbo v0, "su584channelapplet"

    const-string v1, "Y"

    invoke-virtual {v13, v0, v1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v0, "h5_app_type"

    const-string/jumbo v1, "mini_app"

    invoke-virtual {v13, v0, v1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    move-object/from16 v2, p4

    invoke-virtual {v13, v2}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setReqData([B)V

    .line 685
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 686
    .local v6, "uuid":Ljava/lang/String;
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$2;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v15, v4

    move-object/from16 v4, p10

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 709
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setAsyncMonitorLog(Z)V

    .line 711
    const/4 v2, 0x2

    if-eqz p9, :cond_5

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "linkType SPDY_LINK: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iput v1, v13, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->linkType:I

    goto :goto_2

    .line 715
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "linkType HTTP_LINK: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iput v2, v13, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->linkType:I

    .line 718
    :goto_2
    move-object v0, v9

    .line 719
    .local v0, "appId":Ljava/lang/String;
    if-eqz v10, :cond_6

    invoke-interface/range {p10 .. p10}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 720
    invoke-interface/range {p10 .. p10}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_3

    .line 722
    :cond_6
    move-object v3, v0

    .end local v0    # "appId":Ljava/lang/String;
    .local v3, "appId":Ljava/lang/String;
    :goto_3
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->isRemoteDebugConnected(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    const-string v4, "IO"

    if-nez v0, :cond_8

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->isVConsolePanelOpened()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v22, v3

    move-object/from16 v21, v4

    move-object/from16 v16, v7

    move-object v1, v8

    move-object/from16 v20, v9

    move-wide v3, v11

    move-object v5, v13

    const/16 v18, 0x0

    goto :goto_5

    .line 723
    :cond_8
    :goto_4
    move-object v5, v13

    .end local v13    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .local v5, "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    move-object v13, v3

    .line 724
    .local v13, "targetAppId":Ljava/lang/String;
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$3;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    move-object/from16 v16, v7

    const/16 v18, 0x0

    .end local v7    # "userId":Ljava/lang/String;
    .local v16, "userId":Ljava/lang/String;
    move-object v7, v2

    move-object v1, v8

    move-object/from16 v8, p0

    move-object/from16 v20, v9

    move-object v9, v5

    move-object/from16 v21, v4

    move-object v4, v10

    move-object/from16 v10, p2

    move-object/from16 v22, v3

    move-wide v3, v11

    .end local v3    # "appId":Ljava/lang/String;
    .local v22, "appId":Ljava/lang/String;
    move-object/from16 v11, p1

    move-object v12, v6

    :try_start_5
    invoke-direct/range {v7 .. v13}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$3;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 747
    .end local v13    # "targetAppId":Ljava/lang/String;
    :goto_5
    invoke-static/range {p10 .. p10}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->generateBizLog(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setBizLog(Ljava/lang/String;)V

    .line 748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-wide/from16 v23, v7

    .line 749
    .local v23, "time":J
    new-instance v0, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;-><init>(Landroid/content/Context;)V

    .line 750
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;->enqueue(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    move-object v2, v0

    .local v2, "future":Ljava/util/concurrent/Future;
    move-object/from16 v7, v18

    .line 753
    .local v7, "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-lez v0, :cond_9

    const-wide/16 v8, 0x7530

    cmp-long v0, v3, v8

    if-eqz v0, :cond_9

    .line 755
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "timeout "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 766
    .end local v7    # "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    .local v0, "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    move-object/from16 v25, v0

    goto :goto_6

    .line 757
    .end local v0    # "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    .restart local v7    # "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    :catchall_1
    move-exception v0

    move-object/from16 v0, v18

    .line 758
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_7
    const-string v8, "TimeoutException"

    invoke-virtual {v5, v8}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->cancel(Ljava/lang/String;)V

    .line 759
    new-instance v8, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;

    invoke-direct {v8}, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;-><init>()V

    move-object/from16 v9, v18

    .line 760
    .local v9, "h5HttpRequestResult":Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;
    move-object v9, v8

    const/16 v10, 0xd

    iput v10, v8, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseStatues:I

    .line 761
    new-instance v8, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v8, v9, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseHeader:Lcom/alibaba/fastjson/JSONArray;

    .line 762
    const-string/jumbo v8, "\u8bf7\u6c42\u8d85\u65f6\u5f02\u5e38"

    iput-object v8, v9, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseContext:Ljava/lang/String;

    .line 764
    iput v10, v9, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->error:I

    .line 765
    return-object v9

    .line 768
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v9    # "h5HttpRequestResult":Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;
    :cond_9
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;

    .end local v7    # "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    .local v0, "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    move-object/from16 v25, v0

    .line 771
    .end local v0    # "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    .local v25, "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "httpRequest timeCost h5HttpUrlRequest "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v23

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    move-object v13, v0

    .line 775
    .local v13, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    move-object v11, v0

    .line 777
    .local v11, "jsonHeaders":Lcom/alibaba/fastjson/JSONObject;
    const/4 v0, 0x0

    .line 778
    .local v0, "gzip":Z
    if-eqz v25, :cond_10

    :try_start_8
    invoke-virtual/range {v25 .. v25}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 779
    invoke-virtual/range {v25 .. v25}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->toMultimap()Ljava/util/Map;

    move-result-object v7

    move-object/from16 v8, v18

    .line 780
    .local v8, "responseHeaders":Ljava/util/Map;
    move-object v8, v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object/from16 v9, v18

    move-object v10, v9

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 781
    .local v12, "key":Ljava/lang/String;
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    .line 782
    .local v26, "valueList":Ljava/util/List;
    move/from16 v27, v0

    .end local v0    # "gzip":Z
    .local v27, "gzip":Z
    const-string v0, "Content-Encoding"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move/from16 v28, v0

    .line 783
    .local v28, "contentEncoding":Z
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    move/from16 v0, v27

    .end local v27    # "gzip":Z
    .restart local v0    # "gzip":Z
    :goto_8
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_e

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 784
    .local v9, "value":Ljava/lang/String;
    move/from16 v27, v0

    .end local v0    # "gzip":Z
    .restart local v27    # "gzip":Z
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v30, v2

    .end local v2    # "future":Ljava/util/concurrent/Future;
    .local v30, "future":Ljava/util/concurrent/Future;
    const-string v2, "handleResponse headers "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 785
    if-eqz v28, :cond_a

    :try_start_9
    const-string v0, "gzip"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    if-eqz v0, :cond_a

    .line 786
    const/4 v0, 0x1

    move/from16 v27, v0

    .line 788
    :cond_a
    :try_start_a
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    .line 789
    .local v10, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v10, v0

    invoke-virtual {v0, v12, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    invoke-virtual {v11, v12, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    invoke-virtual {v13, v10}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 795
    :try_start_b
    const-string/jumbo v0, "set-cookie"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 796
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    .line 797
    .local v31, "cookieTime":J
    invoke-interface/range {p10 .. p10}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v14, v9}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->setCookie(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    sub-long v2, v33, v31

    .line 799
    .local v2, "cost":J
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "httpRequest timeCost setCookie "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 801
    if-eqz v0, :cond_b

    move-object/from16 v4, p10

    if-eqz v4, :cond_c

    .line 802
    :try_start_c
    invoke-interface/range {p10 .. p10}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object/from16 v33, v5

    .end local v5    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .local v33, "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    :try_start_d
    new-instance v5, Ljava/lang/StringBuilder;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v34, v7

    :try_start_e
    const-string v7, "^setCookie="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->appendJsApiPerExtra(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_9

    .line 806
    .end local v2    # "cost":J
    .end local v31    # "cookieTime":J
    :catchall_2
    move-exception v0

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object/from16 v34, v7

    goto :goto_b

    .end local v33    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .restart local v5    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    :catchall_4
    move-exception v0

    goto :goto_a

    .line 801
    .restart local v2    # "cost":J
    .restart local v31    # "cookieTime":J
    :cond_b
    move-object/from16 v4, p10

    :cond_c
    move-object/from16 v33, v5

    move-object/from16 v34, v7

    .end local v5    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .restart local v33    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    goto :goto_9

    .line 795
    .end local v2    # "cost":J
    .end local v31    # "cookieTime":J
    .end local v33    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .restart local v5    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    :cond_d
    move-object/from16 v4, p10

    move-object/from16 v33, v5

    move-object/from16 v34, v7

    .line 808
    .end local v5    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .restart local v33    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    :goto_9
    goto :goto_c

    .line 806
    .end local v33    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .restart local v5    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    :catchall_5
    move-exception v0

    move-object/from16 v4, p10

    :goto_a
    move-object/from16 v33, v5

    move-object/from16 v34, v7

    .line 807
    .end local v5    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v33    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    :goto_b
    :try_start_f
    const-string v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 809
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    nop

    .line 783
    :goto_c
    move-wide/from16 v3, p5

    move/from16 v0, v27

    move-object/from16 v2, v30

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    goto/16 :goto_8

    .end local v27    # "gzip":Z
    .end local v30    # "future":Ljava/util/concurrent/Future;
    .end local v33    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .local v0, "gzip":Z
    .local v2, "future":Ljava/util/concurrent/Future;
    .restart local v5    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    :cond_e
    move-object/from16 v4, p10

    move/from16 v27, v0

    move-object/from16 v30, v2

    move-object/from16 v33, v5

    move-object/from16 v34, v7

    .line 810
    .end local v0    # "gzip":Z
    .end local v2    # "future":Ljava/util/concurrent/Future;
    .end local v5    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .end local v12    # "key":Ljava/lang/String;
    .end local v26    # "valueList":Ljava/util/List;
    .end local v28    # "contentEncoding":Z
    .restart local v27    # "gzip":Z
    .restart local v30    # "future":Ljava/util/concurrent/Future;
    .restart local v33    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    move-wide/from16 v3, p5

    goto/16 :goto_7

    .line 780
    .end local v27    # "gzip":Z
    .end local v30    # "future":Ljava/util/concurrent/Future;
    .end local v33    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .restart local v0    # "gzip":Z
    .restart local v2    # "future":Ljava/util/concurrent/Future;
    .restart local v5    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    :cond_f
    move-object/from16 v4, p10

    move/from16 v27, v0

    move-object/from16 v30, v2

    move-object/from16 v33, v5

    .end local v0    # "gzip":Z
    .end local v2    # "future":Ljava/util/concurrent/Future;
    .end local v5    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .restart local v27    # "gzip":Z
    .restart local v30    # "future":Ljava/util/concurrent/Future;
    .restart local v33    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    move-object v7, v9

    goto :goto_d

    .line 867
    .end local v6    # "uuid":Ljava/lang/String;
    .end local v8    # "responseHeaders":Ljava/util/Map;
    .end local v11    # "jsonHeaders":Lcom/alibaba/fastjson/JSONObject;
    .end local v13    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v16    # "userId":Ljava/lang/String;
    .end local v22    # "appId":Ljava/lang/String;
    .end local v23    # "time":J
    .end local v25    # "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    .end local v27    # "gzip":Z
    .end local v30    # "future":Ljava/util/concurrent/Future;
    .end local v33    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    :catchall_6
    move-exception v0

    move-object/from16 v4, p10

    goto/16 :goto_17

    .line 778
    .restart local v0    # "gzip":Z
    .restart local v2    # "future":Ljava/util/concurrent/Future;
    .restart local v5    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .restart local v6    # "uuid":Ljava/lang/String;
    .restart local v11    # "jsonHeaders":Lcom/alibaba/fastjson/JSONObject;
    .restart local v13    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v16    # "userId":Ljava/lang/String;
    .restart local v22    # "appId":Ljava/lang/String;
    .restart local v23    # "time":J
    .restart local v25    # "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    :cond_10
    move-object/from16 v4, p10

    move-object/from16 v30, v2

    move-object/from16 v33, v5

    .line 813
    .end local v2    # "future":Ljava/util/concurrent/Future;
    .end local v5    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .restart local v30    # "future":Ljava/util/concurrent/Future;
    .restart local v33    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    move/from16 v27, v0

    move-object/from16 v7, v18

    .end local v0    # "gzip":Z
    .restart local v27    # "gzip":Z
    :goto_d
    const/4 v0, 0x0

    .line 814
    .local v0, "gzipStream":Ljava/io/InputStream;
    invoke-virtual/range {v25 .. v25}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 815
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v27, :cond_11

    .line 816
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v3

    goto :goto_e

    .line 815
    :cond_11
    move-object v3, v0

    .line 818
    .end local v0    # "gzipStream":Ljava/io/InputStream;
    .local v3, "gzipStream":Ljava/io/InputStream;
    :goto_e
    if-eqz v3, :cond_12

    move-object v0, v3

    goto :goto_f

    :cond_12
    move-object v0, v2

    :goto_f
    move-object v5, v0

    .line 820
    .local v5, "realStream":Ljava/io/InputStream;
    invoke-virtual/range {v25 .. v25}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getCode()I

    move-result v0

    move v10, v0

    .line 821
    .local v10, "code":I
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    move-object v9, v0

    .line 823
    .local v9, "bytes":[B
    move-object/from16 v8, v20

    .line 825
    .local v8, "content":Ljava/lang/String;
    :try_start_10
    const-string v0, "base64"
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    move-object/from16 v15, p7

    :try_start_11
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    if-eqz v0, :cond_13

    .line 826
    const/4 v12, 0x2

    :try_start_12
    invoke-static {v9, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    move-object v8, v0

    move-object/from16 v12, p8

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v3, v22

    move-object/from16 v2, p0

    goto :goto_13

    .line 828
    :cond_13
    :try_start_13
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 829
    new-instance v0, Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    move-object/from16 v12, p8

    :try_start_14
    invoke-direct {v0, v9, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v8, v0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v3, v22

    move-object/from16 v2, p0

    goto :goto_13

    .line 831
    :cond_14
    move-object/from16 v12, p8

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    move-object v8, v0

    .line 836
    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object v0, v8

    move-object/from16 v3, v22

    move-object/from16 v2, p0

    goto :goto_13

    .line 834
    :catch_0
    move-exception v0

    goto :goto_12

    .line 867
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "gzipStream":Ljava/io/InputStream;
    .end local v5    # "realStream":Ljava/io/InputStream;
    .end local v6    # "uuid":Ljava/lang/String;
    .end local v8    # "content":Ljava/lang/String;
    .end local v9    # "bytes":[B
    .end local v10    # "code":I
    .end local v11    # "jsonHeaders":Lcom/alibaba/fastjson/JSONObject;
    .end local v13    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v16    # "userId":Ljava/lang/String;
    .end local v22    # "appId":Ljava/lang/String;
    .end local v23    # "time":J
    .end local v25    # "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    .end local v27    # "gzip":Z
    .end local v30    # "future":Ljava/util/concurrent/Future;
    .end local v33    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    :catchall_7
    move-exception v0

    goto :goto_10

    .line 834
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "gzipStream":Ljava/io/InputStream;
    .restart local v5    # "realStream":Ljava/io/InputStream;
    .restart local v6    # "uuid":Ljava/lang/String;
    .restart local v8    # "content":Ljava/lang/String;
    .restart local v9    # "bytes":[B
    .restart local v10    # "code":I
    .restart local v11    # "jsonHeaders":Lcom/alibaba/fastjson/JSONObject;
    .restart local v13    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v16    # "userId":Ljava/lang/String;
    .restart local v22    # "appId":Ljava/lang/String;
    .restart local v23    # "time":J
    .restart local v25    # "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    .restart local v27    # "gzip":Z
    .restart local v30    # "future":Ljava/util/concurrent/Future;
    .restart local v33    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    :catch_1
    move-exception v0

    goto :goto_11

    .line 867
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "gzipStream":Ljava/io/InputStream;
    .end local v5    # "realStream":Ljava/io/InputStream;
    .end local v6    # "uuid":Ljava/lang/String;
    .end local v8    # "content":Ljava/lang/String;
    .end local v9    # "bytes":[B
    .end local v10    # "code":I
    .end local v11    # "jsonHeaders":Lcom/alibaba/fastjson/JSONObject;
    .end local v13    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v16    # "userId":Ljava/lang/String;
    .end local v22    # "appId":Ljava/lang/String;
    .end local v23    # "time":J
    .end local v25    # "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    .end local v27    # "gzip":Z
    .end local v30    # "future":Ljava/util/concurrent/Future;
    .end local v33    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    :catchall_8
    move-exception v0

    move-object/from16 v15, p7

    :goto_10
    move-object/from16 v12, p8

    goto/16 :goto_17

    .line 834
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "gzipStream":Ljava/io/InputStream;
    .restart local v5    # "realStream":Ljava/io/InputStream;
    .restart local v6    # "uuid":Ljava/lang/String;
    .restart local v8    # "content":Ljava/lang/String;
    .restart local v9    # "bytes":[B
    .restart local v10    # "code":I
    .restart local v11    # "jsonHeaders":Lcom/alibaba/fastjson/JSONObject;
    .restart local v13    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v16    # "userId":Ljava/lang/String;
    .restart local v22    # "appId":Ljava/lang/String;
    .restart local v23    # "time":J
    .restart local v25    # "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    .restart local v27    # "gzip":Z
    .restart local v30    # "future":Ljava/util/concurrent/Future;
    .restart local v33    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    :catch_2
    move-exception v0

    move-object/from16 v15, p7

    :goto_11
    move-object/from16 v12, p8

    .line 835
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    :goto_12
    :try_start_15
    invoke-virtual/range {v25 .. v25}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getContentType()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v3, v22

    move-object/from16 v2, p0

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v22    # "appId":Ljava/lang/String;
    .local v3, "appId":Ljava/lang/String;
    .local v17, "inputStream":Ljava/io/InputStream;
    .local v19, "gzipStream":Ljava/io/InputStream;
    invoke-direct {v2, v3, v0, v15, v4}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V

    move-object v0, v8

    .line 838
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "content":Ljava/lang/String;
    .local v0, "content":Ljava/lang/String;
    :goto_13
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->isRemoteDebugConnected(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_16

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->isVConsolePanelOpened()Z

    move-result v8

    if-eqz v8, :cond_15

    goto :goto_14

    :cond_15
    move-object/from16 v29, v3

    move-object/from16 v22, v9

    move/from16 v26, v10

    move-object/from16 v28, v11

    move-object v3, v13

    move-object v4, v14

    goto :goto_15

    .line 839
    :cond_16
    :goto_14
    invoke-virtual/range {v25 .. v25}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    .line 840
    .local v12, "statusText":Ljava/lang/String;
    move-object v15, v3

    .line 841
    .local v15, "targetAppId":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v8

    new-instance v7, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$4;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    move-object/from16 v21, v7

    move-object v2, v8

    move-object/from16 v8, p0

    move-object/from16 v22, v9

    .end local v9    # "bytes":[B
    .local v22, "bytes":[B
    move-object v9, v11

    move/from16 v26, v10

    .end local v10    # "code":I
    .local v26, "code":I
    move-object/from16 v10, p1

    move-object/from16 v28, v11

    .end local v11    # "jsonHeaders":Lcom/alibaba/fastjson/JSONObject;
    .local v28, "jsonHeaders":Lcom/alibaba/fastjson/JSONObject;
    move/from16 v11, v26

    move-object/from16 v29, v3

    move-object v3, v13

    .end local v13    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .local v3, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .local v29, "appId":Ljava/lang/String;
    move-object v13, v6

    move-object v4, v14

    move-object/from16 v14, v22

    :try_start_16
    invoke-direct/range {v7 .. v15}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$4;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    move-object/from16 v7, v21

    invoke-virtual {v2, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    move-object v7, v12

    .line 859
    .end local v12    # "statusText":Ljava/lang/String;
    .end local v15    # "targetAppId":Ljava/lang/String;
    :goto_15
    new-instance v2, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;

    invoke-direct {v2}, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;-><init>()V

    .line 860
    .local v7, "h5HttpRequestResult":Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;
    move-object v7, v2

    move/from16 v8, v26

    .end local v26    # "code":I
    .local v8, "code":I
    iput v8, v2, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseStatues:I

    .line 861
    iput-object v3, v7, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseHeader:Lcom/alibaba/fastjson/JSONArray;

    .line 862
    iput-object v0, v7, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseContext:Ljava/lang/String;

    .line 863
    const/4 v2, 0x0

    iput v2, v7, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->error:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 865
    return-object v7

    .line 867
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v5    # "realStream":Ljava/io/InputStream;
    .end local v6    # "uuid":Ljava/lang/String;
    .end local v7    # "h5HttpRequestResult":Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;
    .end local v8    # "code":I
    .end local v16    # "userId":Ljava/lang/String;
    .end local v17    # "inputStream":Ljava/io/InputStream;
    .end local v19    # "gzipStream":Ljava/io/InputStream;
    .end local v22    # "bytes":[B
    .end local v23    # "time":J
    .end local v25    # "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    .end local v27    # "gzip":Z
    .end local v28    # "jsonHeaders":Lcom/alibaba/fastjson/JSONObject;
    .end local v29    # "appId":Ljava/lang/String;
    .end local v30    # "future":Ljava/util/concurrent/Future;
    .end local v33    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    :catchall_9
    move-exception v0

    goto :goto_18

    :catchall_a
    move-exception v0

    goto :goto_17

    :catchall_b
    move-exception v0

    move-object v1, v8

    move-object/from16 v20, v9

    move-object v4, v14

    const/16 v18, 0x0

    goto :goto_18

    :catchall_c
    move-exception v0

    :goto_16
    move-object/from16 v18, v7

    move-object v1, v8

    move-object/from16 v20, v9

    :goto_17
    move-object v4, v14

    .line 868
    .local v0, "e":Ljava/lang/Throwable;
    :goto_18
    const-string v2, "h5_httpRequest_exception"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 869
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    move-object/from16 v3, v18

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v5, "httpRequest\u8bf7\u6c42\u5f02\u5e38"

    invoke-virtual {v2, v5, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 870
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 868
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 871
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 874
    .end local v0    # "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;-><init>()V

    .line 875
    .local v0, "h5HttpRequestResult":Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;
    move-object v0, v1

    const/16 v2, 0xc

    iput v2, v1, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseStatues:I

    .line 876
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseHeader:Lcom/alibaba/fastjson/JSONArray;

    .line 877
    move-object/from16 v1, v20

    iput-object v1, v0, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseContext:Ljava/lang/String;

    .line 879
    iput v2, v0, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->error:I

    .line 881
    return-object v0
.end method

.method public isAllLiteProcessHide()Z
    .locals 1

    .line 594
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isAllLiteProcessHide()Z

    move-result v0

    return v0
.end method

.method public moveTaskToBack(Ljava/lang/Object;)V
    .locals 0
    .param p1, "activity"    # Ljava/lang/Object;

    .line 393
    invoke-static {p1}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->moveTaskToBack(Ljava/lang/Object;)V

    .line 394
    return-void
.end method

.method public moveTaskToBackAndStop(Landroid/app/Activity;Z)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "keepAlive"    # Z

    .line 575
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->moveTaskToBack(Ljava/lang/Object;)V

    .line 577
    if-nez p2, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 579
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;Landroid/app/Activity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 590
    :cond_0
    return-void
.end method

.method public moveTaskToFront(Landroid/app/Activity;ZLandroid/os/Bundle;)Z
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fromForeground"    # Z
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 398
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    move-object v1, v2

    .line 399
    .local v1, "activityManager":Landroid/app/ActivityManager;
    move-object v1, v0

    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    move-object v3, v2

    .line 400
    .local v3, "recentTasks":Ljava/util/List;
    move-object v8, v0

    .end local v3    # "recentTasks":Ljava/util/List;
    .local v8, "recentTasks":Ljava/util/List;
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 401
    return v3

    .line 403
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 404
    .local v0, "componentName":Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 406
    .local v4, "targetInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 407
    .local v2, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object v2, v6

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 408
    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 412
    .end local v2    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    goto :goto_0

    .line 409
    .restart local v2    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    :goto_1
    move-object v4, v2

    .line 410
    move-object v9, v4

    goto :goto_2

    .line 406
    .end local v2    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    move-object v9, v4

    .line 414
    .end local v4    # "targetInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .local v9, "targetInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_2
    if-nez v9, :cond_4

    .line 415
    return v3

    .line 419
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v4

    .line 420
    invoke-interface {v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v4

    move-object v10, v5

    .line 423
    .local v10, "topRef":Ljava/lang/ref/WeakReference;
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 424
    .local v2, "topActivity":Landroid/app/Activity;
    move-object v11, v4

    .end local v2    # "topActivity":Landroid/app/Activity;
    .local v11, "topActivity":Landroid/app/Activity;
    if-eqz v4, :cond_5

    if-ne v11, p1, :cond_6

    .line 425
    :cond_5
    const/4 p2, 0x0

    .line 429
    :cond_6
    :try_start_0
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5Activity$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_7

    .line 430
    const/4 p2, 0x0

    .line 434
    :cond_7
    goto :goto_3

    .line 432
    :catchall_0
    move-exception v2

    .line 433
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "H5EventHandlerImpl"

    const-string/jumbo v4, "moveTaskToFront"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_3
    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v2, v11

    move-object v3, v9

    move v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Lcom/alipay/mobile/liteprocess/Util;->moveTaskToFront(Landroid/app/ActivityManager;Landroid/app/Activity;Landroid/app/ActivityManager$RunningTaskInfo;ZZLandroid/os/Bundle;Z)V

    .line 443
    const/4 v2, 0x1

    return v2
.end method

.method public notifyUcInitSuccess()V
    .locals 0

    .line 1023
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->notifyUcInitSuccess()V

    .line 1024
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCreate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5EventHandlerImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessPipeline;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessPipeline;-><init>(Lcom/alipay/mobile/nebula/process/H5EventHandler;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessPipeline;->run()V

    .line 511
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->registerLiteClient(Lcom/alipay/mobile/liteprocess/LiteProcessApi$LiteClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    return-void

    .line 512
    :catchall_0
    move-exception v0

    .line 513
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 515
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 520
    return-void
.end method

.method public onLiteProcessPreloadComplete()V
    .locals 0

    .line 1028
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->onLiteProcessPreloadComplete()V

    .line 1029
    return-void
.end method

.method public onTinyAppProcessEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "section"    # Ljava/lang/String;

    .line 1043
    invoke-static {p1, p2}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->onTinyAppProcessEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    return-void
.end method

.method public onUcInitAbandonedInLiteProcess()V
    .locals 0

    .line 1033
    invoke-static {}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setUcInitAbandoned()V

    .line 1034
    return-void
.end method

.method public onUcReInitSuccessInLiteProcess()V
    .locals 0

    .line 1038
    invoke-static {}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setUcReInitSuccess()V

    .line 1039
    return-void
.end method

.method public preConnectSpdy()V
    .locals 2

    .line 976
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$7;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$7;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1002
    return-void
.end method

.method public preLoadInTinyProcess()V
    .locals 5

    .line 921
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getDefaultScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    .line 922
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$6;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 972
    return-void
.end method

.method public prepare()V
    .locals 0

    .line 363
    invoke-static {}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->prepare()V

    .line 364
    return-void
.end method

.method public registerLiteProcessActivityClass(Ljava/lang/Class;IZ)V
    .locals 0
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "lpid"    # I
    .param p3, "needHookBackKey"    # Z

    .line 347
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->registerLiteProcessActivityClass(Ljava/lang/Class;IZ)V

    .line 348
    return-void
.end method

.method public registerReqBizHandler(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "biz"    # Ljava/lang/String;
    .param p2, "bizHandler"    # Landroid/os/Handler;

    .line 352
    invoke-static {p1, p2}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->registerReqBizHandler(Ljava/lang/String;Landroid/os/Handler;)V

    .line 353
    return-void
.end method

.method public registerRspBizHandler(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "biz"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 337
    invoke-static {p1, p2}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->registerRspBizHandler(Ljava/lang/String;Landroid/os/Handler;)V

    .line 338
    return-void
.end method

.method public registerServiceBean(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "interfaceClassName"    # Ljava/lang/String;
    .param p2, "objImpl"    # Ljava/lang/Object;

    .line 378
    invoke-static {p1, p2}, Lcom/alipay/mobile/liteprocess/ipc/IpcCallServer;->registerServiceBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    return-void
.end method

.method public reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "biz"    # Ljava/lang/String;
    .param p3, "message"    # Landroid/os/Message;

    .line 358
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V

    .line 359
    return-void
.end method

.method public sendDataToTinyProcess(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    const-string v0, "appId "

    const-string v1, "H5EventHandlerImpl"

    .line 525
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-static {p1}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->findProcessByAppId(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v2

    const/4 v3, 0x0

    .line 527
    .local v3, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v3, v2

    if-nez v2, :cond_0

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    return-void

    .line 532
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 533
    .local v0, "message":Landroid/os/Message;
    const-string/jumbo v2, "msg_type"

    const v4, 0x1312dc4

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 534
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 535
    invoke-virtual {v3}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v2

    const-string/jumbo v4, "nebulaApp"

    invoke-virtual {p0, v2, v4, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    .end local v0    # "message":Landroid/os/Message;
    .end local v3    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    return-void

    .line 536
    :catchall_0
    move-exception v0

    .line 537
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 539
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method public sendDataToTinyProcessWithMsgType(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "type"    # I

    const-string v0, "appId "

    const-string v1, "H5EventHandlerImpl"

    .line 544
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-static {p1}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->findProcessByAppId(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v2

    const/4 v3, 0x0

    .line 546
    .local v3, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v3, v2

    if-nez v2, :cond_0

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void

    .line 550
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 551
    .local v0, "message":Landroid/os/Message;
    const-string/jumbo v2, "msg_type"

    invoke-virtual {p2, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 552
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 553
    invoke-virtual {v3}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v2

    const-string/jumbo v4, "nebulaApp"

    invoke-virtual {p0, v2, v4, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    .end local v0    # "message":Landroid/os/Message;
    .end local v3    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    return-void

    .line 554
    :catchall_0
    move-exception v0

    .line 555
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 557
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method public setPreloadContinueCallback(Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 0
    .param p1, "callback"    # Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 1051
    invoke-static {p1}, Lcom/alipay/mobile/liteprocess/perf/LiteProcessPreloadStepController;->registerContinueCallback(Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 1052
    return-void
.end method

.method public setStartParams(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 469
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->c:Landroid/os/Bundle;

    .line 472
    :try_start_0
    const-string v0, "isTinyApp"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :cond_0
    return-void

    .line 475
    :catchall_0
    move-exception v0

    .line 476
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5EventHandlerImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 478
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method public shouldPreloadContinue()Z
    .locals 1

    .line 1047
    invoke-static {}, Lcom/alipay/mobile/liteprocess/perf/LiteProcessPreloadStepController;->isScanAppForeground()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showTinyLoadingView(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 611
    const-class v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    const/4 v1, 0x0

    .line 612
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 613
    const-string v0, "H5EventHandlerImpl"

    const-string v2, "h5Service == null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    return-void

    .line 616
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 622
    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/h5container/api/H5LoadingView;

    invoke-direct {v3}, Lcom/alipay/mobile/h5container/api/H5LoadingView;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 626
    :cond_2
    return-void
.end method

.method public startLiteProcessAsync()Z
    .locals 5

    .line 1006
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->hasPreloadProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1007
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    .line 1008
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1009
    const-string v0, "h5startLiteProcessAsync"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1010
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v3, "no"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1011
    const-string v3, "H5EventHandlerImpl"

    const-string/jumbo v4, "startLiteProcessAsync"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startLiteProcessAsync(I)V

    .line 1015
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1017
    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_1
    return v1
.end method

.method public stopLiteProcessByAppIdInServer(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 567
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->stopLiteProcessByAppIdInServer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    return-void

    .line 568
    :catchall_0
    move-exception v0

    .line 569
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5EventHandlerImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 571
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method public stopSelfProcess()V
    .locals 0

    .line 448
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->stopSelfInClient()V

    .line 449
    return-void
.end method

.method public unregisterRspBizHandler(Ljava/lang/String;)V
    .locals 0
    .param p1, "biz"    # Ljava/lang/String;

    .line 342
    invoke-static {p1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->unregisterRspBizHandler(Ljava/lang/String;)V

    .line 343
    return-void
.end method
