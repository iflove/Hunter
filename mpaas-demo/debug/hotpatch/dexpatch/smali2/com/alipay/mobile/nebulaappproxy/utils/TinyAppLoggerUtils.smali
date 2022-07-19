.class public Lcom/alipay/mobile/nebulaappproxy/utils/TinyAppLoggerUtils;
.super Ljava/lang/Object;
.source "TinyAppLoggerUtils.java"


# static fields
.field public static final ABOUT_SPM_ID:Ljava/lang/String; = "a192.b5743.c12614.d23114"

.field public static final ADD_TO_DESKTOP_SPM_ID:Ljava/lang/String; = "a192.b5743.c12614.d23120"

.field public static final APPX_UPDATE_FAILED_SPM_ID:Ljava/lang/String; = "a192.b7351.c17706.d31775"

.field public static final APPX_UPDATE_SUCCESS_SPM_ID:Ljava/lang/String; = "a192.b7351.c17706.d31776"

.field public static final BACK_TO_BACK_SPM_ID:Ljava/lang/String; = "a192.b5743.c12614.d25586"

.field public static final FAVORITE_ACTION_DATACHECK_SPM_ID:Ljava/lang/String; = "a192.b9397.c22766.d42168"

.field public static final FAVORITE_ACTION_EXCEPTION_SPM_ID:Ljava/lang/String; = "a192.b9397.c22766.d42167"

.field public static final FAVORITE_ACTION_USE_CACHE_SPM_ID:Ljava/lang/String; = "a192.b9397.c22766.d42169"

.field public static final FAVORITE_SPM_ID:Ljava/lang/String; = "a192.b5743.c12614.d23119"

.field public static final MENU_CANCEL_FAVORITE_EXPOSE_ID:Ljava/lang/String; = "a192.b5743.c12614.d40051"

.field public static final MENU_MESSAGE_EXPOSE_ID:Ljava/lang/String; = "a192.b5743.c12614.d37333"

.field public static final MENU_OFFICIAL_FEEDBACK_EXPOSE_ID:Ljava/lang/String; = "a192.b5743.c12614.d37334"

.field public static final NEW_ABOUT_SPM_ID:Ljava/lang/String; = "a192.b5743.c12614.d23114"

.field public static final NEW_ADD_TO_DESKTOP_SPM_ID:Ljava/lang/String; = "a192.b5743.c12614.d23120"

.field public static final NEW_BACK_TO_ALIPAY_HOME_SPM_ID:Ljava/lang/String; = "a192.b5743.c12614.d37335"

.field public static final NEW_BACK_TO_BACK_SPM_ID:Ljava/lang/String; = "a192.b5743.c12614.d25586"

.field public static final NEW_CANCEL_FAVORITE_SPM_ID:Ljava/lang/String; = "a192.b5743.c12614.d40051"

.field public static final NEW_FAVORITE_SPM_ID:Ljava/lang/String; = "a192.b5743.c12614.d23119"

.field public static final NEW_MESSAGE_SPM_ID:Ljava/lang/String; = "a192.b5743.c12614.d37333"

.field public static final NEW_OFFICIAL_FEEDBACK_SPM_ID:Ljava/lang/String; = "a192.b5743.c12614.d37334"

.field public static final NEW_SHARE_SPM_ID:Ljava/lang/String; = "a192.b5743.c12614.d23118"

.field public static final OPTION_MENU_CLICKED_SPM_ID:Ljava/lang/String; = "a192.b5743.c12614.d25585"

.field public static final SHARE_SPM_ID:Ljava/lang/String; = "a192.b5743.c12614.d23118"

.field private static final TINY_APP_BIZ_TYPE:Ljava/lang/String; = "TINYAPP"

.field public static final TITLE_BAR_BACK_TO_HOME_EXPOSE_ID:Ljava/lang/String; = "a192.b5743.c20485.d37321"

.field public static final TITLE_BAR_BACK_TO_HOME_SPM_ID:Ljava/lang/String; = "a192.b5743.c20485.d37321"

.field public static final TITLE_BAR_CANCEL_FAVORITE_EXPOSE_ID:Ljava/lang/String; = "a192.b5743.c20485.d38379"

.field public static final TITLE_BAR_CANCEL_FAVORITE_SPM_ID:Ljava/lang/String; = "a192.b5743.c20485.d38379"

.field public static final TITLE_BAR_CLOSE_TINY_APP_SPM_ID:Ljava/lang/String; = "a192.b5743.c20485.d37320"

.field public static final TITLE_BAR_FAVORITE_EXPOSE_ID:Ljava/lang/String; = "a192.b5743.c20485.d37318"

.field public static final TITLE_BAR_FAVORITE_SPM_ID:Ljava/lang/String; = "a192.b5743.c20485.d37318"

.field public static final TITLE_BAR_MORE_OPTION_MENU_SPM_ID:Ljava/lang/String; = "a192.b5743.c20485.d37319"

.field public static final UPGRADE_CLIENT_SPM_ID:Ljava/lang/String; = "a192.b7351.c17706.d31777"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static markEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "seedId"    # Ljava/lang/String;
    .param p1, "userCaseId"    # Ljava/lang/String;
    .param p2, "eventParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 113
    .local v2, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v2, v0

    const-string v3, "TINYAPP"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2, p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 116
    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getExtParams()Ljava/util/Map;

    move-result-object v0

    .line 118
    .local v1, "extParams":Ljava/util/Map;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 122
    .end local v1    # "extParams":Ljava/util/Map;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 123
    return-void
.end method

.method public static markSpmBehavor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "seedId"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const/4 v1, 0x0

    .line 84
    .local v1, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v1, v0

    const-string v2, "TINYAPP"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 88
    return-void
.end method

.method public static markSpmBehavor(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "seedId"    # Ljava/lang/String;
    .param p1, "extParam"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const/4 v1, 0x0

    .line 98
    .local v1, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v1, v0

    const-string v2, "TINYAPP"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 100
    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getExtParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 103
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 104
    return-void
.end method

.method public static markSpmExpose(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 135
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 136
    .local v1, "params":Ljava/util/Map;
    move-object v1, v0

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v0, "TINYAPP"

    invoke-static {p0, p1, v0, v1}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->expose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v1    # "params":Ljava/util/Map;
    return-void

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "markSpmExpose"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static markSpmExpose(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 152
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 153
    .local v0, "params":Ljava/util/Map;
    if-eqz p2, :cond_0

    .line 154
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 156
    :cond_0
    const-string v1, "TINYAPP"

    invoke-static {p0, p1, v1, v0}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->expose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v0    # "params":Ljava/util/Map;
    return-void

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "markSpmExpose"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
