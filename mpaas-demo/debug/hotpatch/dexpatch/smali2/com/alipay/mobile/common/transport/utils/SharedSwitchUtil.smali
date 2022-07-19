.class public Lcom/alipay/mobile/common/transport/utils/SharedSwitchUtil;
.super Ljava/lang/Object;
.source "SharedSwitchUtil.java"


# static fields
.field public static final KEY_NET_SWITCH_ONE:Ljava/lang/String; = "netsdk_normal_switch"

.field public static final KEY_NET_SWITCH_TWO:Ljava/lang/String; = "android_network_core"

.field public static final SHARED_FILE:Ljava/lang/String; = "sdkSharedSwitch.xml"

.field public static final SHARED_FILE_NAME:Ljava/lang/String; = "sdkSharedSwitch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addSwitchChangedListener(Ljava/util/Observer;)V
    .locals 0
    .param p0, "observer"    # Ljava/util/Observer;

    .line 88
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->addSwitchChangedListener(Ljava/util/Observer;)V

    .line 89
    return-void
.end method

.method public static declared-synchronized getSharedSwitch(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/common/transport/utils/SharedSwitchUtil;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->getSharedSwitch(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 50
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPrefName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/common/transport/utils/SharedSwitchUtil;

    monitor-enter v0

    .line 78
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->getSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 78
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sharedPrefName":Ljava/lang/String;
    .end local p2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final init()V
    .locals 0

    .line 43
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->regSwitchChangedListener()V

    .line 44
    return-void
.end method

.method public static notifySwitchUpdate()V
    .locals 0

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->notifySwitchUpdate()V

    .line 97
    return-void
.end method

.method public static refreshSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPrefName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 65
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->refreshSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static declared-synchronized removeSwitch(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/transport/utils/SharedSwitchUtil;

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->removeSwitch(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit v0

    return-void

    .line 104
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
