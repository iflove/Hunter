.class public Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;
.super Ljava/lang/Object;
.source "PageFinishRecoder.java"


# static fields
.field private static pageFinishLinkPhaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    .line 20
    const-string v1, "PHASE_LIFE_LIST_SHOW"

    const-string v2, "LIFE_LINK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_ALIPASS_TAB"

    const-string v2, "LINK_ALIPASS_TAB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_BALANCE_LAUNCH"

    const-string v2, "LINK_BALANCE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_BANKLIST_LAUNCH"

    const-string v2, "LINK_BANKCARDLIST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_FUND_LAUNCH"

    const-string v2, "LINK_FUND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_O2O_DETAIL"

    const-string v2, "LINK_O2O"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_O2O_SEARCH_SELECT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_QUAN_DETAIL"

    const-string v2, "LINK_O2O_ALIPASS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_QUAN_LIST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_PAY_CODE_LAUNCH_OFFLINE"

    const-string v2, "LINK_PAY_CODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_PAY_CODE_LAUNCH_ONLINE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_PAYEE_LAUNCH"

    const-string v2, "LINK_PAYEE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_START_REDEVELOPE_HOME"

    const-string v2, "LINK_PERSONAL_REDENVELOPE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v2, "LINK_PERSONAL_REDEVELOPE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_PHONECHARGE_LAUNCH"

    const-string v2, "LINK_PHONECHARGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_REDEVELOPE_LIST"

    const-string v2, "LINK_REDEVELOPE_LIST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_OPEN_REDEVELOPE_TO_OPEN"

    const-string v2, "LINK_REDEVELOPE_TO_OPEN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_SCAN_CODE_IND_LAUNCH"

    const-string v2, "LINK_SCAN_CODE_IND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_SOCIAL_SESSION"

    const-string v2, "LINK_SOCIAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_SOCIAL_COMBINED"

    const-string v2, "LINK_SOCIAL_COMBINED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_SOCIAL_FRIEND"

    const-string v2, "LINK_SOCIAL_FRIEND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_SOCIAL_PROFILE"

    const-string v2, "LINK_SOCIAL_PROFILE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_SOCIAL_SHORTVIDEO"

    const-string v2, "LINK_SOCIAL_SHORTVIDEO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_SOCIALCARD_DETAIL_LOCALDATA"

    const-string v2, "LINK_SOCIALCARD_DETAIL_LOCALDATA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_SOCIALCARD_DETAIL_SERVERDATA"

    const-string v2, "LINK_SOCIALCARD_DETAIL_SERVERDATA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_SOCIALCARD_HOMEPAGE_SHOW"

    const-string v2, "LINK_SOCIALCARD_HOMEPAGE_SHOW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_ACCOUNTHISTORY_ACCOUNTFORM"

    const-string v2, "LINK_TRANSFER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_ACCOUNTHISTORY_AMOUNTFORM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_ACCOUNTINPUT_FORM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_MYFRIEND_FORM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_TOCARD_FORM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_TRANSFER_LAUNCH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_BILL_LIST_LAUNCH"

    const-string v2, "LINK_BILL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_BILL_LIST_LAUNCH_OFFLINE"

    const-string v2, "LINK_BILL_OFFLINE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    const-string v1, "PHASE_BILL_LIST_LAUNCH_ONLINE"

    const-string v2, "LINK_BILL_ONLINE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endPhase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->isPageFinishLinkPhase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 66
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->onPageFinishInitializing()V

    .line 68
    :cond_1
    return-void

    .line 63
    :cond_2
    :goto_0
    return-void
.end method

.method public static isPageFinishLinkPhase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 77
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/mainlink/PageFinishRecoder;->pageFinishLinkPhaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 78
    const/4 p0, 0x1

    return p0

    .line 80
    :cond_0
    const/4 p0, 0x0

    return p0
.end method
