.class public Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;
.super Ljava/lang/Object;
.source "CheckVersionServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/upgrade/service/normal/CheckVersionService;


# static fields
.field protected static final TAG:Ljava/lang/String; = "CheckVersionServiceImpl"


# instance fields
.field private mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    return-object p0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->hasNewVersion(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->updateSilentUpgradeInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->dealHasNewVersion(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->dealDataInValid()V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->dealHasNoNewVersion()V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->reportClickInstall(Ljava/lang/String;)V

    return-void
.end method

.method private dealDataInValid()V
    .locals 4

    .line 172
    const-string v0, "RPC-UPGRADE-DATA"

    const-string v1, "ABOUT-RPC-RES-KEY-DATA-NULL"

    const-string v2, "160526-04"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3, v3}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateMonitorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "CheckVersionServiceImpl"

    const-string v2, "\u5173\u4e8e\u9875\u9762task\u5347\u7ea7\u5173\u952e\u6570\u636e\u4e0d\u5408\u6cd5\uff0c\u4e0d\u5f39\u6846"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->about_serve_system_business:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 176
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    .line 177
    return-void
.end method

.method private dealHasNewVersion(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->checkUpgradePackageState(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)I

    move-result v0

    .line 198
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 199
    new-instance v2, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$2;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$2;-><init>(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    .line 221
    return-void
.end method

.method private dealHasNoNewVersion()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    .line 184
    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->about_is_new_client:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 186
    nop

    .line 191
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    .line 192
    return-void

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->dealDataInValid()V

    .line 188
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "CheckVersionServiceImpl"

    const-string v2, "dealHasNoNewVersion(),response is null or resultstatus less than 0"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private hasNewVersion(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z
    .locals 3

    .line 162
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xca

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    .line 163
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xce

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 164
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasNewVersion() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CheckVersionServiceImpl"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return p1
.end method

.method private reportClickInstall(Ljava/lang/String;)V
    .locals 4

    .line 393
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 394
    const-string v1, "newversion"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v1, "UPGRADE-CLICK-INSTALL-160216-001"

    const-string v2, "UPGRADE-SILENT-160323"

    const-string v3, "UpgradeClickInstall"

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateMonitorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 400
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/SharePreferenceUtil;->setClickInstallCurrentVersion(Ljava/lang/String;)V

    .line 405
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/alipay/mobile/android/security/upgrade/util/SharePreferenceUtil;->setClickUpgradeTargetVersion(Ljava/lang/String;I)V

    .line 408
    :cond_1
    return-void
.end method

.method private updateNormalAlertDialog(Landroid/app/Activity;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 23

    .line 320
    move-object/from16 v0, p2

    const-string v7, "CHECK_UPDATE"

    const-string v8, "CheckVersionServiceImpl"

    :try_start_0
    const-string v1, "com.alipay.mobile.android.security.upgrade.BuildConfig"

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/api/utils/SdkVersionUtil;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 321
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 322
    const-string v1, "resultStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 325
    const-class v2, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    .line 326
    new-instance v15, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$6;

    move-object/from16 v14, p0

    invoke-direct {v15, v14}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$6;-><init>(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;)V

    .line 333
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 334
    const-string v1, "upgrade_dialog_from_where"

    const-string v2, "upgrade_from_about_check"

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v17, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$7;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v4, v10

    move-object/from16 v5, p2

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$7;-><init>(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;Ljava/lang/String;Ljava/util/HashMap;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;)V

    new-instance v19, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$8;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v4, v10

    move-object/from16 v5, p2

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$8;-><init>(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;Ljava/lang/String;Ljava/util/HashMap;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;)V

    const/16 v21, 0x0

    move-object/from16 v12, p1

    move-object v1, v13

    move-object/from16 v13, p7

    move-object/from16 v14, p3

    move-object v2, v15

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v18, p6

    move-object/from16 v20, v2

    move-object/from16 v22, v1

    invoke-virtual/range {v11 .. v22}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->alert(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;ZLandroid/os/Bundle;)V

    .line 370
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v1

    const-string v2, "Upgrade_Show_Normal_Alert"

    sget-object v3, Lcom/alipay/mobile/common/logging/api/BizType;->UPGRADE:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-interface {v1, v2, v3, v9, v10}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;Ljava/util/Map;)V

    .line 372
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "\u5173\u4e8e--\u666e\u901a\u5f39\u6846"

    invoke-interface {v1, v8, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    move-result-object v1

    const-string v2, "checkUpdate_Bombox_Time"

    invoke-virtual {v1, v7, v2}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)J

    .line 374
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/MainLinkRecorder;->commitLinkRecord(Ljava/lang/String;)V

    .line 375
    new-instance v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 376
    const-string v2, "MM-20151224-1"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 377
    const-string v2, "aboutupdate"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 378
    const-string v2, "remindUpgradeView"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setViewID(Ljava/lang/String;)V

    .line 379
    const-string v2, "newversion"

    iget-object v0, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->openPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    .line 382
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "\u5173\u4e8e--\u666e\u901a\u5f39\u6846\u51fa\u73b0\u5f02\u5e38"

    invoke-interface {v1, v8, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    :goto_0
    return-void
.end method

.method private updateSilentAlertDialog(Landroid/app/Activity;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 21

    move-object/from16 v0, p2

    .line 267
    :try_start_0
    const-string v1, "com.alipay.mobile.android.security.upgrade.BuildConfig"

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/api/utils/SdkVersionUtil;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 268
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 269
    const-string v1, "resultStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 272
    const-class v2, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    .line 273
    new-instance v15, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$3;

    move-object/from16 v14, p0

    invoke-direct {v15, v14}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$3;-><init>(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;)V

    .line 280
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 281
    const-string v1, "upgrade_dialog_from_where"

    const-string v2, "upgrade_from_about_check"

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v16, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$4;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v3, v7

    move-object v4, v8

    move-object/from16 v5, p2

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$4;-><init>(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;Ljava/lang/String;Ljava/util/HashMap;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;)V

    new-instance v17, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$5;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v3, v7

    move-object v4, v8

    move-object/from16 v5, p2

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$5;-><init>(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;Ljava/lang/String;Ljava/util/HashMap;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;)V

    const/16 v19, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p7

    move-object/from16 v12, p3

    move-object v1, v13

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, p6

    move-object/from16 v18, v2

    move-object/from16 v20, v1

    invoke-virtual/range {v9 .. v20}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->alert(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;ZLandroid/os/Bundle;)V

    .line 302
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v1

    const-string v2, "Upgrade_Show_Silent_Alert"

    sget-object v3, Lcom/alipay/mobile/common/logging/api/BizType;->UPGRADE:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-interface {v1, v2, v3, v7, v8}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;Ljava/util/Map;)V

    .line 304
    const-string v1, "SILENT-UPGRADE"

    const-string v2, "AboutSilentUpgrade.show"

    const-string v3, "160201-04"

    const-string v4, "newversion"

    iget-object v0, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateMonitorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    goto :goto_0

    .line 306
    :catchall_0
    move-exception v0

    .line 307
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "CheckVersionServiceImpl"

    const-string v3, "updateSilentAlertDialog"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    :goto_0
    return-void
.end method

.method private updateSilentUpgradeInfo()V
    .locals 2

    .line 149
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    .line 150
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->updateUpgradeInfoCacheForSilent(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public checkHasNewVersion()I
    .locals 5

    .line 102
    const-string v0, "CheckVersionServiceImpl"

    sget v1, Lcom/alipay/mobile/android/security/upgrade/util/UpgradeConstants;->HAS_NO_NEW_VERSION:I

    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    if-nez v2, :cond_1

    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "getClientUpgradeRes() Rpc\u8bf7\u6c42"

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v2, Lcom/alipay/mobile/upgrade/service/CheckNewVersionBiz;

    invoke-direct {v2}, Lcom/alipay/mobile/upgrade/service/CheckNewVersionBiz;-><init>()V

    .line 107
    invoke-virtual {v2}, Lcom/alipay/mobile/upgrade/service/CheckNewVersionBiz;->checkNewVersion()Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    .line 108
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    if-nez v3, :cond_0

    const-string v3, "\u8fd4\u56de\u7ed3\u679c\u4e3a\u7a7a"

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8fd4\u56de\u7684\u72b6\u6001\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v4, v4, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    invoke-direct {p0, v2}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->hasNewVersion(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    iget-object v2, v2, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->netType:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->checkNetWorkCondition(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->checkRPCDataIsValid(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z

    move-result v1

    .line 112
    if-eqz v1, :cond_2

    .line 113
    sget v1, Lcom/alipay/mobile/android/security/upgrade/util/UpgradeConstants;->HAS_NEW_VERSION:I

    .line 114
    invoke-direct {p0}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->updateSilentUpgradeInfo()V

    goto :goto_1

    .line 116
    :cond_2
    sget v1, Lcom/alipay/mobile/android/security/upgrade/util/UpgradeConstants;->HAS_SOME_ERROR:I
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_3
    :goto_1
    goto :goto_2

    .line 122
    :catchall_0
    move-exception v1

    .line 123
    sget v2, Lcom/alipay/mobile/android/security/upgrade/util/UpgradeConstants;->HAS_SOME_ERROR:I

    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "getClientUpgradeRes() \u5176\u4ed6\u5f02\u5e38"

    invoke-interface {v3, v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    goto :goto_2

    .line 119
    :catch_0
    move-exception v1

    .line 120
    sget v2, Lcom/alipay/mobile/android/security/upgrade/util/UpgradeConstants;->HAS_SOME_ERROR:I

    .line 121
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "getClientUpgradeRes() \u5347\u7ea7rpc\u8bf7\u6c42\u5f02\u5e38"

    invoke-interface {v3, v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    move v1, v2

    .line 126
    :goto_2
    return v1
.end method

.method public checkNewVersion(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 51
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 53
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->NORMAL:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$1;-><init>(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method

.method public getClientUpgradeRes()Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    .locals 4

    .line 131
    const-string v0, "CheckVersionServiceImpl"

    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    if-nez v1, :cond_0

    .line 133
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "getClientUpgradeRes() Rpc\u8bf7\u6c42"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v1, Lcom/alipay/mobile/upgrade/service/CheckNewVersionBiz;

    invoke-direct {v1}, Lcom/alipay/mobile/upgrade/service/CheckNewVersionBiz;-><init>()V

    .line 135
    invoke-virtual {v1}, Lcom/alipay/mobile/upgrade/service/CheckNewVersionBiz;->checkNewVersion()Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v1

    .line 139
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "getClientUpgradeRes() \u5176\u4ed6\u5f02\u5e38"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "getClientUpgradeRes() \u5347\u7ea7rpc\u8bf7\u6c42\u5f02\u5e38"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    return-object v0
.end method

.method protected showNormalDialog(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V
    .locals 9

    .line 230
    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->about_update_find_new_version:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 231
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->guideMemo:Ljava/lang/String;

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v1, "\\\\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 234
    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->about_update_now:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 236
    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->about_update_next_time_to_choice:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 238
    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->updateNormalAlertDialog(Landroid/app/Activity;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 239
    return-void
.end method

.method protected showSilentDialog(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .line 248
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/android/security/upgrade/R$string;->about_silent_update_find_new_version:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 250
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->guideMemo:Ljava/lang/String;

    .line 251
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v1, "\\\\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    .line 253
    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->silent_update_install:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 254
    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->silent_update_next_time:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 255
    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->updateSilentAlertDialog(Landroid/app/Activity;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 256
    return-void
.end method
