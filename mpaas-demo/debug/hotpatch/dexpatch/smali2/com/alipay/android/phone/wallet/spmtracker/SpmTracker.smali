.class public Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;
.super Ljava/lang/Object;
.source "SpmTracker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearViewSpmTag(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 292
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->setViewSpmTag(Landroid/view/View;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public static click(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->click(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    return-void
.end method

.method public static click(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 8
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "loggerLevel"    # I
    .param p4, "param4"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->behaviorClick(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 107
    return-void
.end method

.method public static click(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "param4"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0, p3}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->click(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 95
    return-void
.end method

.method public static clickWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "loggerLevel"    # I
    .param p4, "entityId"    # Ljava/lang/String;
    .param p5, "param4"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->behaviorClick(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 142
    return-void
.end method

.method public static clickWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "entityId"    # Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->clickWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 118
    return-void
.end method

.method public static clickWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "entityId"    # Ljava/lang/String;
    .param p4, "param4"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->clickWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 129
    return-void
.end method

.method public static expose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->expose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    return-void
.end method

.method public static expose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 8
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "loggerLevel"    # I
    .param p4, "param4"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 174
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->behaviorExpose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 175
    return-void
.end method

.method public static expose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "param4"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 162
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0, p3}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->expose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 163
    return-void
.end method

.method public static exposeWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "loggerLevel"    # I
    .param p4, "entityId"    # Ljava/lang/String;
    .param p5, "param4"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 207
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->behaviorExpose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 208
    return-void
.end method

.method public static exposeWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "entityId"    # Ljava/lang/String;

    .line 184
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->exposeWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 185
    return-void
.end method

.method public static exposeWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "entityId"    # Ljava/lang/String;
    .param p4, "param4"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 195
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->exposeWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 196
    return-void
.end method

.method public static getCurrentPageInfo()Landroid/os/Parcelable;
    .locals 1

    .line 517
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->getCurrentPageInfo()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public static getLastClickSpmId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 376
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->getLastClickSpmId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastClickSpmIdByPage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 387
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->getLastClickSpmIdByPage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiniPageId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 365
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->getMiniPageId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPageId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->getPageId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPageSpm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 331
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->getPageSpm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSrcSpm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 354
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->getSrcSpm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTopPage()Ljava/lang/Object;
    .locals 1

    .line 266
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->getTopPage()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getTracerInfo(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 397
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->getTracerInfo(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static isPageStarted(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;

    .line 312
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->isPageStarted(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static mergeExpose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 10
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "loggerLevel"    # I
    .param p4, "param4"    # Ljava/util/Map;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 423
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p4

    invoke-interface/range {v1 .. v9}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->mergeExpose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    .line 424
    return-void
.end method

.method public static mergeExpose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 7
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "rpcId"    # Ljava/lang/String;
    .param p4, "param4"    # Ljava/util/Map;
    .param p5, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 232
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->mergeExposeWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 233
    return-void
.end method

.method public static mergeExpose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "param4"    # Ljava/util/Map;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 410
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0, p3}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->mergeExpose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 411
    return-void
.end method

.method public static mergeExpose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 6
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "param4"    # Ljava/util/Map;
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 219
    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->mergeExpose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 220
    return-void
.end method

.method public static mergeExposeWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 10
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "loggerLevel"    # I
    .param p4, "entityId"    # Ljava/lang/String;
    .param p5, "param4"    # Ljava/util/Map;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 448
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v9}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->mergeExpose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    .line 449
    return-void
.end method

.method public static mergeExposeWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 10
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "entityId"    # Ljava/lang/String;
    .param p4, "rpcId"    # Ljava/lang/String;
    .param p5, "param4"    # Ljava/util/Map;
    .param p6, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 257
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v1

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p5

    move-object v8, p4

    move/from16 v9, p6

    invoke-interface/range {v1 .. v9}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->mergeExpose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    .line 258
    return-void
.end method

.method public static mergeExposeWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "entityId"    # Ljava/lang/String;
    .param p4, "param4"    # Ljava/util/Map;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 435
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->mergeExposeWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 436
    return-void
.end method

.method public static mergeExposeWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 7
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "entityId"    # Ljava/lang/String;
    .param p4, "param4"    # Ljava/util/Map;
    .param p5, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 244
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->mergeExposeWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 245
    return-void
.end method

.method public static onPageCreate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->pageOnCreate(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static onPageDestroy(Ljava/lang/Object;)V
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->pageOnDestroy(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public static onPagePause(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->pageOnPause(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 65
    return-void
.end method

.method public static onPagePause(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/util/Map;
    .param p4, "chInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->pageOnPause(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static onPageResume(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->pageOnResume(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static setCurrentPageInfo(Landroid/os/Parcelable;)V
    .locals 1
    .param p0, "pageInfo"    # Landroid/os/Parcelable;

    .line 524
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->setCurrentPageInfo(Landroid/os/Parcelable;)V

    .line 525
    return-void
.end method

.method public static setHomePageTabSpms(Ljava/util/List;)V
    .locals 1
    .param p0, "spmIds"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 319
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->setHomePageTabSpms(Ljava/util/List;)V

    .line 320
    return-void
.end method

.method public static setIsDebug(Z)V
    .locals 1
    .param p0, "isDebug"    # Z

    .line 19
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->setIsDebug(Z)V

    .line 20
    return-void
.end method

.method public static setLastClickSpm(Ljava/lang/String;)V
    .locals 1
    .param p0, "spm"    # Ljava/lang/String;

    .line 300
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->setLastClickSpm(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public static setMergeConfig(Ljava/lang/String;)V
    .locals 1
    .param p0, "config"    # Ljava/lang/String;

    .line 304
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->setMergeConfig(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public static setViewSpmTag(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "spmId"    # Ljava/lang/String;

    .line 276
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->setSpmTag(Landroid/view/View;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public static setViewSpmTag(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "isPopupView"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->setSpmTag(Landroid/view/View;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public static slide(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 459
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->slide(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 460
    return-void
.end method

.method public static slide(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 8
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "loggerLevel"    # I
    .param p4, "param4"    # Ljava/util/Map;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 484
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->behaviorSlide(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 485
    return-void
.end method

.method public static slide(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "param4"    # Ljava/util/Map;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 471
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0, p3}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->slide(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 472
    return-void
.end method

.method public static slideWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "loggerLevel"    # I
    .param p4, "entityId"    # Ljava/lang/String;
    .param p5, "param4"    # Ljava/util/Map;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 509
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;->behaviorSlide(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 510
    return-void
.end method

.method public static slideWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "page"    # Ljava/lang/Object;
    .param p1, "spmId"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;
    .param p3, "entityId"    # Ljava/lang/String;
    .param p4, "param4"    # Ljava/util/Map;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 496
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->slideWithEntityId(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 497
    return-void
.end method
