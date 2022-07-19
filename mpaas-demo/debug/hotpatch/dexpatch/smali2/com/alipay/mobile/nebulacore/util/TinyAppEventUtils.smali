.class public Lcom/alipay/mobile/nebulacore/util/TinyAppEventUtils;
.super Ljava/lang/Object;
.source "TinyAppEventUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z
    .locals 1
    .param p0, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .line 29
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static contains(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)Z
    .locals 1
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "key"    # Ljava/lang/String;

    .line 25
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulacore/util/TinyAppEventUtils;->contains(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static containsNull(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z
    .locals 2
    .param p0, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 16
    return v0

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 19
    return v0

    .line 21
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static containsNull(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)Z
    .locals 1
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "key"    # Ljava/lang/String;

    .line 10
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulacore/util/TinyAppEventUtils;->containsNull(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isValueAssignableFrom(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 3
    .param p0, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "valueType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 41
    .local v2, "value":Ljava/lang/Object;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 42
    return v0

    .line 44
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 38
    .end local v2    # "value":Ljava/lang/Object;
    :cond_2
    :goto_0
    return v0
.end method

.method public static isValueAssignableFrom(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "valueType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/h5container/api/H5Event;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 33
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/util/TinyAppEventUtils;->isValueAssignableFrom(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
