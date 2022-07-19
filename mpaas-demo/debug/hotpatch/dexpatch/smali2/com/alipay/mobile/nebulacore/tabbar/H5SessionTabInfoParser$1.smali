.class final Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$1;
.super Ljava/lang/Object;
.source "H5SessionTabInfoParser.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->getOfflineData(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$1;->a:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataParsed(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "##tabbar## getOfflineData in callback data "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5SessionTabInfoParser"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "stupid"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 36
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$1;->a:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$1;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->getOnlineData(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V

    return-void

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 40
    .local v0, "dataObj":Lcom/alibaba/fastjson/JSONObject;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$1;->a:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    if-eqz v1, :cond_1

    .line 41
    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;->onGetAsyncData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 43
    .end local v0    # "dataObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    return-void

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$1;->a:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    if-eqz v0, :cond_3

    .line 46
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;->onGetAsyncData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 49
    :cond_3
    return-void
.end method
