.class public Lcom/alipay/mobile/antui/theme/model/AUResourceModel;
.super Ljava/lang/Object;
.source "AUResourceModel.java"


# static fields
.field private static final COLOR_KEY:Ljava/lang/String; = "COLOR"

.field private static final DIMEN_KEY:Ljava/lang/String; = "DIMEN"

.field private static final DRAWABLE_KEY:Ljava/lang/String; = "DRAWABLE"


# instance fields
.field private colorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dimenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private drawableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private themeModel:Lcom/alipay/mobile/antui/theme/model/AUThemeModel;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/theme/model/AUThemeModel;)V
    .locals 2
    .param p1, "model"    # Lcom/alipay/mobile/antui/theme/model/AUThemeModel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;

    invoke-direct {v0}, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->themeModel:Lcom/alipay/mobile/antui/theme/model/AUThemeModel;

    .line 29
    if-nez p1, :cond_0

    .line 30
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->colorMap:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->dimenMap:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->drawableMap:Ljava/util/Map;

    .line 35
    iget-object v0, p1, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;->themeJson:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 37
    const-string v0, "COLOR"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->updateColorMap(Ljava/lang/Object;)V

    .line 38
    const-string v0, "DIMEN"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->updateDimenMap(Ljava/lang/Object;)V

    .line 39
    const-string v0, "DRAWABLE"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->updateDrawableMap(Ljava/lang/Object;)V

    .line 41
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->themeModel:Lcom/alipay/mobile/antui/theme/model/AUThemeModel;

    .line 42
    return-void
.end method

.method private updateColorMap(Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 79
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 80
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x0

    .line 81
    .local v1, "colorJson":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->colorMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 86
    .end local v1    # "colorJson":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method private updateDimenMap(Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 89
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 90
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x0

    .line 91
    .local v1, "dimenJson":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 93
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->colorMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 96
    .end local v1    # "dimenJson":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method private updateDrawableMap(Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 99
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 100
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x0

    .line 101
    .local v1, "drawableJson":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 103
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->drawableMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 106
    .end local v1    # "drawableJson":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method


# virtual methods
.method public getColor(Ljava/lang/String;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 47
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->themeModel:Lcom/alipay/mobile/antui/theme/model/AUThemeModel;

    if-eqz v2, :cond_0

    iget-wide v2, v2, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;->endTime:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->themeModel:Lcom/alipay/mobile/antui/theme/model/AUThemeModel;

    iget-wide v2, v2, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;->startTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->colorMap:Ljava/util/Map;

    .line 50
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->colorMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/antui/utils/ToolUtils;->parseColor(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 53
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getDimen(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->themeModel:Lcom/alipay/mobile/antui/theme/model/AUThemeModel;

    if-eqz v2, :cond_0

    iget-wide v2, v2, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;->endTime:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->themeModel:Lcom/alipay/mobile/antui/theme/model/AUThemeModel;

    iget-wide v2, v2, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;->startTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->dimenMap:Ljava/util/Map;

    .line 72
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->dimenMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/alipay/mobile/antui/utils/ToolUtils;->parseDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 75
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getDrawable(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->themeModel:Lcom/alipay/mobile/antui/theme/model/AUThemeModel;

    if-eqz v2, :cond_0

    iget-wide v2, v2, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;->endTime:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->themeModel:Lcom/alipay/mobile/antui/theme/model/AUThemeModel;

    iget-wide v2, v2, Lcom/alipay/mobile/antui/theme/model/AUThemeModel;->startTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->colorMap:Ljava/util/Map;

    .line 61
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->drawableMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 64
    :cond_0
    const-string v2, ""

    return-object v2
.end method
