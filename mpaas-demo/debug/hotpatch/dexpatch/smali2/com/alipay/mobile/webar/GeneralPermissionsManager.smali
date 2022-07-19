.class public Lcom/alipay/mobile/webar/GeneralPermissionsManager;
.super Ljava/lang/Object;
.source "GeneralPermissionsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;,
        Lcom/alipay/mobile/webar/GeneralPermissionsManager$IGeneralPermissions;,
        Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;
    }
.end annotation


# static fields
.field private static final PERMISSION_TIME_LAST:J = 0x9a7ec800L

.field private static final TAG:Ljava/lang/String; = "GeneralPermissionsManager"

.field private static sInstance:Lcom/alipay/mobile/webar/GeneralPermissionsManager;


# instance fields
.field private mDatabaseHelper:Lcom/alipay/mobile/webar/PermissionDatabaseHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-direct {p0}, Lcom/alipay/mobile/webar/GeneralPermissionsManager;->init()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/webar/GeneralPermissionsManager;)Lcom/alipay/mobile/webar/PermissionDatabaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/webar/GeneralPermissionsManager;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/webar/GeneralPermissionsManager;->mDatabaseHelper:Lcom/alipay/mobile/webar/PermissionDatabaseHelper;

    return-object v0
.end method

.method private checkWhiteList(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Z
    .locals 3
    .param p1, "sUrlIndetity"    # Ljava/lang/String;
    .param p2, "whiteListJsArray"    # Lcom/alibaba/fastjson/JSONArray;

    .line 117
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 118
    return v0

    .line 120
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 121
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 122
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 123
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static getInstance()Lcom/alipay/mobile/webar/GeneralPermissionsManager;
    .locals 2

    .line 62
    sget-object v0, Lcom/alipay/mobile/webar/GeneralPermissionsManager;->sInstance:Lcom/alipay/mobile/webar/GeneralPermissionsManager;

    if-nez v0, :cond_1

    .line 63
    const-class v0, Lcom/alipay/mobile/webar/GeneralPermissionsManager;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/webar/GeneralPermissionsManager;->sInstance:Lcom/alipay/mobile/webar/GeneralPermissionsManager;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/alipay/mobile/webar/GeneralPermissionsManager;

    invoke-direct {v1}, Lcom/alipay/mobile/webar/GeneralPermissionsManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/webar/GeneralPermissionsManager;->sInstance:Lcom/alipay/mobile/webar/GeneralPermissionsManager;

    .line 67
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/webar/GeneralPermissionsManager;->sInstance:Lcom/alipay/mobile/webar/GeneralPermissionsManager;

    return-object v0
.end method

.method private getUrlIndetity(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    .local v1, "urlInWhiteList":Ljava/net/URL;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "urlIdentity":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v3

    const/4 v4, 0x0

    .line 100
    .local v4, "port":I
    move v4, v3

    if-ltz v3, :cond_0

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    .line 103
    .end local v1    # "urlInWhiteList":Ljava/net/URL;
    :cond_0
    return-object v2

    .line 104
    .end local v2    # "urlIdentity":Ljava/lang/String;
    .end local v4    # "port":I
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    .line 105
    .local v1, "e":Ljava/net/MalformedURLException;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url format error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GeneralPermissionsManager"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v1    # "e":Ljava/net/MalformedURLException;
    return-object v0
.end method

.method private init()V
    .locals 2

    .line 82
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    .local v1, "context":Landroid/content/Context;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/alipay/mobile/webar/PermissionDatabaseHelper;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/webar/PermissionDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/webar/GeneralPermissionsManager;->mDatabaseHelper:Lcom/alipay/mobile/webar/PermissionDatabaseHelper;

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permission"    # Ljava/lang/String;

    .line 201
    const/16 v0, 0x17

    .line 203
    .local v0, "targetSdkVersion":I
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/4 v3, 0x0

    .line 205
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 208
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 206
    :catchall_0
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "GeneralPermissionsManager"

    const-string v4, "get PackageInfo fail:"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v2, 0x1

    .line 210
    .local v2, "grant":Z
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3

    .line 211
    const/4 v3, 0x1

    if-lt v0, v4, :cond_1

    .line 212
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v2, v1

    goto :goto_1

    .line 215
    :cond_1
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    move v2, v1

    .line 218
    :cond_3
    :goto_1
    return v2
.end method

.method public onQueryCameraAuthorizationStatus(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "GeneralPermissionsManager"

    .line 227
    sget-object v1, Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;->DENY:Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

    .line 228
    .local v1, "status":Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;
    const/16 v2, 0x17

    .line 230
    .local v2, "targetSdkVersion":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 230
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const/4 v4, 0x0

    .line 232
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 235
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 233
    :catchall_0
    move-exception v3

    .line 234
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "get PackageInfo fail:"

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3

    .line 237
    const-string v3, "android.permission.CAMERA"

    if-lt v2, v4, :cond_2

    .line 238
    invoke-virtual {p1, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 240
    sget-object v1, Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;->GRANT:Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

    goto :goto_1

    .line 242
    :cond_0
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 243
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v3}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 244
    sget-object v1, Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;->ASK:Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

    goto :goto_1

    .line 247
    :cond_1
    const-string v3, "in onQueryCameraAuthorizationStatus, context is not activity"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 251
    :cond_2
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 252
    sget-object v1, Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;->GRANT:Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;

    .line 256
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/alipay/mobile/webar/GeneralPermissionsManager$PermissionStatus;->ordinal()I

    move-result v0

    return v0
.end method

.method public showGeneralPermissionsPrompt(Landroid/content/Context;Lcom/alipay/mobile/webar/GeneralPermissionsManager$IGeneralPermissions;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissions"    # Lcom/alipay/mobile/webar/GeneralPermissionsManager$IGeneralPermissions;
    .param p3, "sUrl"    # Ljava/lang/String;
    .param p4, "whiteListJsArray"    # Lcom/alibaba/fastjson/JSONArray;

    .line 138
    const-string v0, "GeneralPermissionsManager"

    if-eqz p2, :cond_5

    .line 139
    iget-object v1, p0, Lcom/alipay/mobile/webar/GeneralPermissionsManager;->mDatabaseHelper:Lcom/alipay/mobile/webar/PermissionDatabaseHelper;

    if-eqz v1, :cond_4

    .line 140
    invoke-virtual {v1}, Lcom/alipay/mobile/webar/PermissionDatabaseHelper;->a()V

    .line 141
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 142
    invoke-direct {p0, p3}, Lcom/alipay/mobile/webar/GeneralPermissionsManager;->getUrlIndetity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "identify":Ljava/lang/String;
    invoke-direct {p0, v1, p4}, Lcom/alipay/mobile/webar/GeneralPermissionsManager;->checkWhiteList(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    iget-object v2, p0, Lcom/alipay/mobile/webar/GeneralPermissionsManager;->mDatabaseHelper:Lcom/alipay/mobile/webar/PermissionDatabaseHelper;

    sget-object v3, Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;->CAMERA_PERMISSION:Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/webar/PermissionDatabaseHelper;->a(Ljava/lang/String;Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-interface {p2}, Lcom/alipay/mobile/webar/GeneralPermissionsManager$IGeneralPermissions;->onAllow()V

    return-void

    .line 147
    :cond_0
    if-eqz p1, :cond_1

    .line 148
    new-instance v0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;

    sget v2, Lcom/alipay/mobile/base/commonbiz/api/R$string;->webar_permission_camera_title:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v2, Lcom/alipay/mobile/base/commonbiz/api/R$string;->webar_permission_camera_content:I

    .line 149
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v2, Lcom/alipay/mobile/base/commonbiz/api/R$string;->webar_permission_camera_allow:I

    .line 150
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v2, Lcom/alipay/mobile/base/commonbiz/api/R$string;->webar_permission_camera_deny:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 151
    .local v2, "dialog":Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;
    move-object v2, v0

    new-instance v3, Lcom/alipay/mobile/webar/GeneralPermissionsManager$1;

    invoke-direct {v3, p0, v2}, Lcom/alipay/mobile/webar/GeneralPermissionsManager$1;-><init>(Lcom/alipay/mobile/webar/GeneralPermissionsManager;Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;->setPositiveListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;)V

    .line 157
    new-instance v0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$2;

    invoke-direct {v0, p0, v2, v1, p2}, Lcom/alipay/mobile/webar/GeneralPermissionsManager$2;-><init>(Lcom/alipay/mobile/webar/GeneralPermissionsManager;Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;Ljava/lang/String;Lcom/alipay/mobile/webar/GeneralPermissionsManager$IGeneralPermissions;)V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 171
    invoke-virtual {v2}, Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;->show()V

    .line 172
    .end local v2    # "dialog":Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;
    return-void

    .line 173
    :cond_1
    const-string v2, "context is null, show showGeneralPermissionsPrompt error"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-interface {p2}, Lcom/alipay/mobile/webar/GeneralPermissionsManager$IGeneralPermissions;->onDeny()V

    return-void

    .line 178
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sUrl not in white list, permissions deny, url indetity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-interface {p2}, Lcom/alipay/mobile/webar/GeneralPermissionsManager$IGeneralPermissions;->onDeny()V

    .line 181
    .end local v1    # "identify":Ljava/lang/String;
    return-void

    .line 182
    :cond_3
    const-string v1, "sUrl is null, permissions deny"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-interface {p2}, Lcom/alipay/mobile/webar/GeneralPermissionsManager$IGeneralPermissions;->onDeny()V

    return-void

    .line 186
    :cond_4
    const-string v1, "mDatabaseHelper is null, permissions deny"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-interface {p2}, Lcom/alipay/mobile/webar/GeneralPermissionsManager$IGeneralPermissions;->onDeny()V

    return-void

    .line 190
    :cond_5
    const-string v1, "permissions is null, showGeneralPermissionsPrompt fail"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method
