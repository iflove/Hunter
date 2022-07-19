.class public Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;
.super Landroid/content/BroadcastReceiver;
.source "MiniProgramAuthService.java"


# static fields
.field public static final LOGIN_TOKEN_INVALID:Ljava/lang/String; = "com.alipay.android.phone.inside.LOGIN_TOKEN_INVALID"

.field private static final TAG:Ljava/lang/String; = "MiniProgramAuthService"

.field private static sInstance:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;


# instance fields
.field private dialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

.field private loginTokenCallback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramLoginTokenCallback;

.field private mAuthCallback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;

.field private mContext:Landroid/content/Context;

.field private mStorageManager:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;

.field private mUserId:Ljava/lang/String;

.field private tokenInvalidInfo:Ljava/lang/String;

.field private tokenInvalidPositiveMsg:Ljava/lang/String;

.field private tokenInvalidTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 288
    const-string/jumbo v0, "\u6ce8\u610f"

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->tokenInvalidTitle:Ljava/lang/String;

    .line 289
    const-string v0, "Token\u8fc7\u671f"

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->tokenInvalidInfo:Ljava/lang/String;

    .line 290
    const-string/jumbo v0, "\u786e\u8ba4"

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->tokenInvalidPositiveMsg:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 288
    const-string/jumbo v0, "\u6ce8\u610f"

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->tokenInvalidTitle:Ljava/lang/String;

    .line 289
    const-string v0, "Token\u8fc7\u671f"

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->tokenInvalidInfo:Ljava/lang/String;

    .line 290
    const-string/jumbo v0, "\u786e\u8ba4"

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->tokenInvalidPositiveMsg:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;->get(Landroid/content/Context;)Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->mStorageManager:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;

    .line 59
    invoke-static {}, Lcom/alipay/android/phone/inside/api/accountopenauth/AccountOAuthServiceManager;->getInstance()Lcom/alipay/android/phone/inside/api/accountopenauth/AccountOAuthServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->get()Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/api/accountopenauth/AccountOAuthServiceManager;->setOAuthService(Lcom/alipay/android/phone/inside/api/accountopenauth/IAccountOAuthService;)V

    .line 60
    const-string v0, "MiniProgramAuthService"

    const-string/jumbo v1, "register OAuthService to inside"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->get()Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramInitService;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MiniProgramAuthService...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.alipay.android.phone.inside.LOGIN_TOKEN_INVALID"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;)Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->mAuthCallback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;)Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->mAuthCallback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;)Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->mStorageManager:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    .line 38
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->closeAppAndNotify()V

    return-void
.end method

.method private closeAppAndNotify()V
    .locals 4

    .line 349
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 350
    .local v1, "microApp":Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-object v1, v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    const-string v2, "MiniProgramAuthService"

    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->destroy(Landroid/os/Bundle;)V

    .line 352
    const-string v0, "closeAppAndNotify closeTopApp"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->loginTokenCallback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramLoginTokenCallback;

    if-eqz v0, :cond_1

    .line 360
    const-string v0, "closeAppAndNotify onLoginTokenInvalid"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->loginTokenCallback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramLoginTokenCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramLoginTokenCallback;->onLoginTokenInvalid()V

    .line 363
    :cond_1
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    if-eqz p0, :cond_2

    .line 80
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->sInstance:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    if-nez v0, :cond_1

    .line 81
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->sInstance:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->sInstance:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    .line 85
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 87
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->sInstance:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    return-object v0

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleLoginTokenInvalid()V
    .locals 5

    .line 305
    const-string v0, "MiniProgramAuthService"

    const-string v1, "handleLoginTokenInvalid"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    .line 307
    .local v2, "microApp":Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-object v2, v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    const-string v3, "handleLoginTokenInvalid no need "

    if-nez v1, :cond_0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void

    .line 311
    :cond_0
    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 312
    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.ali.user.mobile.external.OpenAuthTokenLoginActivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->dialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "handleLoginTokenInvalid dialog already "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->dialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void

    .line 323
    :cond_2
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->showDialog(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 324
    return-void

    .line 314
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method private showDialog(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 8
    .param p1, "microApp"    # Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 327
    new-instance v7, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    invoke-interface {p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->tokenInvalidTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->tokenInvalidInfo:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->tokenInvalidPositiveMsg:Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->dialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    .line 330
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$4;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;)V

    invoke-virtual {v7, v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setPositiveListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;)V

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->dialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$5;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->dialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->show()V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleLoginTokenInvalid show dialog "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->dialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiniProgramAuthService"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method


# virtual methods
.method public declared-synchronized getMiniProgramAuthCallback()Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;
    .locals 1

    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->mAuthCallback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 253
    .end local p0    # "this":Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 257
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 273
    const-string v0, "MiniProgramAuthService"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "event":Ljava/lang/String;
    const-string v2, "com.alipay.android.phone.inside.LOGIN_TOKEN_INVALID"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->loginTokenCallback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramLoginTokenCallback;

    if-eqz v2, :cond_0

    .line 277
    const-string v2, "login token callback"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->loginTokenCallback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramLoginTokenCallback;

    invoke-interface {v2}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramLoginTokenCallback;->onLoginTokenInvalid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :cond_0
    return-void

    .line 280
    :catchall_0
    move-exception v2

    .line 281
    const-string v2, "login token callback error"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_1
    return-void
.end method

.method public openMiniProgram(Ljava/lang/String;ILjava/lang/String;Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;)V
    .locals 8
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appIconResId"    # I
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    invoke-static {}, Lcom/alipay/android/phone/inside/api/accountopenauth/AccountOAuthServiceManager;->getInstance()Lcom/alipay/android/phone/inside/api/accountopenauth/AccountOAuthServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->get()Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/api/accountopenauth/AccountOAuthServiceManager;->setOAuthService(Lcom/alipay/android/phone/inside/api/accountopenauth/IAccountOAuthService;)V

    .line 152
    const-string v0, "MiniProgramAuthService"

    const-string/jumbo v1, "register OAuthService to inside"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;I)V

    .line 183
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 184
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 185
    return-void
.end method

.method public openMiniProgram(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appIconResId"    # I
    .param p3, "sourceAppId"    # Ljava/lang/String;
    .param p4, "targetAppId"    # Ljava/lang/String;
    .param p5, "userId"    # Ljava/lang/String;
    .param p6, "token"    # Ljava/lang/String;
    .param p7, "params"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    invoke-static {}, Lcom/alipay/android/phone/inside/api/accountopenauth/AccountOAuthServiceManager;->getInstance()Lcom/alipay/android/phone/inside/api/accountopenauth/AccountOAuthServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->get()Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/api/accountopenauth/AccountOAuthServiceManager;->setOAuthService(Lcom/alipay/android/phone/inside/api/accountopenauth/IAccountOAuthService;)V

    .line 104
    const-string v0, "MiniProgramAuthService"

    const-string/jumbo v1, "register OAuthService to inside"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    move-object/from16 v7, p6

    move-object v8, p3

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 136
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 137
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 138
    return-void
.end method

.method public openMiniProgram(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 196
    invoke-static {}, Lcom/alipay/android/phone/inside/api/accountopenauth/AccountOAuthServiceManager;->getInstance()Lcom/alipay/android/phone/inside/api/accountopenauth/AccountOAuthServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->get()Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/api/accountopenauth/AccountOAuthServiceManager;->setOAuthService(Lcom/alipay/android/phone/inside/api/accountopenauth/IAccountOAuthService;)V

    .line 197
    const-string v0, "MiniProgramAuthService"

    const-string/jumbo v1, "register OAuthService to inside"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$3;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "URGENT"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method public openMiniProgramByInside(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceAppId"    # Ljava/lang/String;
    .param p3, "targetAppId"    # Ljava/lang/String;
    .param p4, "userId"    # Ljava/lang/String;
    .param p5, "token"    # Ljava/lang/String;
    .param p6, "params"    # Landroid/os/Bundle;

    const-string v0, "MiniProgramAuthService"

    .line 209
    :try_start_0
    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->mUserId:Ljava/lang/String;

    .line 211
    new-instance v1, Lcom/alipay/android/phone/inside/api/model/tinyapp/TinyAppJumpModel;

    invoke-direct {v1}, Lcom/alipay/android/phone/inside/api/model/tinyapp/TinyAppJumpModel;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 212
    .local v3, "model":Lcom/alipay/android/phone/inside/api/model/tinyapp/TinyAppJumpModel;
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/alipay/android/phone/inside/api/model/tinyapp/TinyAppJumpModel;->setOpenAuthLogin(Z)V

    .line 213
    invoke-virtual {v3, p3}, Lcom/alipay/android/phone/inside/api/model/tinyapp/TinyAppJumpModel;->setAppId(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v3, p4}, Lcom/alipay/android/phone/inside/api/model/tinyapp/TinyAppJumpModel;->setAlipayUserId(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v3, p5}, Lcom/alipay/android/phone/inside/api/model/tinyapp/TinyAppJumpModel;->setAuthToken(Ljava/lang/String;)V

    .line 217
    if-eqz p6, :cond_2

    .line 218
    invoke-virtual {p6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    move-object v4, v2

    .line 219
    .local v4, "keySet":Ljava/util/Set;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v5, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 220
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p6, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 221
    .local v5, "value":Ljava/lang/Object;
    move-object v5, v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 223
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Lcom/alipay/android/phone/inside/api/model/tinyapp/TinyAppJumpModel;->putKV(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 219
    :cond_1
    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_1

    .line 217
    .end local v4    # "keySet":Ljava/util/Set;
    :cond_2
    move-object v1, v2

    move-object v5, v1

    .line 229
    :goto_1
    const-string v4, ""

    .line 230
    .local v4, "logStr":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager;->get()Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager;->getAuthCallback()Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthCallback;

    move-result-object v6

    .line 231
    .local v2, "authCallback":Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthCallback;
    move-object v2, v6

    if-eqz v6, :cond_3

    .line 232
    new-instance v6, Lcom/alipay/android/phone/inside/api/model/account/OAuthAccountUniformityModel;

    invoke-direct {v6}, Lcom/alipay/android/phone/inside/api/model/account/OAuthAccountUniformityModel;-><init>()V

    .line 233
    .local v1, "authModel":Lcom/alipay/android/phone/inside/api/model/account/OAuthAccountUniformityModel;
    move-object v1, v6

    invoke-interface {v2}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthCallback;->getMcBindAlipayUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/android/phone/inside/api/model/account/OAuthAccountUniformityModel;->setMcBindAlipayUid(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->getInstance()Lcom/alipay/android/phone/inside/service/InsideOperationService;

    move-result-object v6

    invoke-virtual {v6, p1, v1}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->startAction(Landroid/content/Context;Lcom/alipay/android/phone/inside/api/model/BaseModel;)Lcom/alipay/android/phone/inside/api/result/OperationResult;

    move-result-object v6

    .line 236
    .local v5, "result":Lcom/alipay/android/phone/inside/api/result/OperationResult;
    invoke-virtual {v6}, Lcom/alipay/android/phone/inside/api/result/OperationResult;->toJsonString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 240
    .end local v1    # "authModel":Lcom/alipay/android/phone/inside/api/model/account/OAuthAccountUniformityModel;
    .end local v5    # "result":Lcom/alipay/android/phone/inside/api/result/OperationResult;
    :cond_3
    invoke-static {}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->getInstance()Lcom/alipay/android/phone/inside/service/InsideOperationService;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->startAction(Landroid/content/Context;Lcom/alipay/android/phone/inside/api/model/BaseModel;)Lcom/alipay/android/phone/inside/api/result/OperationResult;

    move-result-object v1

    .line 242
    .local v1, "operationResult":Lcom/alipay/android/phone/inside/api/result/OperationResult;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "openMiniProgramByInside...result="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/api/result/OperationResult;->toJsonString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 242
    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .end local v1    # "operationResult":Lcom/alipay/android/phone/inside/api/result/OperationResult;
    .end local v2    # "authCallback":Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthCallback;
    .end local v3    # "model":Lcom/alipay/android/phone/inside/api/model/tinyapp/TinyAppJumpModel;
    .end local v4    # "logStr":Ljava/lang/String;
    return-void

    .line 247
    :catchall_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "openMiniProgramByInside...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public openMiniProgramWithNonLogin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 268
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 269
    return-void
.end method

.method public setLoginTokenCallback(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramLoginTokenCallback;)V
    .locals 0
    .param p1, "loginTokenCallback"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramLoginTokenCallback;

    .line 301
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->loginTokenCallback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramLoginTokenCallback;

    .line 302
    return-void
.end method

.method public setLoginTokenInvalidMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "positiveMsg"    # Ljava/lang/String;

    .line 295
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->tokenInvalidTitle:Ljava/lang/String;

    .line 296
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->tokenInvalidInfo:Ljava/lang/String;

    .line 297
    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->tokenInvalidPositiveMsg:Ljava/lang/String;

    .line 298
    return-void
.end method
