.class public Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;
.super Ljava/lang/Object;
.source "LocalBroadcastManagerWrapper.java"


# static fields
.field static TAG:Ljava/lang/String;

.field private static c:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private static d:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;


# instance fields
.field private a:Z

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "LocalBroadcastManagerWrapper"

    sput-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->e:Ljava/util/Set;

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->f:Z

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->b:Ljava/util/List;

    .line 97
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->c:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 99
    const/4 v2, 0x0

    :try_start_0
    const-class v3, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    const-string/jumbo v4, "registerSubThreadReceiver"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/BroadcastReceiver;

    aput-object v6, v5, v2

    const-class v6, Landroid/content/IntentFilter;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 100
    invoke-static {}, Lcom/alipay/mobile/framework/util/QuinoxModeUtils;->isSupportSubThreadReceiver()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->a:Z

    .line 101
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 103
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "quinox_run_in_sub_thread"

    iget-boolean v4, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->a:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->f:Z

    .line 108
    const-string v3, "com.alipay.android.phone.businesscommon.receiver.NetworkChangeReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v3, "com.alipay.android.phone.businesscommon.receiver.BackgroundReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v3, "com.alipay.android.phone.businesscommon.receiver.CleanVavle"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v3, "com.alipay.mobile.base.notification.widget.NotificationStarter"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v3, "com.alipay.mobile.about.service.UpdateBroadcastReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v3, "com.alipay.android.widget.security.msgreceiver.DeviceLockMsgReceiverNew"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v3, "com.alipay.mobile.security.gesture.service.GestureBackToFrontReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v3, "com.alipay.mobile.rome.pushservice.adapter.msg.AppActiveMsgReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    const-string v3, "com.alipay.mobile.healthcommon.stepcounter.APStepUploadReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    const-string v3, "com.alipay.android.phone.mobilesdk.permission.guide.info.InfoRpcReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    const-string v3, "com.alipay.mobile.base.receiver.SensorMonitorReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v3, "com.alipay.mobile.emotion.app.TabChangeListener"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    const-string v3, "com.alipay.mobile.socialchatsdk.chat.receiver.ResourceNetChangeReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v3, "com.alipay.mobile.nebulabiz.receiver.H5AppLoginReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v3, "com.alipay.android.phone.wallet.inwallet.StandaloneBroadcastReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    const-string v3, "com.alipay.mobile.onsitepaystatic.LoginAndPayBroadCastReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v3, "com.alipay.android.phone.seauthenticator.iotauth.IOTCacheReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v3, "com.alipay.android.phone.mobilesdk.abtest.impl.ClientExternalEventReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v3, "com.alipay.android.phone.mobilecommon.dynamicrelease.RealTimeReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v3, "com.alipay.android.resourcemanager.receiver.NetStatusReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    const-string v3, "com.alipay.mobile.liteprocess.HostInfoReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v3, "com.alipay.mobile.group.app.GroupReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v3, "com.alipay.mobile.base.config.ConfigUpdateBroadCastReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v3, "com.alipay.mobile.commonbiz.receiver.CommonBizReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v3, "com.alipay.android.widget.security.msgreceiver.SecurityInitMsgReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v3, "com.alipay.mobile.chatsdk.broadcastrecv.LogoutInBroadcastReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v3, "com.alipay.mobile.security.MssSdkLoginReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v3, "com.alipay.android.phone.mobilesdk.abtest.handler.ClientExternalEventReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v3, "com.alipay.mobile.appstoreapp.receiver.ClientSetupReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    const-string v3, "com.alipay.android.phone.wallet.sharetoken.ShareTokenCheckReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    const-string v3, "com.alipay.android.phone.messageboxstatic.biz.login.LogInBroadcastReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    const-string v3, "com.alipay.mobile.tianyanadapter.logging.LoggingLocalReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    const-string v3, "com.alipay.mobile.user.retention.receiver.AppForegroundReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    const-string v3, "com.alipay.mobile.rome.pushservice.adapter.msg.PushMessageSyncReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v3, "com.alipay.mobilelbs.biz.core.LBSLocalReceiver"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    nop

    .end local v1    # "sp":Landroid/content/SharedPreferences;
    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    .local v0, "tr":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    iput-boolean v2, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->a:Z

    .line 205
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->a:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper$1;-><init>(Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;)V

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->setCallback(Landroidx/localbroadcastmanager/content/LocalBroadcastManager$Callback;)V

    .line 320
    :cond_0
    sget-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Support SubThread Broadcast: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    monitor-enter v0

    .line 324
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->d:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    if-nez v1, :cond_0

    .line 325
    new-instance v1, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->d:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    .line 327
    :cond_0
    sget-object v1, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->d:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 323
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 395
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->b:Ljava/util/List;

    monitor-enter v0

    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 397
    .local v2, "weakReceiver":Ljava/lang/ref/WeakReference;
    move-object v2, v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 398
    sget-object v3, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->c:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 400
    .end local v2    # "weakReceiver":Ljava/lang/ref/WeakReference;
    :cond_0
    goto :goto_0

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 403
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSupportSubThreadBroadcast()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->a:Z

    return v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 3
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 346
    iget-boolean v0, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->f:Z

    if-eqz v0, :cond_0

    .line 347
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->e:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    sget-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found receiver which can run in sub thread mode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->registerSubThreadReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 350
    return-void

    .line 353
    :cond_0
    sget-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "config say we can not run in sub thread mode, ignore."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->b:Ljava/util/List;

    monitor-enter v0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->b:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    sget-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->c:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v0, p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 360
    return-void

    .line 358
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerReceiverDescription(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V
    .locals 0
    .param p1, "description"    # Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 370
    return-void
.end method

.method public registerSubThreadReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 3
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 335
    invoke-virtual {p0}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->isSupportSubThreadBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->b:Ljava/util/List;

    monitor-enter v0

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->b:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    sget-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->c:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v0, p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerSubThreadReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void

    .line 338
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 341
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 343
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 363
    sget-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->c:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 364
    return-void
.end method
