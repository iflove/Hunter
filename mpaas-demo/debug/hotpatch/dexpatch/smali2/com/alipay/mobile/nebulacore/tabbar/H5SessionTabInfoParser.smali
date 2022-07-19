.class public Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;
.super Ljava/lang/Object;
.source "H5SessionTabInfoParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;)V
    .locals 2
    .param p0, "h5SessionTabInfoListener"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    .line 86
    if-eqz p0, :cond_0

    .line 87
    const-string v0, "H5SessionTabInfoParser"

    const-string v1, "##tabbar## getOfflineData onGetSyncData(null)"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;->onGetSyncData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 90
    :cond_0
    return-void
.end method

.method private static a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "h5SessionTabInfoListener"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;
    .param p1, "dataStr"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;

    .line 93
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p1, p0, p2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->getOnlineData(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 97
    .local v0, "dataObj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz p0, :cond_1

    .line 98
    const-string v1, "H5SessionTabInfoParser"

    const-string v2, "##tabbar## getOfflineData onGetSyncData(dataObj)"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface {p0, v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;->onGetSyncData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 102
    .end local v0    # "dataObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    return-void
.end method

.method public static getOfflineData(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V
    .locals 8
    .param p0, "h5Session"    # Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;
    .param p1, "h5SessionTabInfoListener"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;
    .param p2, "appId"    # Ljava/lang/String;

    .line 28
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabObserver()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 31
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$1;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$1;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V

    .line 51
    .local v0, "h5SessionTabListener":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabObserver()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->getData(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "dataStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "##tabbar## getOfflineData in uithread dataStr "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5SessionTabInfoParser"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "stupid"

    if-nez v2, :cond_1

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    invoke-static {p1, v1, p2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 58
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;)V

    return-void

    .line 63
    :cond_2
    :try_start_0
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getTabDataByAppId(Ljava/lang/String;)[B

    move-result-object v2

    .line 64
    .local v2, "tabbarJSON":[B
    const/4 v5, 0x0

    .line 65
    .local v5, "dataStrRetry":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 66
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    move-object v5, v6

    .line 68
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "##tabbar## getOfflineData else retry "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 70
    invoke-static {p1, v5, p2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 72
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;)V

    return-void

    .line 74
    :cond_5
    if-eqz p1, :cond_6

    .line 75
    const-string v4, "##tabbar## getOfflineData onShowDefaultTab()"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-interface {p1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;->onShowDefaultTab()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v2    # "tabbarJSON":[B
    .end local v5    # "dataStrRetry":Ljava/lang/String;
    :cond_6
    return-void

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "catch exception "

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .end local v2    # "e":Ljava/lang/Exception;
    return-void

    .line 29
    .end local v0    # "h5SessionTabListener":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;
    .end local v1    # "dataStr":Ljava/lang/String;
    :cond_7
    :goto_0
    return-void
.end method

.method public static getOnlineData(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "h5SessionTabInfoListener"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;
    .param p2, "appId"    # Ljava/lang/String;

    .line 106
    if-eqz p1, :cond_0

    .line 107
    const-string v0, "H5SessionTabInfoParser"

    const-string v1, "##tabbar## getOnlineData onShowDefaultTab()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-interface {p1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;->onShowDefaultTab()V

    .line 110
    :cond_0
    const-string v0, "RPC"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method
