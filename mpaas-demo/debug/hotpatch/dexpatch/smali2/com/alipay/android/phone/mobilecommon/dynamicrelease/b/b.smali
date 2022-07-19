.class public final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;
.super Ljava/lang/Object;
.source "NetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "1XRTT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "4G"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "CDMA - 1X"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "CDMA - 1XRTT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "CDMA - EHRPD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "CDMA - EVDO REV. 0"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "CDMA - EVDO REV. A"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "CDMA - EVDO REV. B"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "CDMA - HRPD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "CDMA 1X"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "CDMA EVDO"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "CDMA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "DC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "DC_HSPAP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "EDGE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "EHRPD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "EVDO"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "EVDO_0"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "EVDO_A"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "EVDO_B"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "GPRS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "GSM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "HSDPA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "HSPA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "HSPA+"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "HSPAP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "HSUPA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "IDEN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "IWLAN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "LTE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "LTE-CA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "LTE_CA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "TD-SCDMA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "TD_SCDMA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "TDS_HSDPA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "UMTS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "WCDMA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "WIFI"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const-string v2, "UNKNOWN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method static synthetic a()Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;
    .locals 1

    .line 16
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    invoke-static {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 120
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 121
    const-string v0, "gsm"

    return-object v0

    .line 124
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "wifi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    return-object v2

    .line 127
    :cond_1
    const-string v0, "gsm"

    .line 129
    .local v0, "mobileType":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 130
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 132
    const-string v0, "gsm"

    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_4

    .line 134
    const-string/jumbo v0, "td-cdma"

    goto :goto_0

    .line 135
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_5

    .line 136
    const-string/jumbo v0, "tds-hsdpsa"

    goto :goto_0

    .line 137
    :cond_5
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_6

    .line 138
    const-string/jumbo v0, "tds-hsupa"

    .line 141
    :cond_6
    :goto_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requires"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 161
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-static {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    move-result-object v1

    .line 166
    .local v1, "curNetLevel":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 167
    invoke-static {v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    move-result-object v3

    .line 168
    .local v3, "requireLevel":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;
    invoke-virtual {v1, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-nez v4, :cond_1

    .line 169
    return v0

    .line 171
    .end local v3    # "requireLevel":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;
    :cond_1
    goto :goto_0

    .line 173
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "curNetLevel:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DynamicRelease"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x0

    return v0

    .line 162
    .end local v1    # "curNetLevel":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;
    :cond_3
    :goto_1
    return v0
.end method

.method public static a(Ljava/util/List;)Z
    .locals 7
    .param p0, "requires"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 178
    const/4 v0, 0x0

    const-string v1, "DynamicRelease"

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    .line 183
    .local v2, "targetNetLevel":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 184
    .local v4, "require":Ljava/lang/String;
    move-object v4, v5

    invoke-static {v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    move-result-object v5

    .line 185
    .local v5, "requireLevel":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;
    invoke-virtual {v2, v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "isWifiOnly() got require "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " witch is not wifi, return false"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return v0

    .line 189
    .end local v4    # "require":Ljava/lang/String;
    .end local v5    # "requireLevel":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;
    :cond_1
    goto :goto_0

    .line 191
    :cond_2
    const-string v0, "isWifiOnly() got true"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x1

    return v0

    .line 179
    .end local v2    # "targetNetLevel":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;
    :cond_3
    :goto_1
    const-string v2, "isWifiOnly() got empty requires, return false"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return v0
.end method

.method public static b(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 146
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b:Ljava/util/Map;

    invoke-static {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    const/4 v1, 0x0

    .line 147
    .local v1, "curLevel":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 148
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    return-object v0

    .line 151
    :cond_0
    return-object v1
.end method

.method private static c(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 105
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 106
    return-object v0

    .line 109
    :cond_0
    :try_start_0
    const-string v1, "connectivity"

    .line 110
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    move-object v2, v0

    .line 111
    .local v2, "connectivityMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 112
    .end local v2    # "connectivityMgr":Landroid/net/ConnectivityManager;
    :catchall_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "DynamicRelease"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    return-object v0
.end method
