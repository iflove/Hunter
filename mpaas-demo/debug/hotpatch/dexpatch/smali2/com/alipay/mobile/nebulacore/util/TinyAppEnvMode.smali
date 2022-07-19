.class public final enum Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
.super Ljava/lang/Enum;
.source "TinyAppEnvMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEVELOP:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

.field public static final DEVELOP_NEBULA:Ljava/lang/String; = "DEBUG"

.field public static final DEVELOP_NEBULA_SOURCE:Ljava/lang/String; = "debug"

.field public static final DEVELOP_TINY_APP:Ljava/lang/String; = "develop"

.field public static final enum EXAMINE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

.field public static final EXAMINE_NEBULA:Ljava/lang/String; = "REVIEW"

.field public static final EXAMINE_NEBULA_SOURCE:Ljava/lang/String; = "debug"

.field public static final EXAMINE_TINY_APP:Ljava/lang/String; = "examine"

.field public static final PARAM_ENV_NEBULA:Ljava/lang/String; = "nbsn"

.field public static final PARAM_ENV_NEBULA_SOURCE:Ljava/lang/String; = "nbsource"

.field public static final PARAM_ENV_TINY_APP:Ljava/lang/String; = "envVersion"

.field public static final enum RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

.field public static final RELEASE_TINY_APP:Ljava/lang/String; = "release"

.field public static final enum TRIAL:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

.field public static final TRIAL_NEBULA:Ljava/lang/String; = "TRIAL"

.field public static final TRIAL_NEBULA_SOURCE:Ljava/lang/String; = "debug"

.field public static final TRIAL_TINY_APP:Ljava/lang/String; = "trial"

.field private static final synthetic a:[Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 15
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    const-string v1, "DEVELOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->DEVELOP:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    .line 16
    new-instance v1, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    const-string v3, "TRIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->TRIAL:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    .line 17
    new-instance v3, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    const-string v5, "EXAMINE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->EXAMINE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    .line 18
    new-instance v5, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    const-string v7, "RELEASE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    .line 14
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->a:[Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .locals 1
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 75
    if-nez p0, :cond_0

    .line 76
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->valueOfEvent(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .locals 1
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 47
    if-nez p0, :cond_0

    .line 48
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    return-object v0

    .line 50
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->valueOfPage(Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    return-object v0
.end method

.method public static valueOfEvent(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .locals 2
    .param p0, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 82
    const-string v0, "envVersion"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "envTinyApp":Ljava/lang/String;
    const-string v1, "release"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    sget-object v1, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    return-object v1

    .line 85
    :cond_0
    const-string v1, "develop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    sget-object v1, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->DEVELOP:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    return-object v1

    .line 87
    :cond_1
    const-string v1, "trial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    sget-object v1, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->TRIAL:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    return-object v1

    .line 89
    :cond_2
    const-string v1, "examine"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    sget-object v1, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->EXAMINE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    return-object v1

    .line 92
    :cond_3
    sget-object v1, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    return-object v1
.end method

.method public static valueOfPage(Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 54
    const-string v0, "nbsn"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    .local v1, "envNebula":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    return-object v0

    .line 57
    :cond_0
    const-string v0, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->DEVELOP:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    return-object v0

    .line 59
    :cond_1
    const-string v0, "TRIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->TRIAL:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    return-object v0

    .line 61
    :cond_2
    const-string v0, "REVIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->EXAMINE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    return-object v0

    .line 64
    :cond_3
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .locals 1

    .line 14
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->a:[Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    return-object v0
.end method


# virtual methods
.method public final putToBundle(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 97
    if-nez p1, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    const-string v1, "nbsource"

    const-string v2, "nbsn"

    if-ne p0, v0, :cond_2

    .line 101
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 104
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 105
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void

    .line 107
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->DEVELOP:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    const-string v3, "debug"

    if-ne p0, v0, :cond_3

    .line 108
    const-string v0, "DEBUG"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_3
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->TRIAL:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-ne p0, v0, :cond_4

    .line 111
    const-string v0, "TRIAL"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_4
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->EXAMINE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-ne p0, v0, :cond_5

    .line 114
    const-string v0, "REVIEW"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 117
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 120
    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 121
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 124
    :cond_7
    return-void
.end method

.method public final toStringOfNebula()Ljava/lang/String;
    .locals 2

    .line 127
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    const-string v1, ""

    if-ne p0, v0, :cond_0

    .line 128
    return-object v1

    .line 129
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->DEVELOP:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-ne p0, v0, :cond_1

    .line 130
    const-string v0, "DEBUG"

    return-object v0

    .line 131
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->TRIAL:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-ne p0, v0, :cond_2

    .line 132
    const-string v0, "TRIAL"

    return-object v0

    .line 133
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->EXAMINE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-ne p0, v0, :cond_3

    .line 134
    const-string v0, "REVIEW"

    return-object v0

    .line 136
    :cond_3
    return-object v1
.end method

.method public final toStringOfTinyApp()Ljava/lang/String;
    .locals 2

    .line 141
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    const-string v1, "release"

    if-ne p0, v0, :cond_0

    .line 142
    return-object v1

    .line 143
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->DEVELOP:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-ne p0, v0, :cond_1

    .line 144
    const-string v0, "develop"

    return-object v0

    .line 145
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->TRIAL:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-ne p0, v0, :cond_2

    .line 146
    const-string v0, "trial"

    return-object v0

    .line 147
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->EXAMINE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-ne p0, v0, :cond_3

    .line 148
    const-string v0, "examine"

    return-object v0

    .line 150
    :cond_3
    return-object v1
.end method
