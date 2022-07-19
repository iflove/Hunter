.class public Lcom/alipay/android/phone/wallet/spmtracker/NullSpmMonitor;
.super Ljava/lang/Object;
.source "NullSpmMonitor.java"

# interfaces
.implements Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public behaviorClick(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/Object;
    .param p2, "spmId"    # Ljava/lang/String;
    .param p3, "bizCode"    # Ljava/lang/String;
    .param p4, "loggerLevel"    # I
    .param p5, "entityId"    # Ljava/lang/String;
    .param p6, "param4"    # Ljava/util/Map;
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

    .line 62
    return-void
.end method

.method public behaviorExpose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/Object;
    .param p2, "spmId"    # Ljava/lang/String;
    .param p3, "bizCode"    # Ljava/lang/String;
    .param p4, "loggerLevel"    # I
    .param p5, "entityId"    # Ljava/lang/String;
    .param p6, "param4"    # Ljava/util/Map;
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

    .line 67
    return-void
.end method

.method public behaviorSlide(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/Object;
    .param p2, "spmId"    # Ljava/lang/String;
    .param p3, "bizCode"    # Ljava/lang/String;
    .param p4, "loggerLevel"    # I
    .param p5, "entityId"    # Ljava/lang/String;
    .param p6, "param4"    # Ljava/util/Map;
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

    .line 77
    return-void
.end method

.method public getCurrentPageInfo()Landroid/os/Parcelable;
    .locals 1

    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastClickSpmId()Ljava/lang/String;
    .locals 1

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastClickSpmIdByPage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "page"    # Ljava/lang/Object;

    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMiniPageId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "page"    # Ljava/lang/Object;

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageChInfo(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "page"    # Ljava/lang/Object;

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "page"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageSpm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "page"    # Ljava/lang/Object;

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSrcSpm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "page"    # Ljava/lang/Object;

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopPage()Ljava/lang/Object;
    .locals 1

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTracerInfo(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "page"    # Ljava/lang/Object;
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

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPageStarted(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "page"    # Ljava/lang/Object;

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public mergeExpose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 0
    .param p1, "page"    # Ljava/lang/Object;
    .param p2, "spmId"    # Ljava/lang/String;
    .param p3, "bizCode"    # Ljava/lang/String;
    .param p4, "loggerLevel"    # I
    .param p5, "entityId"    # Ljava/lang/String;
    .param p6, "param4"    # Ljava/util/Map;
    .param p7, "rid"    # Ljava/lang/String;
    .param p8, "position"    # I
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
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 72
    return-void
.end method

.method public pageOnCreate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/Object;
    .param p2, "spmId"    # Ljava/lang/String;

    .line 22
    return-void
.end method

.method public pageOnDestroy(Ljava/lang/Object;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public pageOnPause(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/Object;
    .param p2, "spmId"    # Ljava/lang/String;
    .param p3, "bizCode"    # Ljava/lang/String;
    .param p4, "map"    # Ljava/util/Map;
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

    .line 37
    return-void
.end method

.method public pageOnPause(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/Object;
    .param p2, "spmId"    # Ljava/lang/String;
    .param p3, "bizCode"    # Ljava/lang/String;
    .param p4, "map"    # Ljava/util/Map;
    .param p5, "chInfo"    # Ljava/lang/String;
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

    .line 32
    return-void
.end method

.method public pageOnResume(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/Object;
    .param p2, "spmId"    # Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setContentTag(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scmId"    # Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setCurrentPageInfo(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "pageInfo"    # Landroid/os/Parcelable;

    .line 157
    return-void
.end method

.method public setHomePageTabSpms(Ljava/util/List;)V
    .locals 0
    .param p1, "spmIds"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 147
    return-void
.end method

.method public setIsDebug(Z)V
    .locals 0
    .param p1, "isDebug"    # Z

    .line 17
    return-void
.end method

.method public setLastClickSpm(Ljava/lang/String;)V
    .locals 0
    .param p1, "spm"    # Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setMergeConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "config"    # Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setSpmTag(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "spmid"    # Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setSpmTag(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "spmid"    # Ljava/lang/String;
    .param p3, "needSaveView"    # Z

    .line 142
    return-void
.end method

.method public upateSrcSpm(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/Object;
    .param p2, "srcSpm"    # Ljava/lang/String;

    .line 47
    return-void
.end method
