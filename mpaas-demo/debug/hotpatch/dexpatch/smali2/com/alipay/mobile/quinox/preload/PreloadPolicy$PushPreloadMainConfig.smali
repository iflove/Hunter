.class public Lcom/alipay/mobile/quinox/preload/PreloadPolicy$PushPreloadMainConfig;
.super Ljava/lang/Object;
.source "PreloadPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/preload/PreloadPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PushPreloadMainConfig"
.end annotation


# instance fields
.field public allowPreload:Z

.field public preloadInterval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFrom(Lorg/json/JSONObject;)Lcom/alipay/mobile/quinox/preload/PreloadPolicy$PushPreloadMainConfig;
    .locals 4
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 174
    new-instance v0, Lcom/alipay/mobile/quinox/preload/PreloadPolicy$PushPreloadMainConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/preload/PreloadPolicy$PushPreloadMainConfig;-><init>()V

    const/4 v1, 0x0

    .line 175
    .local v1, "pushPreloadMainConfig":Lcom/alipay/mobile/quinox/preload/PreloadPolicy$PushPreloadMainConfig;
    move-object v1, v0

    const-string v2, "push_preload_main_interval"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/alipay/mobile/quinox/preload/PreloadPolicy$PushPreloadMainConfig;->preloadInterval:I

    .line 176
    const-string v0, "push_preload_main_allow"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alipay/mobile/quinox/preload/PreloadPolicy$PushPreloadMainConfig;->allowPreload:Z

    .line 177
    return-object v1
.end method
